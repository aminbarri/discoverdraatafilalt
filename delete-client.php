<?php
    if(isset($_GET['id'])){
        include('connection.php');
        $ins1 = $pdo->prepare("DELETE FROM `reserver-hotel` WHERE `id-client`=?");
        $ins1->execute(array($_GET['id']));
        $ins2 = $pdo->prepare("DELETE FROM `reserver-voyage` WHERE `id-cleint`=?");
        $ins2->execute(array($_GET['id']));
        $ins = $pdo->prepare("DELETE FROM `client` WHERE `id_client`=?");
        $ins->execute(array($_GET['id']));
        if($ins){
            header("location: afficheclient.php?success=Client supprimée avec succès");
        }else{
            header("location: afficheclient.php?error=Client non supprimée");
        }
    }else{
        header("location: afficheclient.php");
    }
?>