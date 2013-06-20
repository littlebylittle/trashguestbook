<?php
    $r=rand(1000000,9999999);
    
    for($i=0;$i < 7;$i++)//разбиваем секретный код на массив чисел
    	$arr[$i]=substr($r,$i,1);
    
    $im=imagecreate(130,40);//создаем картинку
    imagecolorallocate($im,255,255,255);
    $a=0;
    for($i=0;$i < 7;$i++)//наносим код на картинку
    {
      $color=imagecolorallocate($im,rand(0,255),rand(0,255),rand(0,255));
      imagestring($im,rand(2,9),$a+=15,rand(0,20),$arr[$i],$color);
    }
    header("Content-type: image/jpeg");
	setcookie('captchaid', $r, 0, '/');
    imagejpeg($im,'',100);//выводим капчу
?>
