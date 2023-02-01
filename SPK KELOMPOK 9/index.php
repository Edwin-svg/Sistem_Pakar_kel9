

<?php
	include_once 'config.php';
	unset ($_SESSION['keluhan']);
	unset ($_SESSION['jumlah_keluhan']);
	unset ($_SESSION['n_atas1']);
	unset ($_SESSION['n_atas2']);
	unset ($_SESSION['n_atas3']);
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Solutic</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  </head>
  <body>

<link rel="stylesheet" href="style.css">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css"> 
<link href="css/animate.css" rel="stylesheet" type="text/css">
<script href="js/datepicker.js"></script>
 
<!--[if lt IE 9]>
    <script src="js/respond-1.1.0.min.js"></script>
    <script src="js/html5shiv.js"></script>
    <script src="js/html5element.js"></script>
<![endif]-->
<style type="text/css">
	.ff{
		color: #fff;
	}
</style>
</head>
<body>

<!--Header_section-->



<nav class="navbar navbar-fixed-lg navbar-fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">SoluTic</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav navbarr">
        <a class="nav-link active" aria-current="page" href="#home">Home</a>
        <a class="nav-link" href="#tentang">Tentang</a>
        <a class="nav-link" href="#konsul">Konsultasi</a>
        <a class="nav-link" href="#metode">Metode</a>
      </div>
    </div>
  </div>
</nav>
<!--Header_section--> 

<!--Hero_Section-->


<div class="jumbotron jumbotron-fluid">
  <div class="container contron" id="home">
    <p class="lead">SoluTic merupakan sistem pakar untuk mendiagnosa keruskan pada motor matic berbasis webview Android. Solutic bertujuan untuk membantu masyrakat mengetauhi kerusakan pada motor matic mereka.</p>
  </div>
</div>
<!--Hero_Section--> 


<div class="jumbotron2 jumbotron-fluid">
  <div class="container contron2" id="tentang">
	<h2>TENTANG MATIC</h2>
	<h3>Berikut adalah penjelasan tentang motor matic</h3>
    <p class="lead">motor matic adalah jenis motor tanpa operan gigi manual ataupun kopling dan hanya menggunakan operasi gas, rem, dan juga stang supaya motor bisa berjalan. Untuk mesin motor manual merupakan gabungan dari ruang mesin dan kopling serta transmisi.</p>
  </div>
</div>
<!--Aboutus--> 


<!--Tes-->
<div class="jumbotron3 jumbotron-fluid">
  <div class="container contron3" id="konsul">
	<h2>KONSULTASI</h2>
	<h4>SoluTic menyediakan layanan untuk mendiagnosa secara mandiri untuk mengetauhi kerusakan pada motor matic anda.</h4>
	<p>Keakuratan informasi yang diberikanpun tidak jauh berbeda dengan seorang teknisi motor karena <strong>SoluTic</strong> bekerja sama dengan pakar motor matic serta mengambil data dari jurnal - jurnal yang terkait. Untuk melakukan tes, anda akan diberikan beberapa pertanyaan tentang kondisi motor anda saat ini, dan di bagian akhir pertanyaan anda dapat melihat hasil serta rekomendasi dari sistem</p>
	<button class="btn btn-success" type="button"><a href="periksa.php">MULAi</a></button>
  </div>
</div>

<!--Footer-->

<div class="jumbotron4 jumbotron-fluid">
  <div class="container contron4" id="metode">
    <h1>METODE</h1>
	<div class="pengetauhan">
		<h2>Pengetahuan</h2>
		<p>Langkah paling awal untuk membuat sistem pakar adalah dengan menggali informasi tentang suatu masalah yang akan dipecahkan dengan bantuan seorang pakar maupun sumber pengetahuan lainya seperti buku.</p>
	</div>
	<div class="Naive">
		<h2>Naive-Bayes</h2>
		<p>Data yang didaptakan dari pakar maupun buku berupa probabilitas tentang berapa orang pengidap penyakit asma akut, kronis, serta periodik. Data ini kemudian digunakan untuk menentukan aturan sistem dalam menentukan keputusan.</p>
	</div>
	<div class="keakuratan">
		<h1>Keakuratan</h1>
		<p>Pada Sistem pakar ini (SoluTic), tingkat keakuratan masih belum maksimal karena data yang diperoleh masih sedikit sehingga masih belum dapat menggantikan pakar yang sesungguhnya.</p>
	</div>
  </div>
</div>


<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
<script type="text/javascript" src="js/jquery.nav.js"></script> 
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery.isotope.js"></script>
<script type="text/javascript" src="js/wow.js"></script> 
<script type="text/javascript" src="js/custom.js"></script>













    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>