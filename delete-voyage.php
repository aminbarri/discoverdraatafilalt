<?php
    if(isset($_GET['id'])){
        include('connection.php');
       
        $inss = $pdo->prepare("DELETE FROM `reserver-voyage` WHERE `id-cer`=?");
        $inss->execute(array($_GET['id'])); 
        if($inss){
            $ins = $pdo->prepare("DELETE FROM `voyage` WHERE `id-cer`=?");
            $ins->execute(array($_GET['id']));
            if($ins){
                header("location: affiche-voyage.php?success=Artisanat supprimée avec succès");
            }else{
                header("location: affiche-voyage.php?error=Artisanat non supprimée");
            }
        }else{
            header("location: affiche-voyage.php");
        }
        }
       
?>