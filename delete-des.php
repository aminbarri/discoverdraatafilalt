<?php
    if(isset($_GET['id'])){
        include('connection.php');
        
        $ins = $pdo->prepare("DELETE FROM `destination` WHERE `id-des` =?");
        $ins->execute(array($_GET['id']));
        if($ins){
            header("location: affiche-destination.php?success=Distination supprimée avec succès");
        }else{
            header("location: affiche-destination.php?error=Distination non supprimée");
        }
    }else{
        header("location: affiche-destination.php");
    }
?>