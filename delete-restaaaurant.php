<?php
    if(isset($_GET['id'])){
        include('connection.php');
        
        $ins = $pdo->prepare("DELETE FROM `restau` WHERE `id-rest`=?");
        $ins->execute(array($_GET['id']));
        if($ins){
            header("location: affiche-restaurat.php?success=Restaurant supprimée avec succès");
        }else{
            header("location: affiche-restaurat.php?error=Restaurant non supprimée");
        }
    }else{
        header("location: affiche-restaurat.php");
    }
?>