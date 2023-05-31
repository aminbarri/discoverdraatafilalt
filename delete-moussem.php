<?php
    if(isset($_GET['id'])){
        include('connection.php');
        
        $ins = $pdo->prepare("DELETE FROM `moussem` WHERE `id-mous`=?");
        $ins->execute(array($_GET['id']));
        if($ins){
            header("location: affich-moussem.php?success=Artisanat supprimée avec succès");
        }else{
            header("location: affich-moussem.php?error=Artisanat non supprimée");
        }
    }else{
        header("location: affich-moussem.php");
    }
?>