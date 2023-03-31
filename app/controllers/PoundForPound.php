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
            'title' => 'Men Pound-For-Pound top rank UFC'
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
                                <td>$value->Rankering></td>
                                <td>$value->Lengte</td>
                                <td>$value->Gewicht</td>
                                <td>$value->Leeftijd</td>
                                <td>$value->WinsByKnockout</td>
                           </tr>";
        }

        $data = [
            'title' => 'Men Pound-For-Pound top rank UFC',
            'tableRows' => $tableRows
        ];

        $this->view('PoundForPound/getPoundForPound', $data);
    }
}