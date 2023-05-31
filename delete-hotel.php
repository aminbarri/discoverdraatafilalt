<?php
    if(isset($_GET['id'])){
        include('connection.php');
        

        $ins1 = $pdo->prepare("DELETE FROM `reserver-hotel` WHERE `id-hotel`=?");
        $ins1->execute(array($_GET['id']));

        if($ins1){
            $ins = $pdo->prepare("DELETE FROM `hotel` WHERE `id-hotel`=?");
        $ins->execute(array($_GET['id']));
        if($ins){
            header("location: affiche-hotel.php?success=Hotel supprimée avec succès");
        }else{
            header("location: affiche-hotel.php?error=Hotel non supprimée");
        }
    }else{
        header("location: affiche-hotel.php");
    }
        }
        
?>