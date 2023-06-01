<?php


    if(isset($_GET['id'])){
        include('connection.php');
        
        $ins = $pdo->prepare("DELETE FROM `admin` WHERE `id_admin`=?");
        $ins->execute(array($_GET['id']));
        if($ins){
            header("location: afficheadmin.php?success=Aministrateur supprimée avec succès");
        }else{
            header("location: afficheadmin.php?error=Aministrateur non supprimée");
        }
    }else{
        header("location: afficheadmin.php");
    }
?>