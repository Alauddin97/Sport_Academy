<?php
$link = mysqli_connect("localhost", "root", "") or die("not connected");
mysqli_select_db($link, "sports") or die("db not found");
if (isset($_POST['submit'])) {
	$field = $_POST['field'];
	if (empty($field)) {
		echo "<h3> Enter Field</h3>";
	} else {
		$myquery = mysqli_query($link, "select field from candidate_details where field='$field' ") or die("Failed to query" . mysqli_error($link));
		$row = mysqli_fetch_array($myquery);
		if ($row['field'] == $field) {
			echo "Successful";
			header("Location:show_details_by_field.php");
		} else
			echo "<h3> Enter valid field</h3>";
	}
}
?>
<!doctype>
<html>

<head>
	<title> Search Field</title>
	<link rel="stylesheet" type="text/css" href="css/search_player.css">
</head>

<body background="index.jpg">
<div class="init">
		<header>
			GHOUSIA SPORTS ACADEMY
		</header>
		<nav>
		<a href="home.php">Home</a>
			<a href="show_details.php">Player Details</a>
			<a href="coach.php">Coaching Staff Details</a>
			<a href="field_details.php"> Field Details</a>			
		</nav>
	<form action="show_details_by_field.php" method="GET">
		<table border="1" class="div">
			<tr>
				<td colspan="5" align="center" bgcolor="gray"> Enter Field </td>
			</tr>
			<tr>
				<td align="center">Field</td>
				<td align="center"><select class="input" name="field">
						<option>Select</option>
						<option value="Cricket">Cricket</option>
						<option value="Football">Football</option>
						<option value="Hockey">Hockey</option>
						<option value="Tennis">Tennis</option>
					</select><br /></td>
			</tr>
			<tr>
				<td colspan="5" bgcolor="gray" align="center"><input type="submit" name="submit" value="submit"></td>
			</tr>
		</table>
	</form>
</div>
</body>

</html>