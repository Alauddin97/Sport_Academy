<!DOCTYPE>
<html>

<head>
	<title>Field_Details</title>
	<link rel="stylesheet" type="text/css" href="css/show_details.css">
	<style>
		.init{
			min-height: 95%;
		}
		th{
			color:green;
		}
		td{
			color:whitesmoke;
			text-align: center;
		}
		</style>
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
			<a href="search_player.php">Search by Field</a>
			
		</nav>
		<table width="1000" border="5" align="center" class="div">
			<caption>
				<h3> Field Details</h3>
			</caption>
			<tr bgcolor="black">

			
                <th>Field</th>
                <th>Total Number of Seats</th>
                <th>Total Number of Player's Registered</th>
                <th>Vacancy</th>
			</tr>
			<?php
			$link = mysqli_connect("localhost", "root", "") or die("not connected");
			mysqli_select_db($link, "sports") or die("no db found");
			$viewquery = "SELECT field, count(field) as field1 FROM candidate_details group by field";
			$Execute = mysqli_query($link, $viewquery);
			while ($Datarows = mysqli_fetch_array($Execute)) {
				$field = $Datarows['field'];
                $field1 = $Datarows['field1'];
                $field2 = 30 - $field1;

				?>
				<tr>
                    <td><?php echo $field; ?></td>
                    <td>30</td>
                    <td><?php echo $field1; ?></td>
                    <td><?php echo $field2; ?></td>

				</tr>

			<?php  } ?>
		</table>
	</div>
</body>

</html>