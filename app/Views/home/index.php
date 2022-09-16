<?php use App\Models\Menu_model;

$menu    = new Menu_model();
$berita  = $menu->berita();
$profil  = $menu->profil();
$layanan = $menu->layanan();
?>

<!-- ======= Hero Section ======= -->
  <section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">
    
      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">
        <?php $noslide = 1;

foreach ($slider as $slider) {  ?>
        <!-- Slide 1 -->
        <div class="carousel-item <?php if ($noslide === 1) {
    echo ' active';
} ?>" style="background-image: url(<?= base_url('assets/upload/image/' . $slider['gambar']) ?>)">
          <?php if ($slider['status_text'] === 'Ya') {  ?>
           <div class="container" style="max-width: 50%; text-align: center; margin-bottom: 15%;">
                <h2><?= $slider['judul_galeri'] ?></h2>
                <p><?= $slider['isi'] ?></p>
                
            </div>
          <?php } ?>
        </div>
        <?php $noslide++; } ?>

      </div>

    </div>
  </section><!-- End Hero -->


  <main id="main">


    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">

        <div class="text-center">
          <h3>Selamat datang di UPT Pusat Karir polinela</h3>
          <p>Politeknik Negeri Lampung</p>
        </div>

      </div>
    </section><!-- End Cta Section -->

   
    <?php include 'berita.php'?>
    


</main><!-- End #main -->
