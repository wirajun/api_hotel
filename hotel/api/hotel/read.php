<?php 
  // Headers
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: application/json');

  include_once '../../config/Database.php';
  include_once '../../models/hotel.php';

  // Instantiate DB & connect
  $database = new Database();
  $db = $database->connect();

  // Instantiate data
  $hotel = new hotel($db);

  $result = $hotel->read();

  $num = $result->rowCount();

  // Check if any hotels
  if($num > 0) {
    // hotel array
    $hotels_arr = array();
    // $hotels_arr['data'] = array();

    while($row = $result->fetch(PDO::FETCH_ASSOC)) {
      extract($row);

      $hotel_item = array(
        'id' => $id,
        'nama' => $nama,
		'alamat' => $alamat,
        'harga' => $harga,
        'bintang' => $bintang,
        'kodeprop' => $kodeprop,        
      );

      // Push to "data"
      array_push($hotels_arr, $hotel_item);
      // array_push($hotels_arr['data'], $hotel_item);
    }

    // Turn to JSON & output
    echo json_encode($hotels_arr);

  } else {
    // No hotels
    echo json_encode(
      array('message' => 'No hotels Found')
    );
  }
