<!DOCTYPE html>
<html>
<head>
	<meta charset = "UTF-8"/>
	<title>Norm's Dorm - Homepage</title>
	<link rel="stylesheet" type="text/css" href="styling.css">
</head>

<body>
   <!--- Navigation bar --->
   <header>
    	<div class="container">
        	<img src="./Images/logo.svg" alt="Logo" class="logo"/>

            <div class="top_account">
                <h4>Welcome, (${user.username})!</h4>
                <p>
                    <a href="myaccount.jsp">My Account |</a>
                    <a href="">Logout</a>
                </p>
            </div>
    	</div>

        <nav class="top_nav">
            <ul>
            	<li><a href="homepage.jsp">HOME</a></li>
                <li><a href="listings.jsp">LISTINGS</a></li>
                <li><a href="events.jsp">EVENTS</a></li>
                <li><a href="aboutus.jsp">ABOUT US</a></li>
            </ul>
        </nav>
    </header>
    <section>
        <div class="account_settings">
        <h2 style="padding-bottom: 10px">User Infomation</h2>
            <form>
                Username:
                <input type="text" name="username"><br>
                Fullname:
                <input type="text" name="fullname"><br>
                Email:
                <input type="text" name="email"><br>
                Password:
                <input type="password" name="password">
            </form>
    </div>
    </section>
</body>
</html>