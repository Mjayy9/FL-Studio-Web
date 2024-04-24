<?php

class Music extends Database{

    private $db;

    public function __construct()
    {
        $this->db = $this->db_connection();
    }

    public function select(){

        try{

            $sql = "SELECT * FROM music";
            $query = $this->db->query($sql);
            $music = $query->fetchAll();
            return $music;

        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }

}

?>
