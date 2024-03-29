<!DOCTYPE html>
<html>
<head>
	<meta charset = "UTF-8"/>
	<title>Norm's Dorm</title>
	<link rel="stylesheet" type="text/css" href="styling.css">
</head>

<body>
   <header>
    	<div class="container">
        	<img src="./Images/logo.svg" alt="Logo" class="logo"/>
    	</div>
    </header>

    <section>
        <div class="banner">
            <div class="banner_text">
                <h1>Welcome to <strong>Norm's Dorm</strong></h1>
                <hr style="background-color: white; border: none; border-radius: 5px; height:5px; width:100px; align:center;margin: 0 auto;">
                <p>Your marketplace for buying & selling used items among UNCC students in a user-friendly and safe environment.
                </p>
                <p>
                    <button onclick="document.getElementById('myForm').style.display='block'" class="login_index">Login</button>
                </p>
            </div>
        </div>
    </section>

    <!--- Popup login form --->
    <div id="myForm" class="popup_form">
        <form class="box" action="" method="post">
            <div class="close">
                <span onclick="document.getElementById('myForm').style.display='none'" class="close_icon">&times;</span>
                <h1>Welcome</h1>
                <img src="./Images/image.png" width="250px" height="230px">
            </div>
            <input type="text" placeholder="Enter Your UNCC Email" name="email" required>
            <input type="password" placeholder="Enter Password" name="password" required>
            <input type="hidden" name="action" value="login">
            <button type="submit" class="login">Login</button>

            <p><a href="activationpage.jsp">Verify your account</a></p>
            
            <p class="signup">Don't have an account? <a href="./signup.jsp">Sign up now</a></p>
        </form>
    </div>

    <script>
        var popup_form = document.getElementById('myForm');
        window.onclick = function(event) {
            if (event.target == popup_form) {
                popup_form.style.display = "none";
            }
        }
    </script>
</body>
</html>