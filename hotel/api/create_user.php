<?php
	// required headers
	header("Access-Control-Allow-Origin: http://localhost/rest-api-authentication-example/");
	header("Content-Type: application/json; charset=UTF-8");
	header("Access-Control-Allow-Methods: POST");
	header("Access-Control-Max-Age: 3600");
	header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
	 
	// files needed to connect to database
	include_once "../config/Database.php";
	include_once "../models/User.php";
	 
	// get database connection
	$database = new Database();
	$db = $database->connect();
	 
	// instantiate product object
	$user = new User($db);
	 
	// get posted data
	$data = json_decode(file_get_contents("php://input"));
	 
	// set product property values
	$user->firstname = $data->firstname;
	$user->lastname = $data->lastname;
	$user->email = $data->email;
	$user->password = $data->password;
	 
	// create the user
	if(
		!empty($user->firstname) &&
		!empty($user->email) &&
		!empty($user->password) &&
		!$user->emailExists()
	){
		$token = $user->create();
		// set response code
		http_response_code(200);
	 
		// display message: user was created
		echo json_encode(array("token" => $token, "message" => "user was created."));
	}
	 
	// message if unable to create user
	else if($user->emailExists()){
		// set response code
		http_response_code(200);
	 
		// display message: unable to create user
		echo json_encode(array("token" => 0, "message" => "Email have been registered!"));
	}
	else{
	 
		// set response code
		http_response_code(400);
		
		// display message: unable to create user
		echo json_encode(array("message" => "Unable to create user."));
		
	}
?>