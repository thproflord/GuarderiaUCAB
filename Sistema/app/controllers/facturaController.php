<?php

/*
 * This file is part of the Ocrend Framewok 2 package.
 *
 * (c) Ocrend Software <info@ocrend.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
*/

namespace app\controllers;

use app\models as Model;
use Ocrend\Kernel\Router\IRouter;
use Ocrend\Kernel\Controllers\Controllers;
use Ocrend\Kernel\Controllers\IControllers;
  
/**
 * Controlador factura/
 *
 * @author Ramon García, Fernando Gomes y Alexander De Azevedo <oeneikaphotos@gmail.com>
*/
  
class facturaController extends Controllers implements IControllers {

    public function __construct(IRouter $router) {
        parent::__construct($router);   
        $f = new Model\Factura;
        switch($this->method){

            default:
            echo $this->template->render('factura/factura',array(  
                'facturas' => $f->get(true) 
            ));
            break;
        }

    }

}