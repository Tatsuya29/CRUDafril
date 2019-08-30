<!-- Page Wrapper -->


<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <h1 class="h3 mb-2 text-gray-800">Data Karyawan</h1>
  <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>
  <?php if ($this->session->flashdata('flash')) : ?>
    <div class="div">
      <div class="row">
        <div class="col-md-6">
          <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Data berhasil</strong> <?= $this->session->flashdata('flash'); ?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
        </div>
      </div>
    </div>
  <?php endif; ?>
  <a class="btn btn-primary mb-3" href="<?= base_url('karyawan/tambah') ?>">
    <i class="fa fa-plus"></i> Tambah data
  </a>
  <a class="btn btn-primary mb-3" href="<?= base_url('karyawan/export_excel') ?>">
    <i class="fas fa-file-excel"></i> Export to ms.excel
  </a>
  <a class="btn btn-primary mb-3" href="<?= base_url('karyawan/export_pdf') ?>">
    <i class="fas fa-file-pdf"></i> Export to pdf
  </a>
  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>Id</th>
              <th>Nama lengkap</th>
              <th>Email</th>
              <th>No hp</th>
              <th>Action</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <th>Id</th>
              <th>Nama lengkap</th>
              <th>Email</th>
              <th>No hp</th>
              <th>Action</th>
            </tr>
          </tfoot>
          <tbody>
            <?php foreach ($karyawan as $kr) : ?>
              <tr>
                <td><?= $kr['id_karyawan']; ?></td>
                <td><?= $kr['nama_lengkap']; ?></td>
                <td><?= $kr['email']; ?></td>
                <td><?= $kr['no_hp']; ?></td>
                <td>
                  <a href="<?= base_url() ?>Karyawan/hapus/<?= $kr['id_karyawan']; ?>" class="btn btn-danger" onclick="return confirm('Yakin ?');">Hapus</a>
                  <a href="<?= base_url() ?>Karyawan/edit/<?= $kr['id_karyawan']; ?>" class="btn btn-secondary ml-3">Edit</a>
                </td>
              </tr>
            <?php endforeach ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <span>Copyright &copy; Nando akbar 2019</span>
    </div>
  </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        <a class="btn btn-primary" href="<?= base_url('auth/logout'); ?>">Logout</a>
      </div>
    </div>
  </div>
</div>

<!-- Button trigger modal -->


<!-- Modal tambah-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLabel">Form input data</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="" method="post">
          <div class="form-group">
            <label for="no_rawat">No Rawat</label>
            <input type="text" class="form-control" id="no_rawat" name="no_rawat">
            <small><?= validation_errors(); ?></small>
          </div>
          <div class="form-group">
            <label for="tgl_deposit">Tanggal Deposit</label>
            <input type="date" class="form-control" id="tgl_deposit" name="tgl_deposit">
          </div>
          <div class="form-group">
            <label for="besar_deposit">Besar Deposit</label>
            <input type="text" class="form-control" id="besar_deposit" name="besar_deposit"></input>
          </div>
          <div class="form-group">
            <label for="nip">Nip</label>
            <input type="text" class="form-control" id="nip" name="nip"></input>
          </div>
          <button type="reset" class="btn btn-danger" data-dismiss="modal">Reset</button>
          <button type="submit" class="btn btn-primary">Tambah data</button>
        </form>
      </div>
    </div>
  </div>
</div>