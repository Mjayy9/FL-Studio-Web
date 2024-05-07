<?php
include_once('partials/header.php');
if(isset($_SESSION['logged_in'])&&$_SESSION['logged_in']==true){
    header('Location: admin.php');
}
?>
<main>
    <section class="container">
        <h1 style="font-style: oblique; font-family: 'Calibri'; font-weight: bold;">Login</h1>
        <form action="" method="POST">
            <label for="email" style="margin-bottom: 1%; font-weight: bold">E-mail:</label>
            <input type="email" name="email" style="margin-bottom: 1%; width: 15%" placeholder="name@mail.com" class="form-control">
            <label for="email" style="margin-bottom: 1%; font-weight: bold">Password:</label>
            <input type="text" name="password" placeholder="password" style="margin-bottom: 1%; width: 15%" class="form-control">
            <br>
            <input type="submit" value="Login" class="btn btn-success" name="user_login">
        </form>
        <?php

        if(isset($_POST['user_login'])){
            $email = $_POST['email'];
            $password = $_POST['password'];

            $user_object = new User();

            $login_success = $user_object->login($email,$password);
            if($login_success == true){
                header('Location: admin.php');
                die;
            }else{
                echo 'Wrong email or password';
            }

        }

        ?>
    </section>
</main>
<br><br>
<?php
include_once('partials/footer.php')
?>
