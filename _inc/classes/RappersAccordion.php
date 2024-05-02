<?php

class RappersAccordion extends Database{

    private $db;

    public function __construct()
    {
        $this->db = $this->db_connection();
    }

    public function select(){

        try{

            $sql = "SELECT * FROM rappersaccordion";
            $query = $this->db->query($sql);
            $rappersaccordion = $query->fetchAll();
            return $rappersaccordion;

        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }

}

?>
