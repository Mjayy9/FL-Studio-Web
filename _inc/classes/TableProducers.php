<?php

class TableProducers extends Database{

    private $db;

    public function __construct()
    {
        $this->db = $this->db_connection();
    }

    public function select(){

        try{

            $sql = "SELECT * FROM tableproducers";
            $query = $this->db->query($sql);
            $tableproducers = $query->fetchAll();
            return $tableproducers;

        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }

}

?>
