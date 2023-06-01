<?php
    if(isset($_GET['id'])){
        include('connection.php');
        
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