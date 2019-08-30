<?php
class Deposit extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Deposit_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['judul'] = 'deposit';
        $data['deposit'] = $this->Deposit_model->getAll();

        $this->load->view('admin/header', $data);
        $this->load->view('karyawan/sidebar');
        $this->load->view('admin/index', $data);
        $this->load->view('admin/footer');
    }

    public function tambah()
    {

        $this->form_validation->set_rules('no_rawat', 'No_rawat', 'required');
        $this->form_validation->set_rules('tgl_deposit', 'Tgl_deposit', 'required');
        $this->form_validation->set_rules('besar_deposit', 'besar_deposit', 'required');
        $this->form_validation->set_rules('nip', 'Nip', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('admin/header');
            $this->load->view('karyawan/sidebar');
            $this->load->view('admin/tambah');
            $this->load->view('admin/footer');
        } else {
            $this->Deposit_model->tambahData();
            $this->session->set_flashdata('flash', 'di tambah');
            redirect('Deposit');
        }
    }

    public function hapus($id)
    {
        $this->Deposit_model->hapusData($id);
        $this->session->set_flashdata('flash', 'Dihapus');
        redirect('Deposit');
    }

    public function edit($id)
    {
        $data['judul'] = 'Form edit';
        $data['deposit'] = $this->Deposit_model->getDepositById($id);

        $this->form_validation->set_rules('no_rawat', 'No_rawat', 'required');
        $this->form_validation->set_rules('tgl_deposit', 'Tgl_deposit', 'required');
        $this->form_validation->set_rules('besar_deposit', 'besar_deposit', 'required');
        $this->form_validation->set_rules('nip', 'Nip', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('admin/header', $data);
            $this->load->view('karyawan/sidebar');
            $this->load->view('admin/edit', $data);
            $this->load->view('admin/footer');
        } else {
            $this->Deposit_model->ubahData();
            $this->session->set_flashdata('flash', 'di ubah');
            redirect('Deposit');
        }
    }

    public function export_excel()
    {
        $data['deposit'] = $this->Deposit_model->pdf();
        $data['judul'] = 'Form export excel';

        // $this->load->view('admin/header', $data);
        // $this->load->view('admin/sidebar');
        $this->load->view('admin/export_excel', $data);
        // $this->load->view('admin/footer');

        header("Content-type: application/vnd-ms-excel");
        header("Content-Disposition: attachment; filename=Data_Pembayaran.xls");
    }

    public function export_pdf(){
        ob_start();
        $data['deposit']= $this->Deposit_model->pdf();
        $this->load->view('admin/export_pdf',$data);
        $html = ob_get_contents();
        ob_end_clean();

        require_once('./assets/html2pdf/html2pdf.class.php');
        $pdf = new HTML2PDF('p','A4','en');
        $pdf->WriteHTML($html);
        $pdf->Output('Data deposit.pdf','D');
    }
}
