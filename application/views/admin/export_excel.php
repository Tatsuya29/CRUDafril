<h1>Data Deposit</h1>
<table border="1" class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <thead>
        <tr>
            <th>Id</th>
            <th>No rawat</th>
            <th>Tanggal Deposit</th>
            <th>Besar Deposit</th>
            <th>Nip</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($deposit as $dps) : ?>
            <tr>
                <td><?= $dps->id_deposit; ?></td>
                <td><?= $dps->no_rawat; ?></td>
                <td><?= $dps->tgl_deposit; ?></td>
                <td><?= $dps->besar_deposit ?></td>
                <td><?= $dps->nip; ?></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>