<?php
defined('BASEPATH') or exit('No direct script access allowed');

#[AllowDynamicProperties]
class Home extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_tulisan');
		$this->load->model('M_galeri');
		$this->load->model('M_pengumuman');
		$this->load->model('M_agenda');
		$this->load->model('M_files');
		$this->load->model('M_pengunjung');
		$this->M_pengunjung->count_visitor();
	}

	public function index()
	{
		$x['berita'] = $this->M_tulisan->get_berita_home();
		$x['pengumuman'] = $this->M_pengumuman->get_pengumuman_home();
		$x['agenda'] = $this->M_agenda->get_agenda_home();
		$x['tot_guru'] = $this->db->get('tbl_guru')->num_rows();
		$x['tot_siswa'] = $this->db->get('tbl_siswa')->num_rows();
		$x['tot_files'] = $this->db->get('tbl_files')->num_rows();
		$x['tot_agenda'] = $this->db->get('tbl_agenda')->num_rows();
		$this->load->view('depan/v_home', $x);
	}
}
