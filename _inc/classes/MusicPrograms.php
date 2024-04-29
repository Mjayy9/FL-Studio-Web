<?php

class MusicPrograms extends Database{

    private $db;

    public function __construct()
    {
        $this->db = $this->db_connection();
    }

    public function select(){

        try{

            $sql = "SELECT * FROM musicprograms";
            $query = $this->db->query($sql);
            $musicprograms = $query->fetchAll();
            return $musicprograms;

        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }

}

?>
