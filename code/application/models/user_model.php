<?php

class User_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function get_user()
    {
        $query = $this->db->get('user');
        return $query->result_array();
    }
}