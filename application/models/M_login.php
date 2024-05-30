<?php
class M_login extends CI_Model{
    public function cekadmin($u,$p){
        $hasil=$this->db->get_where('tbl_pengguna', array('pengguna_username'=>$u, 'pengguna_password'=>$p));
        return $hasil;
    }

}
