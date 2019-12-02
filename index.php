<?php
$link = mysqli_connect("localhost", "root", "") or die("Not Connected");
mysqli_select_db($link, "sports") or die("no db found");
if (isset($_POST['submit'])) {
    $username = $_POST['user'];
    $password = $_POST['pass'];
    if (empty($username) || empty($password)) {
        echo "<h2> Enter Username and Password</h2>";
    } else {
        $result = mysqli_query($link, "select * from login where username='$username' and password='$password'") or die("Failed to query" . mysqli_error($link));
        $row = mysqli_fetch_array($result);
        if ($row['username'] == $username && $row['password'] == $password) {
            echo "Login Successfull !!! Welcome";
            header("Location:home.php");
        } else
            echo "<h2> Enter valid Username and Password </h2>";
    }
}
?>
<!DOCTYPE>

<head>
    <title> Login Page </title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>

<body background="key.jpg">
    <form action="index.php" method="POST">


        <div class="login">
            <header>GHOUSIA SPORTS ACADEMY</header>
            <div class="user">
                <div class="insert">
                    <h1>Enter Login Details</h1>
                    User ID:*<br />
                    <input type="text" name="user" required><br /><br />
                    Password:*<br />
                    <input type="password" name="pass" maxlength="6" required><br /><br />
                    <input type="submit" name="submit" value="Login">
                </div>
                <div>
                    <img src="sports.jpg" alt="Loading">
                </div>

            </div>
            <div class="field">

                <div class="details">
                    <h2> Tennis</h2>
                    &nbsp; &nbsp; &nbsp; Tennis is a court-based sport competed between two (singles) or four (doubles) people.
                    Each participant is in possession of a wired racket,
                    which they use to hit a ball across the court – with a net separating each half.
                    The aim of the game is to strike the ball in a tactical way so the opponent cannot return the ball.
                    Tennis has experienced a patchy Olympic history,
                    but has featured consistently since 1984.
                </div>
                <div class="details">
                    <h2>Cricket</h2>
                    &nbsp; &nbsp; &nbsp; Cricket is a bat-and-ball game played between two teams of eleven players on a field at the centre of which is a 20-metre (22-yard) pitch with a wicket at each end,
                    each comprising two bails balanced on three stumps.
                    The batting side scores runs by striking the ball bowled at the wicket with the bat,
                    while the bowling and fielding side tries to prevent this and dismiss each player (so they are "out").
                </div>
                <div class="details">
                    <h2> Hockey</h2>
                    &nbsp; &nbsp; &nbsp; Field Hockey is a team sport that can be played on courts both indoors and outdoors,
                    with each side consisting of eleven players.
                    Every match is played with a small plastic ball which players are required to move and strike using sticks.
                    The aim is to shoot this ball into the opposition’s net, which results in a goal.
                    The team who scores the most goals during the match will triumph.
                    Field Hockey first appeared at the Olympics in 1908 before taking a break until 1920.
                </div>

                <div class="details">
                    <h2> Football</h2>
                    &nbsp; &nbsp; &nbsp; Football is a team sport played on an outdoor field or indoor court,
                    most commonly with 11 players on each side at a professional/competitive level.
                    Players can only use their feet to control the spherical game ball (with the exception of the goalkeeper) and the aim of the game is to place the ball in the opposition’s net,
                    which is known as a “goal”. Football has been played at the Olympic games every year except for 1896 and 1932.
                </div>
            </div>

        </div>
    </form>
</body>

</html>