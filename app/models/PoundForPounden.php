<?php

class PoundForPoundModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getPoundForPound()
    {
        $sql = 'SELECT  Id
                       ,Naam
                       ,Rankering
                       ,Lengte
                       ,Gewicht
                       ,Leeftijd
                       ,WinsByKnockout
                FROM    PoundForPound';

        $this->db->query($sql);

        return $this->db->resultSet();        
    }

}