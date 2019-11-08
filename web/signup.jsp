<!DOCTYPE html>
	<head>
		<meta charset = "UTF-8"/>
    	<title> Sign Up </title>
		<link rel="stylesheet" type="text/css" href="styling.css">	
	</head>

	<body>
		<header>
    		<div class="container">
        		<img src="./Images/logo.svg" alt="Logo" class="logo"/>
    		</div>
    	</header>

		<form method="post" action="LoginServlet">
			<div class="box"> <!-- Signup Box -->
				<h1>Sign Up</h1><br>
				<p>Please use your UNCC email to create an account</p><br>
   				<hr>
   				<input type="text" placeholder="Enter Full Name" name="fullname" required>
   				<input type="text" placeholder="Enter Username" name="username" required>
				<input type="text" placeholder="Enter Email" name="email" required>
                <input type="password" placeholder="Enter Password" name="password" required>
                <input type="hidden" name="action" value="signup">
                <button type="submit" class="register">Register</button>
    			<p class="signup">Already have an account? <a href="./index.jsp">Login</a></p>
			</div> <!-- End Box -->
			</form>
	</body>
</html>

