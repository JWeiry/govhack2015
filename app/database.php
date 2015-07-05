<?php
/**
 * Created by PhpStorm.
 * User: jweir
 * Date: 20/07/2014
 * Time: 5:21 PM
 */

class database {

    private $host = '';
    private $user = '';
    private $pass = '';
    private $db   = '';
    private $conn;

    private $_query;

    public function __construct(){ return $this; }
    public function __destruct(){}

    public function setup( array $array ) {

        if(empty($array)) { throw new Exception("No database configuration"); }

        $this->host = $array['hostname'];
        $this->user = $array['username'];
        $this->pass = $array['password'];
        $this->db   = $array['database'];

        return $this;
    }

    public function connect() {
        $this->conn = mysql_connect($this->host,$this->user,$this->pass);
        mysql_select_db($this->db, $this->conn);
        return $this;
    }

    public function setQuery( $query ) {
        $this->_query = $query;
        //error_log('setting query: '.$query);
        return $this;
    }

    public function get($type = '') {
        switch(strtolower($type)){
            case 'all':
                $return = array();
                $i = 0;
                $r = $this->query( $this->_query );
                while( $row = mysql_fetch_assoc( $r ) ){
                    $return[] = $row;
                }
                return $return;
            default:
                return mysql_fetch_assoc( $this->query( $this->_query ) );
        }
    }

    public function run() {
        //error_log('executing: '.$this->_query);
        return $this->query( $this->_query );
    }

    public function check( $for, $column, $table ) {
        $q = sprintf(
            "select %s from %s where %s = '%s';",
            mysql_real_escape_string( $column ),
            mysql_real_escape_string( $table ),
            mysql_real_escape_string( $column ),
            mysql_real_escape_string( $for )
        );
        //error_log('checking: '.$q);
        $r = $this->setQuery($q)->get();
        if ($r && count($r) > 0) {
            //error_log('checking: true');
            return true;
        }
        //error_log('checking: false');
        return false;
    }

    private function query( $query ) {
        $r = mysql_query( $query );
        if($r) return $r;
        error_log( mysql_error() );
        return false;
    }

} 
