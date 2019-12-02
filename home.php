<html>

<head>
	<title>Registration</title>
	<link rel="stylesheet" type="text/css" href="css/home.css">
</head>

<script language="javascript">
	function checkEmail() {

		var email = document.getElementById('txtEmail');
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

		if (!filter.test(email.value)) {
			alert('Please provide a valid email address');
			email.focus;
			return false;
		}
	}

	function phone() {
		var pno = document.getElementById('pno');
		var filter = /([0-9])+$/;

		if (!filter.test(pno.value)) {
			alert('Please provide a valid Phone Number');
			pno.focus;
			return false;
		}
	}
</script>

<body background="sports.jpg" background-size:1000px;>
	<div class="init">
		<header>
			GHOUSIA SPORTS ACADEMY
		</header>
		<nav>

			<a href="show_details.php">Player Details</a>
			<a href="coach.php">Coaching Staff Details</a>
			<a href="field_details.php"> Field Details</a>
			<a href="search_player.php">Search by Field</a>
			<a href="index.php">Logout</a>
		</nav>
		<div class="details">
			<form action="home.php" method="POST">
				<u> Enter Player Information</u><br />
				<div class="flex">
					<div class="details">
						<label>Name:*</label><br />
						<input class="input" type="text" name="name" placeholder="Name" maxlength="30" required /><br />
						<label> Father Name:*</label><br />
						<input class="input" type="text" name="father_name" placeholder="Father Name" maxlength="30" required /><br />
						<label>Date_of_birth:*</label><br />
						<input class="input" type="date" name="dob" required /><br />
						<label>Gender:*</label><br />
						<input type="radio" name="gender" value="Male" required>Male
						<input type="radio" name="gender" value="Female" required>Female<br /><br />
						<label>Blood_group:</label><br />
						<select class="input" name="blood_group" required>
							<option>Blood Group</option>
							<option value="A+">A RhD positive (A+)</option>
							<option value="A-">A RhD negative (A-)</option>
							<option value="B+">B RhD positive (B+)</option>
							<option value="B-">B RhD negative (B-)</option>
							<option value="O+">O RhD positive (O+)</option>
							<option value="O-">O RhD negative (O-)</option>
							<option value="AB+">AB RhD positive (AB+)</option>
							<option value="AB-">AB RhD negative (AB-)</option>
						</select><br />
						<label>Mobile No:</label><br />
						<input class="input" type="text" name="pno" placeholder="Mobile Number" minlength="10" maxlength="10" id="pno" onchange="Javascript:phone()" required /><br />
					</div>
					<div class="details">
						<label>Parents Mobile No:</label><br />
						<input class="input" type="text" name="father_no" placeholder="Parent Mobile Number" minlength="10" maxlength="10" id="pno" onchange="Javascript:phone()" required /><br />
						<label>Field of Interest:</label><br />
						<select class="input" name="field" required>
							<option>Field</option>
							<option value="Cricket">Cricket</option>
							<option value="Football">Football</option>
							<option value="Hockey">Hockey</option>
							<option value="Tennis">Tennis</option>
						</select><br />
						<label>Email:</label><br />
						<input class="input" type="email" name="email" id="txtEmail" placeholder="example@gmail.com" onchange="Javascript:checkEmail();" required /><br />
						<label>State:*</label><br />
						<input class="input" type="text" name="address" placeholder="State" required /><br />
						<label>Fee Paid:*</label><br />
						<input class="input" type="number" name="fee" placeholder="Fee paid" required /><br />
					</div>
				</div>
				<input class="register" type="submit" name="submit" value="&nbsp;Register&nbsp;">
			</form>

		</div>
</body>

</html>

<?php
$link = mysqli_connect("localhost", "root", "") or die("not connected");
mysqli_select_db($link, "sports") or die("no db found");

if (isset($_POST['submit'])) {
	$name = $_POST['name'];
	$father_name = $_POST['father_name'];
	$dob = $_POST['dob'];
	$gender = $_POST['gender'];
	$blood_group = $_POST['blood_group'];
	$pno = $_POST['pno'];
	$father_no = $_POST['father_no'];
	$field = $_POST['field'];
	$email = $_POST['email'];
	$address = $_POST['address'];
	$fee = $_POST['fee'];

	if ((!(is_numeric($pno))) and (!(is_numeric($father_no)))) {
		echo "<script type='text/javascript'>alert('invalid Phone Number')</script>";
	} else if (empty($name) || empty($father_name) || empty($dob) || empty($gender) || empty($address) || empty($fee) || empty($field)) {
		echo "<h3>Enter Details Properly!(* >> Mendatory)</h3>";
	} else {
		$query = "insert into candidate_details(name,father_name,dob,gender,blood_group,pno,father_no,field,email,address,fee) values('$name','$father_name','$dob','$gender','$blood_group',' $pno','$father_no','$field','$email','$address','$fee')";

		if (mysqli_query($link, $query)) {
			echo "<script type='text/javascript'> alert('Candidate Details Inserted Successfuly!!!') </script>";
		}
	}
}
?>