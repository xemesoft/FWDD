<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Counter extends CI_Controller {

    public function index() {
        $c = file_get_contents('./num.txt');
        $c = $c ? $c : 0; //如果文件不存在，则设初始值0
        $data = array('v_c' => $c);
        $c++;
        $re_f = fopen('./num.txt', 'w');
        fwrite($re_f, $c);
        fclose($re_f);
        $this -> load -> view('count.php', $data);
    }
}