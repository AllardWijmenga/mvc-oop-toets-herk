<?php

class PoundForPoundModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getPoundForPounden()
    {
        $sql = 'SELECT  Id
                       ,Naam
                       ,Netto/Waarde
                       ,Land
                       ,Mobiel
                       ,Leeftijd
                FROM    PoundForPound';

        $this->db->query($sql);

        return $this->db->resultSet();        
    }

}