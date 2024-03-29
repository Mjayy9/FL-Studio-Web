<?php 
  include_once('partials/header.php');
?>
<main class="container mt-5">
    <br><br>
    <div class="container formular">
        <h2 class="text-center formular_nadpis">CONTACT US!</h2>
        <br>
        <form class="formular">
            <div class="form-group justify-content-center">
                <label class="formular_label">Name and surname</label>
                <input type="text" class="form-control formular_input">
            </div>
            <div class="form-group">
                <label class="formular_label">E-mail</label>
                <input type="email" id="emailInput" class="form-control formular_input" placeholder="name@mail.com">
            </div>
            <div class="form-group">
                <label class="formular_label">Request</label>
                <textarea class="form-control formular_textarea" rows="3"></textarea>
            </div>
            <div class="form-check">
                <input type="checkbox" id="consentCheckbox" class="form-check-input formular_input">
                <label class="form-check-label formular_input">Consent to the processing of personal data</label>
            </div>                
            <button id="odoslat" type="button" class="btn btn-primary" onclick="contact()">Send</button>
        </form>
    </div>
</main>
<?php
    include_once('partials/footer.php');
  ?>
</body>
</html>