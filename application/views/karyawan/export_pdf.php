<h1>Data Karyawan</h1>
<table border="1" class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <thead>
        <tr>
            <th>Id</th>
            <th>Nama lengkap</th>
            <th>Email</th>
            <th>No hp</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($karyawan as $kr) : ?>
            <tr>
                <td><?= $kr->id_karyawan ?></td>
                <td><?= $kr->nama_lengkap ?></td>
                <td><?= $kr->email ?></td>
                <td><?= $kr->no_hp ?></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>