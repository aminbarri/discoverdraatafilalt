<?php
    if(isset($_GET['id'])){
        include('connection.php');
        
        $ins = $pdo->prepare("DELETE FROM `reserver-hotel` WHERE `id-resh`=?");
        $ins->execute(array($_GET['id']));
        if($ins){
            header("location: affiche-reservehtl.php?success=Reservation supprimée avec succès");
        }else{
            header("location: affiche-reservehtl.php?error=Reservation non supprimée");
        }
    }else{
        header("location: affiche-reservehtl.php");
    }
?>