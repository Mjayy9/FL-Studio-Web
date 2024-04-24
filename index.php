<?php 
  include_once('partials/header.php');
?>
  <main class="container mt-5">
    <div class="row" style="margin-top: 4vw;">
      <div class="mx-auto">
        <div class="flimage text-center">
          <img src="img/FL%20Studio%20Logo.png" alt="FL Studio Logo" class="img-fluid">
          <div class="nadpisy">
            <h1 class="nadpisd display-4" style="font-size: 40px;">MUSIC</h1>
            <p class="lead" style="font-size: 30px;">Programs, rappers, producers, genres</p>
          </div>
        </div>
        <?php
        echo '<div class="text">';
        echo '<p class="blockquote">Music is the best way how to express feelings or moods, it could be through writing lyrics, making or producing beats and know how to make it</p>';
        echo '</div>';
        ?>
        <hr>
        <br>
        <p class="nadpisMusic">Music</p>
        <?php
          $music_object = new Music();
          $music = $music_object->select();
          for($i = 0; $i < count($music); $i++){
              echo '<div class="'.$music[$i]->class.'">';
              echo '<h1 class="display-4">'.$music[$i]->title.'</h1>';
              echo '<p>'.$music[$i]->paragraph1.'</p><br>';
              echo '<h2 class="display-5">'.$music[$i]->subtitle.'</h2>';
              echo '<p>'.$music[$i]->paragraph2.'</p>';
              if ($i == 1) {echo '<img src="img/LMMS%20Logo.png" alt="LMMS Logo Program" class="lmms"><br>';}
              echo '</div>';
          }
        ?>
        <div class="text3" style="text-align: center;">
          <h1 class="display-4">Making Beats</h1>
          <p>So I started to learn how to make beats in LMMS and at first it was very hard but over time I made some beats in that program as well. But there was one major problem and that was that it was possible to make music in that program, but it was pretty bad to do the master and the overall arrangement. That's why I changed LMMS for FL Studio, which is used by the most famous producers and it's a really brilliant program in which you can do amazing things. Of course my other friend Slava helped me a lot because he has been making beats for quite a long time and he helped me a lot how to start and everything. We even have some beats together and we did a beat for the rapper RuckFiso and it was great, I did the melody and he did the drums.</p>
          <div class="grid-container">
            <div class="grid-child"><img src="img/FL%20Studio%20Logo%20+%20Text.jpeg" alt="FL Studio 21 Logo" class="logo1fl"></div>
            <div class="grid-child">
              <br>
              <a href="audio/slavyy%20x%20majkyy%20140bpm%20ruckfiso%20type%20beat.mp3" target="_blank" style="float: right;" class="beat1">Beat Majky X Slavy</a>
            </div>
          </div><br>
        </div>
        <hr>
        <div>
          <p class="gallery">Gallery of my beats</p><br>
          <div class="row">
          <?php
          $gallery_object = new Gallery();
          $gallery = $gallery_object->select();
          for($i = 0; $i < count($gallery); $i++){
              echo '<div class="col-md-4"><img src="'.$gallery[$i]->img.'" alt="'.$gallery[$i]->alt.'" style="border-radius: 7px; border: 4px solid rgb(255, 255, 255);" class="img-fluid mb-3 myfl"></div>';
          }
          ?>
          </div>
        </div>
      </div>
    </div>
    <div class="cookie-consent">
      <p class="cookie-text">This page uses files
          <span class="popup" onclick="popup()">cookies
              <span class="popuptext" id="myPopup">Website activity log files</span>
          </span>
      </p>
      <div class="mt-2 d-flex align-items-center justify-content-center g-2">
          <button class="allow-button" onclick="skrytDiv()">Accept</button>
          <button class="deny-button" onclick="skrytDiv()">Decline</button>
      </div>
  </div>   
  </main>
  <?php
    include_once('partials/footer.php');
  ?>