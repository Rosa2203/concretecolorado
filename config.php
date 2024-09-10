<?php
// config.php: Database connection
$host = "localhost";
$username = "root";
$password = ""; // Change if needed
$dbname = "concrete_service_db"; // Your database name

// Create the connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
