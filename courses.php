<a href="/">BACK HOME</a>

<br><br>

<?php
$dbcreds = parse_ini_file("env.ini", true);

// Create connection
$conn = new mysqli($dbcreds['db']['servername'], $dbcreds['db']['username'], $dbcreds['db']['password'], $dbcreds['db']['dbname']);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$courses_id = (int) $_GET['id'];

/*  =======================

    Get Single courses

    ======================
*/








$sql = "SELECT id, name, description, instructor_name FROM courses WHERE id = '$courses_id'";
$result = $conn->query($sql);



if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
   echo $row['name'] . '<br><br>';
   echo '<strong>Course description:</strong><br>';
   echo $row['description'] . '<br><br><br>';
   echo '<strong>Instructor:</strong><br>';
   echo $row['instructor_name'] . '<br><br><br>';
   
  }
} else {
  echo "0 results";
}





/*  =======================

    Get All students Of Single courses

    ======================
*/

echo '<strong>Students:</strong><br>';


$sql = "SELECT students.id, students.name AS students_name, students_courses.courses_id FROM students_courses RIGHT JOIN students_id ON students.id = students_courses.students_id WHERE students_courses.courses_id = '$courses_id'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo '<br>';
   echo $row['students_name'] . '<br><br>';
   
  }
} else {
  echo "0 results";
}






$conn->close();


