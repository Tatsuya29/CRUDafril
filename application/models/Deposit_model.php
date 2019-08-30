<?php
class Deposit_model extends CI_Model
{
    public function getAll()
    {
        return $this->db->get('deposit')->result_array();
    }

    public function tambahData()
    {
        $data = [
            "no_rawat" => $this->input->post('no_rawat', true),
            "tgl_deposit" => $this->input->post('tgl_deposit', true),
            "besar_deposit" => $this->input->post('besar_deposit', true),
            "nip" => $this->input->post('nip', true)
        ];
        $this->db->insert('deposit', $data);
    }

    public function hapusData($id)
    {
        $this->db->where('id_deposit', $id);
        $this->db->delete('deposit');
    }

    public function getDepositById($id){
        return $this->db->get_where('deposit', ['id_deposit' => $id])->row_array();
    }

    public function ubahData()
    {
        $data = [
            "no_rawat" => $this->input->post('no_rawat', true),
            "tgl_deposit" => $this->input->post('tgl_deposit', true),
            "besar_deposit" => $this->input->post('besar_deposit', true),
            "nip" => $this->input->post('nip', true)
        ];
        $this->db->where('id_deposit', $this->input->post('id_deposit'));
        $this->db->update('deposit', $data);
    }

    public function pdf(){
        return $this->db->get('deposit')->result();
    }
    
}
