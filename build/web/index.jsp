<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>

<head>

  <meta charset="UTF-8">

  <title>HRS</title>
    <script src="js/prefixfree.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/index.css">

</head>

<body>

  <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>HRS<span>RFQ</span></div>
		</div>
		<br>
		<div class="login">
                    <form action="logincheck.jsp" method="post">
				<input type="text" placeholder="username" name="username"><br>
				<input type="password" placeholder="password" name="password"><br>
				<input type="submit" name="submit" value="Login">
                    </form>
		</div>


</body>

</html>