<%@page import="normsPackage.User"%>
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
                <%
                    User theUser = (User) session.getAttribute("theUser");
                %>
            <div class="top_account">
                <h4>Welcome, <%= theUser.getUsername()%>!</h4>
                <p>
                    <a href="myaccount.jsp">My Account |</a>
                    <a href="LoginServlet?action=logout">Logout</a>
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

    <section class="homepage_fea">
    	<div class="feature">
    		<p style="font-size: 38px; color: white">FEATURES</p>
    		<br>
    		<hr style="background-color: #B9975B; border: none; border-radius: 5px; height:6px; width:150px; align:center;margin: 0 auto;">
    		<img src="./Images/cart.png" alt="" class=""/>
    		<h3>BUY AND SELL</h3>
	    	<p>List items to sell or look for items to buy.</p>
	    	<img src="./Images/email.png" alt="" class=""/>
	    	<h3>MESSAGING</h3>
	    	<p>Contact a seller directly through email and meet on campus to close the deal.</p>
	    	<img src="./Images/lock.png" alt="" class=""/>
	    	<h3>PRIVATE AND SECURE</h3>
	    	<p>Only available to students and faculty with a valid @uncc.edu email address.</p>
	    	<img src="./Images/event.png" alt="" class=""/>
	    	<h3>EVENTS</h3>
	    	<p style="padding-bottom: 40px">Keeping up with current events on campus.</p>
    	</div>
    </section>

    <footer>
    	<div class="bottom_container">
    		<p class="copyright"> Copyright &copy; 2019 - Norm's Dorm</p>
    	</div>
    </footer>

</body>
</html>