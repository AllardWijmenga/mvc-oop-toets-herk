<?php

class PoundForPound extends BaseController
{
    private $PoundForPoundModel;

    public function __construct()
    {
        $this->PoundForPoundModel = $this->model('PoundForPoundModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Top 5 rijkste PoundForPoundsen ter wereld'
        ];

        $this->view('PoundForPound/index', $data);
    }


    public function getPoundForPound($id1=NULL, $id2=NULL) 
    {
        $PoundForPound = $this->PoundForPoundModel->getPoundForPound();

        $tableRows = "";
        foreach ($PoundForPound as $value) {
            $tableRows .= "<tr>
                                <td>$value->Id</td>
                                <td>$value->Naam</td>
                                <td>$value->NettoWaarde></td>
                                <td>$value->Landen</td>
                                <td>$value->Mobiel</td>
                                <td>$value->Leeftijd</td>
                           </tr>";
        }

        $data = [
            'title' => 'Top 5 rijkste PoundForPoundsen ter wereld',
            'tableRows' => $tableRows
        ];

        $this->view('PoundForPound/getPoundForPounden', $data);
    }
}