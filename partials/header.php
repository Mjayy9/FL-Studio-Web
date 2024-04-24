<?php
    require_once '_inc/config.php';
?>

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
    <a href="./index.php" class="text-white" style="text-decoration: none;">Home</a>
    <a href="programs.php" class="text-white" style="text-decoration: none;">Programs</a>
    <a href="cz_sk_rap.php" class="text-white" style="text-decoration: none;">CZ/SK Rap</a>
    <a href="store.php" class="text-white" style="text-decoration: none;">Store</a>
    <a href="contact.php" class="text-white" style="text-decoration: none;">Contact</a>
</header>
