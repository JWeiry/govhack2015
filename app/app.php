<?php
/**
 * Created by PhpStorm.
 * User: jweir
 * Date: 20/07/2014
 * Time: 5:21 PM
 */

error_reporting(E_ALL & ~E_DEPRECATED & ~E_WARNING & ~E_NOTICE);

require_once 'router.php';
require_once 'database.php';
require_once 'views/index.php';
require_once 'views/about.php';
require_once 'views/search.php';

class app {

    public function __construct() {
        /**
         * Get the database and set the config
         */
        $db = new database();
        $db ->setup(
                $a = array(
                    'hostname' => 'localhost',
                    'username' => 'govhack',
                    'password' => 'govhack',
                    'database' => 'govhack_ip'
                )
            )
            ->connect();
        /**
         * Load the page controllers
         */
        $search = new search($db);
        $index = new index();
        $about = new about();

        /**
         * Get the application router
         */
        $router = new router();

        $router
            ->add('/'           , $index)
            ->add('/index'      , $index)
            ->add('/about'      , $about)
            ->add('/search'     , $search)
            ->add('/*'          , $search);

        $router->route();
    }
}
