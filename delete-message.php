<?php
    if(isset($_GET['id'])){
        include('connection.php');
        
        $ins = $pdo->prepare("DELETE FROM `message` WHERE id_mess=?");
        $ins->execute(array($_GET['id']));
        if($ins){
            header("location: affiche-message.php?success=Message supprimée avec succès");
        }else{
            header("location: affiche-message.php?error=Message non supprimée");
        }
    }else{
        header("location: affiche-message.php");
    }
?>