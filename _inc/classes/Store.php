<?php

class Store extends Database{

    private $db;

    public function __construct()
    {
        $this->db = $this->db_connection();
    }

    public function select(){

        try{

            $sql = "SELECT * FROM store";
            $query = $this->db->query($sql);
            $store = $query->fetchAll();
            return $store;

        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }

}

?>
