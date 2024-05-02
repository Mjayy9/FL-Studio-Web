<?php

class TableRappers extends Database{

    private $db;

    public function __construct()
    {
        $this->db = $this->db_connection();
    }

    public function select(){

        try{

            $sql = "SELECT * FROM tablerappers";
            $query = $this->db->query($sql);
            $tablerappers = $query->fetchAll();
            return $tablerappers;

        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }

}

?>
