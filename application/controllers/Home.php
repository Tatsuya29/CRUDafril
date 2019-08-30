<?php
    class Home extends CI_Controller{
       public function index(){
        $data['judul'] = 'Home';

        $this->load->view('karyawan/header', $data);
        $this->load->view('karyawan/sidebar');
        $this->load->view('home');
        $this->load->view('karyawan/footer');
       }
    }
