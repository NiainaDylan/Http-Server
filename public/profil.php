<?php
echo "<pre>";
print_r($_POST);  // Debug: print out the POST data received
echo "</pre>";

if (isset($_POST['nom']) && isset($_POST['Age'])) {
    $nom = $_POST['nom'];
    $age = $_POST['Age'];
    echo "<h1>Welcome, $nom!</h1>";
    echo "<p>Your age is: $age</p>";
} else {
    echo "<p>No POST data received.</p>";
}
?>
