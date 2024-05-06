<?php
include_once('partials/header.php');
if(isset($_SESSION['logged_in'])&&$_SESSION['logged_in']==true){
    header('Location: admin.php');
}
?>
<main>
    <section class="container">
        <h1>Login</h1>
        <form action="" method="POST">
            <input type="email" name="email" placeholder="name@mail.com">
            <br>
            <input type="text" name="password" placeholder="password">
            <br>
            <input type="submit" value="Send" name="user_login">
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

<?php
include_once('partials/footer.php')
?>
