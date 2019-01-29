
<?php
	$data = array
	("name" => "syafiq", "address" => "malang","hobby" => array("main", "main"),"is_maried" => false,
	"skills" => array("web" => array('html', 'js'), "desktop" => array('java', 'xml')));
	echo json_encode($data);
?>	