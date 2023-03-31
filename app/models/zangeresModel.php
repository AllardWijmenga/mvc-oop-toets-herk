<?php

class zangeresModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getzangeresen()
    {
        $sql = 'SELECT  Id
                       ,Naam
                       ,Netto/Waarde
                       ,Land
                       ,Mobiel
                       ,Leeftijd
                FROM    zangeres';

        $this->db->query($sql);

        return $this->db->resultSet();        
    }

}