<?php
include 'dbconnect.php'; // Include the database connection file

// SQL to fetch data
$sql = "SELECT name, description, location, image_url FROM wonders";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Canadian Wonders</title>
    <style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f2f5;
        color: #333;
    }
    .header {
        background-color: #d52b1e; /* Red from the Canadian flag */
        color: #fff;
        padding: 20px 0;
        text-align: center;
    }
    .container {
        width: 80%;
        margin: auto;
        overflow: hidden;
    }
    .wonder {
        display: flex;
        align-items: center;
        background-color: #fff;
        margin-bottom: 20px;
        padding: 20px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        border-radius: 8px;
        transition: transform 0.2s;
        border-left: 5px solid #d52b1e; /* Adds a red border to the left */
    }
    .wonder:hover {
        transform: scale(1.02);
    }
    .wonder img {
        max-width: 100%;
        max-height: 200px;
        margin-right: 20px;
        border-radius: 8px;
    }
    .wonder-details h2 {
        margin-top: 0;
        color: #d52b1e; /* Red color for titles */
    }
    .wonder-details p {
        margin: 10px 0;
        line-height: 1.6;
    }
    @media screen and (max-width: 768px) {
        .wonder {
            flex-direction: column;
            text-align: center;
        }
        .wonder img {
            margin: 0 auto 20px;
        }
    }
</style>
</head>
<body>
    <div class="header">
        <h1>Canadian Wonders</h1>
    </div>
    <div class="container">
        <?php
        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<div class='wonder'>";
                echo "<img src='" . $row["image_url"] . "' alt='" . $row["name"] . "' onerror=\"this.onerror=null; this.src='fallback-image-url';\">";
                echo "<div class='wonder-details'>";
                echo "<h2>" . $row["name"] . "</h2>";
                echo "<p><strong>Location:</strong> " . $row["location"] . "</p>";
                echo "<p>" . $row["description"] . "</p>";
                echo "</div>";
                echo "</div>";
            }
        } else {
            echo "<p>No results found.</p>";
        }
        $conn->close();
        ?>
    </div>
</body>
</html>
