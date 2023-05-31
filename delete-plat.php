<?php
    if(isset($_GET['id'])){
        include('connection.php');
        
        $ins = $pdo->prepare("DELETE FROM `plat` WHERE `id-plat`=?");
        $ins->execute(array($_GET['id']));
        if($ins){
            header("location: affiche-plat.php?success=Plat supprimée avec succès");
        }else{
            header("location: affiche-plat.php?error=Plat non supprimée");
        }
    }else{
        header("location: affiche-plat.php");
    }
?>