<?php

class Gallery extends Database{

    private $db;

    public function __construct()
    {
        $this->db = $this->db_connection();
    }

    public function select(){

        try{

            $sql = "SELECT * FROM gallery";
            $query = $this->db->query($sql);
            $gallery = $query->fetchAll();
            return $gallery;

        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }

}

?>
