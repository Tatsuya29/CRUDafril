<div class="container-fluid">
    <div class="content-wrapper">
        <div class="content">


            <div class="modal-body">
                <form action="" method="post">
                    <div class="form-group">
                        <label for="no_rawat">No Rawat</label>
                        <input type="text" class="form-control" id="no_rawat" name="no_rawat">
                        <small id="emailHelp" class="form-text text-danger"><?= form_error('no_rawat'); ?></small>
                    </div>
                    <div class="form-group">
                        <label for="tgl_deposit">Tanggal Deposit</label>
                        <input type="date" class="form-control" id="tgl_deposit" name="tgl_deposit">
                        <small id="emailHelp" class="form-text text-danger"><?= form_error('tgl_deposit'); ?></small>
                    </div>
                    <div class="form-group">
                        <label for="besar_deposit">Besar Deposit</label>
                        <input type="text" class="form-control" id="besar_deposit" name="besar_deposit"></input>
                        <small id="emailHelp" class="form-text text-danger"><?= form_error('besar_deposit'); ?></small>
                    </div>
                    <div class="form-group">
                        <label for="nip">Nip</label>
                        <input type="text" class="form-control" id="nip" name="nip"></input>
                        <small id="emailHelp" class="form-text text-danger"><?= form_error('nip'); ?></small>
                    </div>
                    <button type="reset" class="btn btn-danger" data-dismiss="modal">Reset</button>
                    <button type="submit" class="btn btn-primary">Tambah data</button>
                </form>
            </div>
        </div>
    </div>
</div>