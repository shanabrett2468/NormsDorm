<%@page import="normsPackage.User"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset = "UTF-8"/>
	<title>Norm's Dorm - About Us</title>
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
    <h2 style= "text-align: center; font-family: sans-serif;">We are students who love safety and coding!!</h2>
    <br><br>
    <h3 style="text-align: center; padding-right: 90px;">The Creators </h3><br><br>

    <div class="aboutContainer">
    <img src="./Images/zain.jpeg" style="height: 200px; width: 200px;">
    <p> Zain </p>

    <img src="./Images/drew.jpeg" style="height: 200px; width: 200px;">
    <p>Andrew</p>

    <img src="./Images/shana.jpg" style="height: 200px; width: 300px;">
    <p>Shana</p>

    <img src="./Images/han.jpeg" style="height: 200px; width: 300px;">
    <p>Han</p>

    <img src="./Images/juan.jpeg" style="height: 200px; width: 200px;">
    <p>Juan</p>
  </div>
</body>
</html>