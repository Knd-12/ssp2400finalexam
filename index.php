
<?php
$dbcreds = parse_ini_file("env.ini" , true);

// Create connection
$conn = new mysqli($dbcreds['db']['servername'], $dbcreds['db']['username'], $dbcreds['db']['password'], $dbcreds['db']['dbname']);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT id, name FROM courses";
$result = $conn->query($sql);

echo '<h1> Course types</h1>';

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
   echo '<a href="courses.php?id='.$row['id'].'">'. $row['name'] . '</a><br>';
  }
} else {
  echo "0 results";
}
$conn->close();

