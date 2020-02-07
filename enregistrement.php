<?php   echo "Inscription réussie! Bienvenue :)";
        $bdd = new PDO('mysql:host=192.168.65.194; dbname=skoolmeat; charset=utf8', 'root', 'root');
        $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sign = $bdd->prepare("INSERT INTO `user` (`nom`, `prenom`, `age`, `mail`, `password`) VALUES(?, ?, ?, ?, ?)");
        $sign->execute(array($_POST['nom'], $_POST['prenom'],$_POST['age'],$_POST['email']."@la-providence.net",$_POST['password']));
        $bddAmis = new PDO('mysql:host=192.168.65.194; dbname=skoolmeat; charset=utf8', 'root', 'root');
        $bddAmis->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $signFriends = $bddAmis->query("CREATE TABLE `skoolmeat`.`listeamis` () ENGINE = InnoDB;")
        ?>
        <meta http-equiv="refresh" content="0;URL=seconnecter.php">
        0648247402