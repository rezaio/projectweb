<?php use App\Models\Konfigurasi_model;
use App\Models\Menu_model;

$konfigurasi  = new Konfigurasi_model();
$menu         = new Menu_model();
$site         = $konfigurasi->listing();
$menu_berita  = $menu->berita();
$menu_profil  = $menu->profil();
$menu_layanan = $menu->layanan();
?>
<!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <a href="index.html" class="logo me-auto"><img src="<?= base_url('assets/upload/image/' . $site['logo']) ?>" alt="<?= $site['namaweb'] ?>"></a>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto " href="<?= base_url() ?>">Home</a></li>
          <li class="dropdown"><a href="#"><span>Profil</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <?php foreach ($menu_profil as $menu_profil) { ?>
              <li><a href="<?= base_url('berita/profil/' . $menu_profil['slug_berita']) ?>"><?= $menu_profil['judul_berita'] ?></a></li>
              <?php } ?>
 
            </ul>
          </li>


          <li class="dropdown"><a href="#"><span>Layanan</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <?php foreach ($menu_layanan as $menu_layanan) { ?>
              <li><a href="<?= base_url('berita/layanan/' . $menu_layanan['slug_berita']) ?>"><?= $menu_layanan['judul_berita'] ?></a></li>
              <?php } ?>
            </ul>
          </li>
          
          <li class="dropdown"><a href="<?= base_url('berita') ?>"><span>informasi</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <?php foreach ($menu_berita as $menu_berita) { ?>
              <li><a href="<?= base_url('berita/kategori/' . $menu_berita['slug_kategori']) ?>"><?= $menu_berita['nama_kategori'] ?></a></li>
              <?php } ?>
            </ul>
          </li>

          <li><a class="nav-link scrollto" href="<?= base_url('download') ?>">Arsip</a></li>
          
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->