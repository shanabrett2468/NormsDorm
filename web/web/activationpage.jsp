<!DOCTYPE html>
	<head>
		<meta charset = "UTF-8"/>
    	<title> Norm's Dorm </title>
		<link rel="stylesheet" type="text/css" href="styling.css">	
	</head>

	<body>
		<header>
    		<div class="container">
        		<img src="./Images/logo.svg" alt="Logo" class="logo"/>
    		</div>
    	</header>
            
                <form method="post" action="LoginServlet">
                    <div class="box">
                        <h1>Authentication</h1>
                        <hr>
                        <input placeholder="Enter Email" type="email" name="email">
                        <input placeholder="Enter Password" type="password" name="password">
                        <input placeholder="Enter Activation Code" type="code" name="code">
                        <input type="hidden" name="action" value="verify"><br>
                        <button type="submit" class="register">Verify</button>
                    </div>
		</form>
            
		
	</body>
</html>

