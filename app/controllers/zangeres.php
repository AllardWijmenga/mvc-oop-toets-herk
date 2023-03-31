<?php

class zangeres extends BaseController
{
    private $zangeresModel;

    public function __construct()
    {
        $this->zangeresModel = $this->model('zangeresModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Top 5 rijkste zangeressen ter wereld'
        ];

        $this->view('zangeres/index', $data);
    }


    public function getzangeres($id1=NULL, $id2=NULL) 
    {
        $zangeres = $this->zangeresModel->getzangeres();

        $tableRows = "";
        foreach ($zangeres as $value) {
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
            'title' => 'Top 5 rijkste zangeressen ter wereld',
            'tableRows' => $tableRows
        ];

        $this->view('zangeres/getzangeresen', $data);
    }
}