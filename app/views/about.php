<?php
/**
 * Created by PhpStorm.
 * User: jweir
 * Date: 20/07/2014
 * Time: 6:04 PM
 */

class about {

    public function __construct(){}
    public function __destruct(){}

    public function load(){
        //print "loading index page";
        require_once 'page/about.htm';
        exit;
    }

}
