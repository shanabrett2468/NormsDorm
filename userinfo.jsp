<%@page import="normsPackage.User"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset = "UTF-8"/>
    <title>User Information</title>
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
    <section>
        <div class="account_settings">
            <form action = "LoginServlet" method="post">
            	<div class="user_infobox">
            		<h2 style="padding-bottom: 10px; padding-top: 10px; text-align: center;">User Information</h2>
            		<hr>
            		<label>Username:</label>
            			<input type="text" name="username" value="<%= theUser.getUsername()%>">
					<label>Full Name:</label>
	                	<input type="text" name="fullname" value="<%= theUser.getFullname()%>">
	            	<label>Email:</label>
	                	<input type="text" name="email" value="<%= theUser.getEmail()%>">
	            	<label>Password:</label>
	                	<input type="password" name="password" value="<%= theUser.getPassword()%>">
	                	<input type="hidden" name="action" value="changeinfo">
	                <button type="submit" class="update_button">Update</button>
            	</div>
            </form>
    </div>
    </section>
</body>
</html>