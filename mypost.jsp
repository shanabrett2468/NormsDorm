<%@page import="normsPackage.User"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset = "UTF-8"/>
  <title>Norm's Dorm</title>
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
        <div class="create_listing">
            <h2>Title goes here</h2>
            <h4>Price: price goes here</h4>
            <h4>Image</h4>
            <h4>Description: goes here</h4>
            <h4>Location: goes here</h4>
            <h4>Condition: goes here</h4>
            <h4>Email<h4><br>
                <input type="text" name="email" required><br>
            <h4>Message to The Seller<h4><br>
                <textarea required></textarea><br>
            <button type="submit" class="">Send</button>
        </div>
    </section>
</body>
</html>