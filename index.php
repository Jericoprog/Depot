<?php
ini_set('display_errors',1);
ini_set('display_startup_errors',1);
error_reporting(E_ALL);

$servername = "sql307.infinityfree.com";
$username = "ifo_37245290";
$password = "R7542s@n";
$dbname = "if0_37245290_ecommerce";

$connect = new mysqli($servername,$username,$password,$dbname);
if ($connect->connect_error) {
    die('Echec de la connexion :' . $connect-> connect_error);
}
//Vérifier si le formulaire a été soumis
if ($_SERVER["REQUEST_METHOD"]=="POST") {
    $nom = $connect->real_escape_string($_POST['nom']);
        $prenom = $connect->real_escape_string($_POST['prenom']);
    $email= $connect->real_escape_string($_POST['email']);
     $numero = $connect->real_escape_string($_POST['numero']);
     //Vérifier si l'email est déjà utilisé
     $query = "SELECT*FROM TAB_ecommerce WHERE email='$email'";
     $result = $connect->query($query);
     if ($result->num_rows > 0) {
         echo '<p style="color:red">Une inscription a déjà été fait avec cet email, veuillez en utiliser un autre.';
     } else {
         $insertQuery ="INSERT INTO TAB_ecommerce(nom,prenom,email,numero) VALUES('$nom','$prenom','$email','$numero')";
         if ($connect->query($insertQuery)===TRUE) {
             echo '<p style="color:green">inscription réussie!';
         } else {
             echo "Erreur :" .$insertQuery. "<br>". $connect->error;
         }
         
     }
     
}
$connect->close();

?>
