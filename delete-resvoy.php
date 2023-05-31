<?php
    if(isset($_GET['id'])){
        include('connection.php');
        
        $ins = $pdo->prepare("DELETE FROM `reserver-voyage` WHERE id_voya=?");
        $ins->execute(array($_GET['id']));
        if($ins){
            header("location: affiche-voyres.php?success=Artisanat supprimée avec succès");
        }else{
            header("location: affiche-voyres.php?error=Artisanat non supprimée");
        }
    }else{
        header("location: affiche-voyres.php");
    }
?>