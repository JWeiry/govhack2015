<?php
/**
 * Created by PhpStorm.
 * User: jweir
 * Date: 20/07/2014
 * Time: 5:27 PM
 */

class router {

    public $route;

    private $script;
    private $routes = array();

    public function __construct() {
        $this->route    = explode('/', $_SERVER['REQUEST_URI']);
        $this->script   = explode('/', $_SERVER['SCRIPT_NAME']);
    }

    public function route()
    {
        $route = $this->findRoute(implode('/',$this->route), $this->routes);
        if ($route) $route->load();

        $route = $this->findRoute('/*', $this->routes);
        if ($route) $route->load();

        /**
         * Need to handle 404's here?
         */
        $lost = new index();
        $lost->load();
    }

    public function add($route , $class)
    {
        $this->routes[] = array($route, $class);
        return $this;
    }

    private function findRoute( $page ) {
        foreach($this->routes as $route) {
            //error_log('matching '.$route[0].' -> '.$page);
            if ( $route[0] == $page ) return $route[1];
        }
        return false;
    }
} 