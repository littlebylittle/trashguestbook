<?php

class Controller {
	
	public $model;
	public $view;
	
	function __construct()
	{
		$this->view = new View();
	}
	
	// действие (action), вызываемое по умолчанию
	function action_index()
	{
		// todo	sadf
	}

    function filter_value($value) {
        $value = trim($value);
        $value = htmlspecialchars($value);
        $value = mysql_escape_string($value);
        return $value;
    }
}
