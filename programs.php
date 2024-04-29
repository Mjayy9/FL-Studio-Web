<?php 
  include_once('partials/header.php');
?>
  <main class="container mt-5">
    <div>
      <br>
      <br>
      <div class="textprograms">
        <p>This page is about programs where you can make music so let's talk about the most famous music programs</p>
        <hr>
        <br>
      </div>
      <div class="musicprograms">
        <h1 class="display-4">Music Programs</h1>
        <hr>
        <div class="abletonlist">
        <ul>
          <li>LMMS</li>
          <li>FL Studio</li>
          <li>Ableton</li>
          <li>Cubase</li>
          <li>...</li>
        </ul><img src="img/ableton.png" alt="Ableton" class="ableton d-block"></div>
      </div>
      <hr>
        <?php
        $musicprograms_object = new MusicPrograms();
        $musicprograms = $musicprograms_object->select();
        for($i = 0; $i < count($musicprograms); $i++){
            echo '<div class="lmmstext">';
            echo '<h1 style="width: fit-content;">'.$musicprograms[$i]->title.'</h1>';
            echo '<img src="'.$musicprograms[$i]->logo.'" alt="'.$musicprograms[$i]->alt.'" class="'.$musicprograms[$i]->class_logo.'>';
            echo '<a href="'.$musicprograms[$i]->link.'" target="_blank" style="float: right;" class="'.$musicprograms[$i]->class.'</a>';
            echo '</div><br>';
            echo '<p>'.$musicprograms[$i]->paragraph1.'</p><br>';
            echo '<p style="font-weight: bold;">'.$musicprograms[$i]->title2.'</p>';
            echo '<p>'.$musicprograms[$i]->paragraph2.'</p>';
            echo '<p style="font-weight: bold;">'.$musicprograms[$i]->title3.'</p>';
            echo '<p>'.$musicprograms[$i]->paragraph3.'</p>';
            echo '<p style="font-weight: bold;">'.$musicprograms[$i]->title4.'</p>';
            echo '<p>'.$musicprograms[$i]->paragraph4.'</p>';
            echo '<p style="font-weight: bold;">'.$musicprograms[$i]->title5.'</p>';
            echo '<p>'.$musicprograms[$i]->paragraph5.'</p>';
            echo '<p style="font-weight: bold;">'.$musicprograms[$i]->title6.'</p>';
            echo '<p>'.$musicprograms[$i]->paragraph6.'</p>';
            echo '<img src="'.$musicprograms[$i]->img.'" alt="'.$musicprograms[$i]->alt2.'" class="lmmsworkspace d-block w-100"><br>';
            if($i < count($musicprograms)-1)  echo '<hr>';
            echo '</div>';
        }
        ?>
  </main>
  <?php
    include_once('partials/footer.php');
  ?>