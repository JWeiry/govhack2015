<?php
/**
 * Created by PhpStorm.
 * User: jweir
 * Date: 20/07/2014
 * Time: 5:22 PM
 */

class search {

    private $db;

    public function __construct($database) {
        $this->db = $database;
    }

    public function __destruct(){}

    private function search( $search ){
        $db = $this->db;
        error_log('search: '.$search);
        $select = "australian_appl_no, abn, source, name";
        if( is_numeric($search) ) {
            if( strlen($search) == 6 ){
                $q = sprintf("select {$select} from ipgod102 where australian_appl_no = (select australian_appl_no from ipgod107 where mainframe_patent_number = '%s' limit 1)",
                    mysql_real_escape_string( $search )
                );
            } else {
/*
                $q = sprintf("select a.*, b.*, c.* from ipgod104 a, ipgod102 b, ipgod103 c, ipgod107 d where a.australian_appl_no = '%s' and b.australian_appl_no = a.australian_appl_no and c.australian_appl_no = a.australian_appl_no and d.australian_appl_no = a.australian_appl_no",
                    mysql_real_escape_string( $search )
                );
*/
                $q = sprintf("select distinct {$select} from ipgod102 where australian_appl_no like '%s' or abn like '%s' order by id asc",
                    "%".mysql_real_escape_string( $search )."%",
                    "%".mysql_real_escape_string( $search )."%"
                );

            }
        } else {
            $against = explode(" ",$search);
            $matches = array();
            //for( $i = 0; $i < sizeof($against); $i++ ){
                $matches[] = sprintf("match(name,abn) against ('%s' IN NATURAL LANGUAGE MODE)",mysql_real_escape_string($search));
            //}
            $q = "select {$select} from ipgod102 where ".implode(" OR ",$matches);
        }
        error_log("q: ".$q);
        $q .=  " limit 20";
        $arr = $db->setQuery($q);
        $return = $db->get('all');

//        error_log("return: ".json_encode($return));
        if(!empty($q)) return $return;
        return false;
    }

    public function load() {
        $method = $_SERVER['REQUEST_METHOD'];

        switch($method) {
            case "POST":
                //error_log(print_r($_POST,true));
                $post = array_values($_POST);
                $return = $this->search($post[0]);
                break;
            case "GET":
                include_once 'page/search.htm';
//                $this->get($_SERVER['REQUEST_URI']);
                break;
            default:
                exit;
                break;
        }

        if ($return) {
            header("Content-Type: application/json");
            print json_encode($return);
        }

        exit;
    }

    private function alphaID($in, $to_num = false, $pad_up = false, $pass_key = null)
    {
        $out   =   '';
        $index = 'abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $base  = strlen($index);

        if ($pass_key !== null) {
            // Although this function's purpose is to just make the
            // ID short - and not so much secure,
            // with this patch by Simon Franz (http://blog.snaky.org/)
            // you can optionally supply a password to make it harder
            // to calculate the corresponding numeric ID

            for ($n = 0; $n < strlen($index); $n++) {
                $i[] = substr($index, $n, 1);
            }

            $pass_hash = hash('sha256',$pass_key);
            $pass_hash = (strlen($pass_hash) < strlen($index) ? hash('sha512', $pass_key) : $pass_hash);

            for ($n = 0; $n < strlen($index); $n++) {
                $p[] =  substr($pass_hash, $n, 1);
            }

            array_multisort($p, SORT_DESC, $i);
            $index = implode($i);
        }

        if ($to_num) {
            // Digital number  <<--  alphabet letter code
            $len = strlen($in) - 1;

            for ($t = $len; $t >= 0; $t--) {
                $bcp = bcpow($base, $len - $t);
                $out = $out + strpos($index, substr($in, $t, 1)) * $bcp;
            }

            if (is_numeric($pad_up)) {
                $pad_up--;

                if ($pad_up > 0) {
                    $out -= pow($base, $pad_up);
                }
            }
        } else {
            // Digital number  -->>  alphabet letter code
            if (is_numeric($pad_up)) {
                $pad_up--;

                if ($pad_up > 0) {
                    $in += pow($base, $pad_up);
                }
            }

            for ($t = ($in != 0 ? floor(log($in, $base)) : 0); $t >= 0; $t--) {
                $bcp = bcpow($base, $t);
                $a   = floor($in / $bcp) % $base;
                $out = $out . substr($index, $a, 1);
                $in  = $in - ($a * $bcp);
            }
        }

        return $out;
    }
} 
