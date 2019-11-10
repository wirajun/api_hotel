<?php 
  // Headers
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: application/json');

  include_once '../../config/Database.php';
  include_once '../../models/wilayah.php';

  // Instantiate DB & connect
  $database = new Database();
  $db = $database->connect();

  // Instantiate data
  $wilayah = new wilayah($db);

  $result = $wilayah->read();

  $num = $result->rowCount();

  // Check if any wilayahs
  if($num > 0) {
    // wilayah array
    $wilayahs_arr = array();
    // $wilayahs_arr['data'] = array();

    while($row = $result->fetch(PDO::FETCH_ASSOC)) {
      extract($row);

      $wilayah_item = array(
        'kode' => $kode,
        'nama_prop' => $nama_prop,      
      );

      // Push to "data"
      array_push($wilayahs_arr, $wilayah_item);
      // array_push($wilayahs_arr['data'], $wilayah_item);
    }

    // Turn to JSON & output
    echo json_encode($wilayahs_arr);

  } else {
    // No wilayahs
    echo json_encode(
      array('message' => 'No wilayah Found')
    );
  }
