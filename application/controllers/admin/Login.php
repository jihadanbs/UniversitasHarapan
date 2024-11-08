<?php
#[AllowDynamicProperties]
class Login extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_login');
    }
    public function index()
    {
        $this->load->view('admin/v_login');
    }
    public function auth()
    {
        $username = strip_tags(str_replace("'", "", $this->input->post('username')));
        $password = strip_tags(str_replace("'", "", $this->input->post('password')));
        $u = $username;
        $p = $password;
        $cadmin = $this->M_login->cekadmin($u, $p);
        echo json_encode($cadmin);
        if ($cadmin->num_rows() > 0) {
            $this->session->set_userdata('masuk', true);
            $this->session->set_userdata('user', $u);
            $xcadmin = $cadmin->row_array();
            if ($xcadmin['pengguna_level'] == '1') {
                $this->session->set_userdata('akses', '1');
                $idadmin = $xcadmin['pengguna_id'];
                $user_nama = $xcadmin['pengguna_nama'];
                $this->session->set_userdata('idadmin', $idadmin);
                $this->session->set_userdata('nama', $user_nama);
                redirect('admin/dashboard');
            } else {
                $this->session->set_userdata('akses', '2');
                $idadmin = $xcadmin['pengguna_id'];
                $user_nama = $xcadmin['pengguna_nama'];
                $this->session->set_userdata('idadmin', $idadmin);
                $this->session->set_userdata('nama', $user_nama);
                redirect('admin/dashboard');
            }
        } else {
            echo $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert"><span class="fa fa-close"></span></button> Username Atau Password Salah</div>');
            redirect('admin/login');
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect('admin/login');
    }
}
