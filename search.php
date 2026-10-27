<?php 

header('Content-Type: application/json; charset=utf-8');

require_once __DIR__ . '/config.php';

$term = isset($_GET['term']) ? trim($_GET['term']) : '';

if($term === ''){
	echo json_encode([]);
	exit;
}

$search = '%'.$term.'%';

$sql = "SELECT name FROM countries WHERE name LIKE ? ORDER BY name LIMIT 10";
$stmt = mysqli_prepare($conn, $sql);

if(!$stmt){
	http_response_code(500);
	echo json_encode( [] );
	exit;
}

mysqli_stmt_bind_param($stmt, 's', $search);
mysqli_stmt_execute($stmt);

$result = mysqli_stmt_get_result($stmt);

$results = [];

while($row = mysqli_fetch_assoc($result)){
	$results[] = $row['name'];
}

mysqli_stmt_close($stmt);

echo json_encode($results);

































