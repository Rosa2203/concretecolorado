<?php
include 'config.php'; // Include database connection

$sql = "SELECT service_name, description, price FROM services";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<div class='service-item'>";
        echo "<h3>" . $row['service_name'] . "</h3>";
        echo "<p>" . $row['description'] . "</p>";
        echo "<p>Price: $" . $row['price'] . "</p>";
        echo "</div>";
    }
} else {
    echo "No services available.";
}
$conn->close();
?>
