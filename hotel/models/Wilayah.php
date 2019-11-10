<?php 
  class Wilayah {
    // DB stuff
    private $conn;
    private $table = 'wilayah';

    // Atribut wilayah
    public $kode;
    public $nama_prop;

    // Constructor with DB
    public function __construct($db) {
      $this->conn = $db;
    }

    // Get Hotel
    public function read() {
      $query = 'SELECT *
                FROM ' . $this->table .'
                ORDER BY kode ASC';

      $stmt = $this->conn->prepare($query);

      // Execute query
      $stmt->execute();

      return $stmt;
    }

  }