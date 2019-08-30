<?php
class Karyawan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Karyawan_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['judul'] = 'Karyawan';
        $data['karyawan'] = $this->Karyawan_model->getAll();

        $this->load->view('karyawan/header', $data);
        $this->load->view('karyawan/sidebar');
        $this->load->view('karyawan/index', $data);
        $this->load->view('karyawan/footer');
    }

    public function tambah()
    {

        $this->form_validation->set_rules('nama_lengkap', 'Nama_lengkap', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('no_hp', 'No_hp', 'required|numeric');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('karyawan/header');
            $this->load->view('karyawan/sidebar');
            $this->load->view('karyawan/tambah');
            $this->load->view('karyawan/footer');
        } else {
            $this->Karyawan_model->tambahData();
            $this->session->set_flashdata('flash', 'di tambah');
            redirect('Karyawan');
        }
    }

    public function hapus($id)
    {
        $this->Karyawan_model->hapusData($id);
        $this->session->set_flashdata('flash', 'Dihapus');
        redirect('Karyawan');
    }

    public function edit($id)
    {
        $data['judul'] = 'Form edit';
        $data['karyawan'] = $this->Karyawan_model->getKaryawanById($id);

        $this->form_validation->set_rules('nama_lengkap', 'Nama_lengkap', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('no_hp', 'No_hp', 'required|numeric');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('karyawan/header', $data);
            $this->load->view('karyawan/sidebar');
            $this->load->view('karyawan/edit', $data);
            $this->load->view('karyawan/footer');
        } else {
            $this->Karyawan_model->ubahData();
            $this->session->set_flashdata('flash', 'di ubah');
            redirect('Karyawan');
        }
    }

    public function export_excel()
    {
        $data['karyawan'] = $this->Karyawan_model->pdf();
        $data['judul'] = 'Form export excel';

        $this->load->view('karyawan/export_excel', $data);

        header("Content-type: application/vnd-ms-excel");
        header("Content-Disposition: attachment; filename=Data_Pembayaran.xls");
    }

    public function export_pdf()
    {
        ob_start();
        $data['karyawan'] = $this->Karyawan_model->pdf();
        $this->load->view('karyawan/export_pdf', $data);
        $html = ob_get_contents();
        ob_end_clean();

        require_once('./assets/html2pdf/html2pdf.class.php');
        $pdf = new HTML2PDF('p', 'A4', 'en');
        $pdf->WriteHTML($html);
        $pdf->Output('Data karyawan.pdf', 'D');
    }
}
