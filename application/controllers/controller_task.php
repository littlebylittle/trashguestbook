<?php

class Controller_task extends Controller
{
	private $db;
    private $data = array();
    private static $sortOrders = array('0'=>'ASC',
                            '1'=>'DESC',);
    private static $sortElems = array('0' => 'date',
                               '1' => 'name',
                               '2' => 'mail');

    public function __construct()
    {
        $this->model = new Model_Task();
        $this->view  = new View();
	    include_once('application/inc/db.class.php');
	    try {
	        $this->db = new dbConnection();
	    }
	    catch (PDOException $e) {
		    $this->view->generate('taskTemplates/db.error.tpl', 'template_view.php');
		    die();
	    }
    }
    
    function action_index()
    {
        //$data = array();
        $this->data['records_on_page'] = 5;
        $this->get_options();

	    $this->set_cookie_options();
	    $this->data['record_counter'] = $this->db->count_all_records();
	    $this->data['number_of_page'] = ceil($this->data['record_counter'] / $this->data['records_on_page'] );

	    $this->data['current_page'] = 0;
	    $uri_args = explode('/' , $_SERVER['REQUEST_URI']);
	    if (array_key_exists('3', $uri_args)) // /task/value/page -> task=1st parameter, value=2nd, page=3
	        $this->data['current_page'] = intval($uri_args['3']);

	    $this->data['records'] = $this->db->get_page_records(
		                        $this->data['current_page'],
		                        $this->data['records_on_page']
		                        /*TODO порядок заполнить*/);
        $this->view->generate(NULL, 'taskTemplates/header.template.tpl', $this->data);
        $this->view->generate(NULL, 'taskTemplates/body.template.tpl', $this->data);
        $this->view->generate(NULL, 'taskTemplates/footer.template.tpl');
    }
    function get_options() {
	    /**function manage $this->data variable (set defaults\other options); */
        //set values from Cookies
	    if (isset($_COOKIE['sortOrder'])) {
		    $indexSortOrder = intval($_COOKIE['sortOrder']);
		    if (isset( self::$sortOrders[$indexSortOrder] )) {
			    $this->data['sortOrder'] = $indexSortOrder;
		    }
	    }
	    if (isset($_COOKIE['sortElem'])) {
		    $indexSortElem = intval($_COOKIE['sortElem']);
		    if (isset( self::$sortElems[$indexSortElem] )) {
			    $this->data['sortElem'] = $indexSortElem;
		    }
	    }
        //set values from POST
        if (isset($_POST['sortOrder'])) {
            $indexSortOrder = intval($_POST['sortOrder']);
            if (isset( self::$sortOrders[$indexSortOrder] )) {
                $this->data['sortOrder'] = $indexSortOrder;
            }
        }
        if (isset($_POST['sortElem'])) {
            $indexSortElem = intval($_POST['sortElem']);
            if (isset( self::$sortElems[$indexSortElem] )) {
                $this->data['sortElem'] = $indexSortElem;
            }
        }
	    //set default values
	    if (!isset($this->data['sortOrder']) )
	        $this->data['sortOrder'] = 0; //ASC sort
	    if (!isset($this->data['sortElem']))
	        $this->data['sortElem'] =  0; //date field sorting;

    }

	function set_cookie_options() {
		if (isset($this->data['sortOrder'])) {
			setcookie('sortOrder', $this->data['sortOrder'], 0, '/');
		}

		if (isset($this->data['sortElem'])) {
			setcookie('sortElem', $this->data['sortElem'], 0, '/');
		}
		//var_dump($this->data);
	}

	function validate_name($name) {
		//TODO: XSS, SQL inj check!
		return $name;
	}

	function validate_mail($mail) {
		//TODO: XSS, SQL check;
		return $mail;
	}

	function check_captcha($captcha) {
		return True;
	}

	function validate_text($text) {
		return $text;
	}

	function check_data() {
		$this->data['name'] = $this->validate_name( $name=$_POST['user'] );
		$this->data['mail'] = $this->validate_mail($_POST['mail']);
		$this->data['captcha'] = $this->check_captcha($_POST['captcha']);
		$this->data['datatext'] = $this->validate_text($_POST['datatext']);
		return True;
	}

	function action_savepost() {
		$this->data['captcha'] = $_POST['captcha'];
		$this->data['name'] = $_POST['user'];
		$this->data['mail'] = $_POST['mail'];
		$this->data['msg'] = $_POST['datatext'];
		$this->data['home'] = $_POST['homepage'];
		$this->data['ua'] = $_SERVER["HTTP_USER_AGENT"];
		$this->data['ip'] = $_SERVER["HTTP_X_REAL_IP"];
		$pack = $this->data;

		if ($this->check_data()) {
			$this->send_data($pack);
			$this->view->generate('taskTemplates/successful.tpl', 'template_view.php', $this->data);
		} else {
			$this->view->generate('taskTemplates/failure-record.tpl', 'template_view.php', $this->data);
		}
	}

	function send_data($package) {
		$this->db->add_record($name=$package['name'],
			$mail=$package['mail'],
			$ip=$package['ip'],
			$home=$package['home'],
			$msg = $package['msg'],
			$ua = 'User-agent: mlflflflf();');
	}
}