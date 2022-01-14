<?php
include("assets/auth_session.php");
require("assets/config.php");
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Edit Alumni</title>
    <link rel="stylesheet" href="style.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <link href="/assets/css/styles.css" rel="stylesheet" />
</head>
<body>
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-bottom">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="dashboardadmin.php">ADMIN</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link" href="editalumniadmin.php">Edit Alumni</a></li>
                        <li class="nav-item"><a class="nav-link" href="tambahalumni.php">Tambah Alumni</a></li>
                        <li class="nav-item"><a class="nav-link" href="logsiswaadmin.php">Log Siswa</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"><?php echo $_SESSION['username']; ?></a></li>
                        <li class="nav-item"><a class="nav-link" href="logout.php">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Content-->
        <section>
            <table class="table table-hover">
                    <tr>
                        <th>no</th>
                        <th>Nama</th>
                        <th>jurusan</th>
                        <th>tahun lulus</th>
                        <th>alamat</th>
                        <th>kelas</th>
                        <th>action</th>
                        
                    </tr>
                
                <?php
                    $no = 1;
                    $query = "select * from alumni";
                    $data = mysqli_query($con,$query);
                    while ($r = mysqli_fetch_array($data)){
                        $nama = $r['nama'];
                        $jurusan = $r['jurusan'];
                        $tahunlulus = $r['tahunlulus'];
                        $alamat = $r['alamat'];
                        $kelas = $r['kelas'];
                    
                ?>

                    <tr>
                        <td><?php echo $no++; ?></td>
                        <td><?php echo $nama; ?></td>
                        <td><?php echo $jurusan; ?></td>
                        <td><?php echo $tahunlulus; ?></td>
                        <td><?php echo $alamat; ?></td>
                        <td><?php echo $kelas; ?></td>
                        <td>
                            <button><a href="edit.php">Edit</a></button>
                            <button><a href="delete.php">Hapus</a></button>
                        </td>
                        
                    </tr>
                    <?php } ?>
            </table>
        </section>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="assets/js/scripts.js"></script>
</body>
</html>
