<?php

class Rappers extends Database{

    private $db;

    public function __construct()
    {
        $this->db = $this->db_connection();
    }

    public function select(){

        try{

            $sql = "SELECT * FROM rappers";
            $query = $this->db->query($sql);
            $rappers = $query->fetchAll();
            return $rappers;

        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }

}

?>
