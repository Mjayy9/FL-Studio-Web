<?php
include_once('partials/header.php');


$user_object = new User();

if(isset($_POST['user_register'])){
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    if($password === $confirm_password) {
        if($user_object->register($email, $password)) {
            header('location: login.php');
        } else {
            echo "<p>Registration failed</p>";
        }
    } else {
        echo "<p>Passwords do not match</p>";
    }
}
?>

    <main>
        <section class="container">
            <div class="row">
                <div class="col-100">
                    <h1 style="font-style: oblique; font-family: 'Calibri'; font-weight: bold;">Registration</h1>
                    <form action="" method="POST">
                        <label for="email" style="margin-bottom: 1%; font-weight: bold">E-mail:</label>
                        <br>
                        <input type="email" placeholder="name@mail.com" id="email" name="email" required>
                        <br>
                        <label for="password" style="margin-bottom: 1%; font-weight: bold">Password:</label>
                        <br>
                        <input type="password" placeholder="password" id="password" name="password" required>
                        <br>
                        <label for="confirm_password" style="margin-bottom: 1%; font-weight: bold">Re-enter password:</label>
                        <br>
                        <input type="password" placeholder="re-enter password" id="confirm_password" name="confirm_password" required>
                        <br>
                        <br>
                        <button type="submit" name="user_register" class="btn btn-success" style="margin-bottom: 1%;">Register</button>
                    </form>
                </div>
            </div>
        </section>
    </main>
<?php
include_once('partials/footer.php');
?>