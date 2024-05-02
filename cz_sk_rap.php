<?php 
  include_once('partials/header.php');
?>
  <main class="container mt-5">
    <div>
      <br>
      <br>
      <div class="textczsk">
        <p>Slovak and Czech Rappers, Producers</p>
        <hr>
      </div>
      <div class="slovakrappers">
        <h1>List of some Slovak rappers</h1>
        <hr>
        <div class="cnsfltlist">
        <ul>
          <li>Separ (label DMS)</li>
          <li>Luca Brassi10x (label BSB - Bipolar Snowblood)</li>
          <li>Guapanova (label CNSFLT - Conspiracy Flat Studio)</li>
          <li>Shimmi (label CNSFLT - Conspiracy Flat Studio)</li>
          <li>AstralKid22 (label CNSFLT - Conspiracy Flat Studio)</li>
          <li>Danisen</li>
          <li>RuckFiso</li>
        </ul><img src="img/CNSFLT%20Logo.png" alt="CNSFLT Logo" class="cnsfltlogo d-block">
            <img src="img/We%20don't%20care,%20we%20create.png" alt="We Don't Care, We Create Logo" class="wdcwclogo d-block">
        </div>
      </div>
      <hr>
      <div class="slovakproducers">
        <h1>List of some Slovak producers</h1>
        <hr>
        <div class="prodlist">
          <ul>
            <li>Konex</li>
            <li>Jerry Lee</li>
            <li>SencakoE</li>
            <li>Mjay Beatz</li>
            <li>Smart</li>
            <li>SpecialBeatz</li>
            <li>Deadway</li>
            <li>WhoisPG</li>
            <li>Tristan</li>
            <li>ECM Squad</li>
            <li>Bari</li>
          </ul>
          <div class="container">
            <div class="column"><img src="img/ECM%20Squad%20Logo.jpg" alt="ECM Squad Logo" class="ecmslogo d-block"></div>
            <div class="column"><img src="img/Konex%20Logo.jpeg" alt="Konex Logo" class="konexlogo d-block"></div>
          </div>
        </div>
      </div>
      <hr>
      <h3 class="warning">WARNING! IN THE FOLLOWING TRACKS, SAMPLES MAY CONTAIN VULGARISMS OR DIFFERENT TYPE OF THINGS WHICH ARE USED IN TRACKS, PLEASE LISTEN THEM AT YOUR OWN RESPONSIBILITY OR IF YOU ARE OKAY WITH IT!</h3>
      <hr>
        <?php
        $rappers_object = new Rappers();
        $rappers = $rappers_object->select();
        $rappersaccordion_object = new RappersAccordion();
        $rappersaccordion = $rappersaccordion_object->select();
        $slideshow_object = new Slideshow();
        $slideshow = $slideshow_object->select();
        $p = 0;

        for ($j = 0; $j < count($rappers); $j++) {
            echo '<div class="lmmstext">';
            echo '<h2 style="width: fit-content;">'.$rappers[$j]->name.'</h2>';
            echo '<img src="'.$rappers[$j]->img.'" alt="'.$rappers[$j]->alt.'" class="'.$rappers[$j]->class.'">';
            echo '<a href="'.$rappers[$j]->link.'" target="_blank" style="float: right;" class="spotifylucabrassi10x">'.$rappers[$j]->linkname.'</a>';
            echo '</div><br>';
            echo '<p>'.$rappers[$j]->paragraph.'</p>';
            echo '<h3 class="soloalbums">'.$rappers[$j]->rappertracksalbums.'</h3>';
            echo '<hr>';
            echo '<div class="accordion accordion-flush">';

            for ($i = $p; $i < $p+3; $i++) {
                echo '<div class="accordion-item">';
                echo '<h2 class="accordion-header">';
                echo '<button class="accordion-button collapsed albums" 
                        type="button" data-bs-toggle="collapse" 
                        data-bs-target="#' . $rappersaccordion[$i]->content_id . '" aria-expanded="false" 
                        aria-controls="' . $rappersaccordion[$i]->content_id . '">' . $rappersaccordion[$i]->button_title . '</button></h2>';
                echo '<div id="' . $rappersaccordion[$i]->content_id . '" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">';
                echo '<div class="accordion-body">';
                echo $rappersaccordion[$i]->content;
                echo '<a href="' . $rappersaccordion[$i]->link . '" target="_blank" style="float: left;" class="tracks">' . $rappersaccordion[$i]->title . '</a>';
                echo '<br><br><br>';
                echo '</div></div></div>';
            }
            $p+=3;
            if ($j == 1) {
                echo '</div><br><div id="carouselExampleIndicators" class="carousel slide">';
                echo '<div class="carousel-indicators">';
                for($s = 0; $s < count($slideshow); $s++) {
                    echo '<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="' . $slideshow[$s]->poradie . '" ';
                    if ($slideshow[$s]->poradie == "0") {
                        echo 'class="active" aria-current="true" ';
                    }
                    echo 'aria-label="Slide ' . $slideshow[$s]->number . '"></button>';
                }
                echo '</div>';
                echo '<div class="carousel-inner">';
                for($s = 0; $s < count($slideshow); $s++) {
                    echo '<div class="carousel-item';
                    if ($slideshow[$s]->poradie == "0") {
                        echo ' active"';
                    }
                    echo '">';
                    echo '<img src="' . $slideshow[$s]->img . '" class="slideshow d-block" alt="' . $slideshow[$s]->alt . '">';
                    echo '</div>';
                }
                echo '</div>';

                echo '<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev" style="width: 50%;">';
                echo '<span class="carousel-control-prev-icon" aria-hidden="true"></span>';
                echo '<span class="visually-hidden">Previous</span>';
                echo '</button>';
                echo '<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next" style="width: 50%;">';
                echo '<span class="carousel-control-next-icon" aria-hidden="true"></span>';
                echo '<span class="visually-hidden">Next</span>';
                echo '</button>';
                echo '</div>';
                echo '<br><hr>';
            } else {
                echo '</div><img src="'.$rappers[$j]->img2.'" alt="'.$rappers[$j]->alt2.'" class="'.$rappers[$j]->class2.'"><hr>';
            }
        }
        ?>
    <div class="slovakrappers">
      <h1>List of some Czech rappers</h1>
      <hr>
      <div class="cnsfltlist">
      <ul>
        <li>Yzomandias (label Milion+)</li>
        <li>Nik Tendo (label Milion+)</li>
        <li>Hard Rico</li>
        <li>Sensey</li>
        <li>Vercetti CG (Central Gang)</li>
        <li>Robin Zoot</li>
        <li>Dollar Prync</li>
        <li>Viktor Sheen</li>
        <li>Calin</li>
      </ul><img src="img/yzomandias-7.png" alt="Yzomandias" class="cnsfltlogo d-block"> <img src="img/2dfcfe5a-32dd-4389-bbde-1249e512e231_car_4x3.png" alt="Milion+ Logo" class="milionpluslogo d-block"></div>
    </div>
    <hr>
    <div class="slovakproducers">
    <h1>List of some Czech producers</h1>
    <hr>
    <div class="prodlist">
      <ul>
        <li>Decky Beats</li>
        <li>DEMO24</li>
        <li>Nemo.wave</li>
      </ul>
      <div class="container">
        <div class="column"><img src="img/decky%20beats.jpg" alt="Decky Beats" class="deckybeats d-block"></div>
      </div>
    </div>
    <hr>
    <br>
    <h2 class="arap">American Rappers and Producers</h2>
    <br>
    <table class="table table-dark table-striped" style="text-align: center;">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Rappers</th>
          <th scope="col">Albums</th>
          <th scope="col">Num.</th>
        </tr>
      </thead>
      <tbody>
      <?php
      $tablerappers_object = new TableRappers();
      $tablerappers = $tablerappers_object->select();
      for($i = 0; $i < count($tablerappers); $i++) {
          echo '<th scope = "row" >'.$tablerappers[$i]->id.'</th>';
          echo '<td >'.$tablerappers[$i]->name.'</td>';
          echo '<td >'.$tablerappers[$i]->albums.'</td >';
          echo '<td >'.$tablerappers[$i]->albumsnumber.'</td >';
        echo '</tr >';
        }
      ?>
      </tbody>
      <thead>
        <tr>
          <th scope="col"></th>
          <th scope="col"></th>
          <th scope="col"></th>
          <th scope="col"></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Producers</th>
          <th scope="col">Producers</th>
          <th scope="col">Producers</th>
        </tr>
      </thead>
      <tbody>
      <?php
      $tableproducers_object = new TableProducers();
      $tableproducers = $tableproducers_object->select();
      for($i = 0; $i < count($tableproducers); $i++) {
          echo '<th scope = "row" >'.$tableproducers[$i]->id.'</th>';
          echo '<td >'.$tableproducers[$i]->nothing.'</td>';
          echo '<td >'.$tableproducers[$i]->name.'</td >';
          echo '<td >'.$tableproducers[$i]->nothing2.'</td >';
          echo '</tr >';
      }
      ?>
      </tbody>
    </table>
  </main>
  <?php
    include_once('partials/footer.php');
  ?>