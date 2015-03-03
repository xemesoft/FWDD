<?php
/**
 * Created by PhpStorm.
 * User: xeme
 * Date: 14-10-29
 * Time: 下午10:00
 */

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Upload1 extends CI_Controller {
    function index()
    {
        $this -> load -> view('upload1.php'); //调用视图
    }

    function up() //这个就是视图里action调用的上传接口
    {
        if (!empty($_POST['sub'])) { //当提交的时候
            var_dump($_FILES['upfile']); //可以打印看看上传文件的信息
            $f = $_FILES['upfile']; //把文件信息赋给一个变量，方便调用
            if ($f['size'] > 102400) { //限制文件大小
                echo "too large";
            } else {
                if ($f['type'] == 'image/jpeg') { //限制文件类型为png
                    $t = time(); // 时间戳
                    $s = '.jpg';
                    move_uploaded_file($f['tmp_name'], move_uploaded_file($f['tmp_name'], './upload/'.$t.$s));
                    echo "上传成功";
                    //$f['tmp_name']是上传好的文件从缓存文件，'/uploads/$t$s'是我们要移动到的文件夹，在根目录下自己创建的uploads文件夹。'./uploads/'.$t.$s 是变量的值进行字符串拼接，把文件以时间戳命名
                }
            }
        }
    }
}
