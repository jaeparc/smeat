<?php session_start(); ?>
<html>

<head>
    <title>Socialiser - SkoolMeat</title>
    <link rel="stylesheet" href="swipe.css" />
    <script type="text/javascript" src="fonction.js"></script>
    <nav>
    <a href="swipe.php">Accueil</a>
        <a href="profilperso.php">Mon profil</a>
        <a href="disconnect.php">Deconnexion</a>
	    <div class="animation start-home"></div>
    </nav>
</head>

<body>
    <img class="logo" src="logo.PNG">
<div id="paragraphe" onclick="centrage_h1()">
    <h1 onclick="modif_paragraphe()">Socialiser</h1>
</div>

    <?php
    $bdd = new PDO('mysql:host=192.168.65.194; dbname=skoolmeat; charset=utf8', 'root', 'root');
    $mailconnect = $_SESSION['mail'];
    $requser = $bdd->prepare("SELECT * FROM user WHERE mail = ?");
    $requser->execute(array($mailconnect));
    $userexist = $requser->rowCount();
    $userinfo = $requser->fetch();
    ?>
    <h2> Meat other pupils : </h2><br>
    <?php

    if(!isset($_SESSION['idstranger']) && $userinfo['id_user'] != 1){
        $_SESSION['idstranger'] = 1;
    }
    else if(!isset($_SESSION['idstranger']) && $userinfo['id_user'] == 1){
        $_SESSION['idstranger'] = 2;
    }
    else if(isset($_SESSION['idstranger']) && $_SESSION['idstranger'] == $userinfo['id_user']){
        $_SESSION['idstranger'] += 1;
    }
    $idpresent = $_SESSION['idstranger'];
    $reqstranger = $bdd->prepare("SELECT * FROM user WHERE id_user = ?");
    $reqstranger->execute(array($idpresent));
    $strangerexist = $reqstranger->rowCount();
    $strangerinfo = $reqstranger->fetch();
    $_SESSION['idstranger'] = $strangerinfo['id_user'];
    ?>
    <div class="card">
        <div id="photoprofile">
            <img src="icon.png">
        </div>
        <h1> Nom : <?php echo $strangerinfo['nom']." ".$strangerinfo['prenom'];?></h1>
            <p class="title">Age : <?php echo $strangerinfo['age'];?></p>
            <p class="title">Email : <?php echo $strangerinfo['mail'];?></p>
            <p class="title2">Ma bio : <?php echo $strangerinfo['bio'];?></p>
    </div>
    <form method="post" action="like.php">
        <input class="button" type="submit" value="Like">
    </form>
    <form method="post" action="nextprofile.php">
        <input class="button" type="submit" value="Suivant">
    </form>
    <form method="post" action="disconnect.php">
        <input class="button" type="submit" value="Deconnexion">
    </form>
</body>

</html>