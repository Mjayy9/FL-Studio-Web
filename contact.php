<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Music </title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="icon" href="img/i.png" type="image/x-icon">
</head>
<body>
    <nav class="fixed-top navbar navbar-expand-lg d-lg-none top">
        <div class="container-fluid justify-content-center ">
            <button class="navbar-toggler bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="./index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="programs.php">Programs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cz_sk_rap.php">CZ/SK Rap</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="store.php">Store</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
<header class="top fixed-top d-none d-lg-flex justify-content-center">
    <img src="img/i.png" alt="Logo" style="height: 70px; width: auto;">
    <a href="./index.html" class="text-white" style="text-decoration: none;">Home</a>
    <a href="programs.html" class="text-white" style="text-decoration: none;">Programs</a>
    <a href="cz_sk_rap.html" class="text-white" style="text-decoration: none;">CZ/SK Rap</a>
    <a href="store.html" class="text-white" style="text-decoration: none;">Store</a>
    <a href="contact.html" class="text-white" style="text-decoration: none;">Contact</a>
</header>
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
    <footer class="mt-5 autor">
        <hr>
        <p style="margin: 0 auto;"> © 2023 </p>
        <p style="margin: 0 auto;"> Producer name Majkyy </p>
        <p> Vytvoril Marián Šebora </p>
    </footer>
    <script src="js/app.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>