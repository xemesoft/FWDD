<?php
/**
 * Created by PhpStorm.
 * User: xeme
 * Date: 14-10-29
 * Time: 下午10:27
 */
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Upload2 extends CI_Controller {
    function index()
    {
        $this -> load -> view('upload2.php');
    }

    function up()
    {
        // 把需要的配置放入config数组
        $config['upload_path'] = './upload';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = '102400';
        $d = getdate();
        $t = time();
        $config['file_name'] = $d['year'].$d['mon'].$d['mday'].$t;
        $this -> load -> library('upload', $config); //调用CI的upload类
        //$this -> upload -> do_upload('upfile'); //使用do_upload('上传框的name')方法进行上传

        // 以下代码为拓展的，非必要
        if ($this -> upload -> do_upload('upfile')) { //上传成功
            $data = array('upload_data' => $this -> upload -> data()); //将文件信息存入数组
            var_dump($data); //打印文件信息
            echo "上传成功";
        } else { //上传失败
            $error = array('error' => $this -> upload -> display_errors());//将错误信息存入数组
            var_dump($error); //打印错误信息
            echo "上传失败";
        }
    }
}