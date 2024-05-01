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
        <?php
        $store_object = new Store();
        $store = $store_object->select();

        for ($i = 0; $i < count($store); $i++) {
            echo '<div class="accordion-item">';
            echo '<h2 class="accordion-header">';
            echo '<button class="accordion-button collapsed albums" 
                    type="button" data-bs-toggle="collapse" 
                    data-bs-target="#'.$store[$i]->content_id.'" aria-expanded="false" 
                    aria-controls="'.$store[$i]->content_id.'">'.$store[$i]->button_title.'</button></h2>';
            echo '<div id="'.$store[$i]->content_id.'" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">';
            echo '<div class="accordion-body">';
            echo $store[$i]->content;
            echo '<a href="'.$store[$i]->link.'" target="_blank" style="float: left;" class="tracks">'.$store[$i]->title.'</a>';
            echo '<br><br><br>';
            echo '</div></div></div>';
        }
        ?>
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
