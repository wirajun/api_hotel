<?php 
  class Hotel {
    // DB stuff
    private $conn;
    private $table = 'hotel';

    // Atribut hotel
    public $nama;
    public $alamat;
    public $harga;
    public $bintang;
    public $kodeprop;
	public $id;

    // Constructor with DB
    public function __construct($db) {
      $this->conn = $db;
    }

    // Get Hotel
    public function read() {
      $query = 'SELECT *
                FROM ' . $this->table .'
                ORDER BY kodeprop';

      $stmt = $this->conn->prepare($query);

      // Execute query
      $stmt->execute();

      return $stmt;
    }

	// Get hotel by prop
    public function read_prop() {
          // Create query
          $query = 'SELECT *
                    FROM ' . $this->table . ' 
                    WHERE kodeprop = ?
					ORDER BY harga DESC';

          // Prepare statement
          $stmt = $this->conn->prepare($query);

          // Bind ID
          $stmt->bindParam(1, $this->kodeprop);

          // Execute query
          $stmt->execute();
		  
		  return $stmt;
    }
	
	// Get hotel by bintang
    public function read_star() {
          // Create query
          $query = 'SELECT *
                    FROM ' . $this->table . ' 
                    WHERE bintang = ?
					ORDER BY harga DESC';

          // Prepare statement
          $stmt = $this->conn->prepare($query);

          // Bind ID
          $stmt->bindParam(1, $this->bintang);

          // Execute query
          $stmt->execute();
		  
		  return $stmt;
    }
	
  }