<?php
class Karyawan_model extends CI_Model
{

    public function getAll()
    {
        return $this->db->get('karyawan')->result_array();
    }

    public function tambahData()
    {
        $data = [
            "nama_lengkap" => $this->input->post('nama_lengkap', true),
            "email" => $this->input->post('email', true),
            "no_hp" => $this->input->post('no_hp', true)
        ];
        $this->db->insert('karyawan', $data);
    }

    public function hapusData($id)
    {
        $this->db->where('id_karyawan', $id);
        $this->db->delete('karyawan');
    }

    public function getKaryawanById($id)
    {
        return $this->db->get_where('karyawan', ['id_karyawan' => $id])->row_array();
    }

    public function ubahData()
    {
        $data = [
            "nama_lengkap" => $this->input->post('nama_lengkap', true),
            "email" => $this->input->post('email', true),
            "no_hp" => $this->input->post('no_hp', true)
        ];
        $this->db->where('id_karyawan', $this->input->post('id_karyawan'));
        $this->db->update('karyawan', $data);
    }

    public function pdf()
    {
        return $this->db->get('karyawan')->result();
    }
}
