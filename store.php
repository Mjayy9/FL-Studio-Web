<?php 
  include_once('partials/header.php');
?>
<main class="container mt-5">
    <br>
    <br>
    <div class="textczsk">
        <p>Beats Store</p>
        <hr>
    </div>
    <div class="textstore">
        <p>On this page you can purchase beats that I produced</p>
        <hr>
        <br>
    </div>
    <h3 class="soloalbums">Majkyy Beatpack</h3>
    <div class="textstore" style="text-align: left;">
        <p>- This beatpack contains 5 beats. Every beat was produced by me</p>
        <hr>
    </div>
    <div class="accordion accordion-flush" id="accordionFlushExample">
        <div class="accordion-item">
          <h2 class="accordion-header"><button class="accordion-button collapsed albums" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">You Don't Own Me 141 BPM D#min</button></h2>
          <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">
              <p class="info">Produced by:</p>
              <p class="reply">Majkyy</p>
              <p class="info">Prize:</p>
              <p class="reply">120 €</p>
              <a href="audio/You Don't Own Me 141 BPM.mp3" target="_blank" style="float: left;" class="tracks">Majkyy - You Don't Own Me</a><br>
              <br>
              <br>
            </div>
          </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button collapsed albums" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">No debate 164 BPM Dmin</button></h2>
            <div id="flush-collapseSix" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
              <div class="accordion-body">
                <p class="info">Produced by:</p>
                <p class="reply">Majkyy</p>
                <p class="info">Prize:</p>
                <p class="reply">80 €</p>
                <a href="audio/No Debate 164 BPM Dmin.mp3" target="_blank" style="float: left;" class="tracks">Majkyy - No Debate</a><br>
                <br>
                <br>
              </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button collapsed albums" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTen" aria-expanded="false" aria-controls="flush-collapseTen">Unique    169 BPM Cmin</button></h2>
            <div id="flush-collapseTen" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
              <div class="accordion-body">
                <p class="info">Produced by:</p>
                <p class="reply">Majkyy</p>
                <p class="info">Prize:</p>
                <p class="reply">100 €</p>
                <a href="audio/Unique 169 BPM Cmin.mp3" target="_blank" style="float: left;" class="tracks">Majkyy - Unique</a><br>
                <br>
                <br>
              </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button collapsed albums" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEleven" aria-expanded="false" aria-controls="flush-collapseEleven">Deluzia 144 BPM Bmin x 154 BPM G#Min</button></h2>
            <div id="flush-collapseEleven" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
              <div class="accordion-body">
                <p class="info">Produced by:</p>
                <p class="reply">Majkyy</p>
                <p class="info">Prize:</p>
                <p class="reply">100 €</p>
                <a href="audio/Deluzia.mp3" target="_blank" style="float: left;" class="tracks">Majkyy - Deluzia</a><br>
                <br>
                <br>
              </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button collapsed albums" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThirteen" aria-expanded="false" aria-controls="flush-collapseThirteen">exitt 152 BPM Fmaj</button></h2>
            <div id="flush-collapseThirteen" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
              <div class="accordion-body">
                <p class="info">Produced by:</p>
                <p class="reply">Majkyy</p>
                <p class="info">Prize:</p>
                <p class="reply">110 €</p>
                <a href="audio/exitt 152 BPM Fmaj second.mp3" target="_blank" style="float: left;" class="tracks">Majkyy - exitt</a><br>
                <br>
                <br>
              </div>
            </div>
        </div>
        <br>
        <div class="justify-content-center" style="display: flex">
            <div class="form-outline" style="width: 5.7rem; display: inline-block;" >
                <label class="form-label count" style="white-space: nowrap; margin: 0 auto;">Beats:</label>
                <input value="1" min="1" max="17" type="number" class="form-control">
            </div>
            <br>
            <button onclick="myalert()" type="button" class="btn btn-danger storebuy">Purchase</button>
        </div>
        <br>
    </div>
</main>
<?php
    include_once('partials/footer.php');
  ?>
