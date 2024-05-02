<?php

class Slideshow extends Database{

    private $db;

    public function __construct()
    {
        $this->db = $this->db_connection();
    }

    public function select(){

        try{

            $sql = "SELECT * FROM slideshow";
            $query = $this->db->query($sql);
            $slideshow = $query->fetchAll();
            return $slideshow;

        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }

}

?>
