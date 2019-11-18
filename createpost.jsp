<%@page import="normsPackage.User"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset = "UTF-8"/>
	<title>Norm's Dorm - Post Your Ad</title>
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
            <h2 style="text-align: center;">Create a New Listing</h2>
            <form method="" action=""> 
            <div id="posting_item_form">
                <label>Title</label></form><br>
                    <input type="text" name="title" value="" required><br>

                <label>Price</label></form><br>
                    <input type="text" name="price" value="" required><br>

                <label>Upload Image</label></form><br>
                    <input type="file" name="image" value="" required><br>
                    <input type="file" name="image" value="" required><br>

                <label>Location</label><br>
                    <select name="location"><br>
                        <option value="">Choose a Location</option>
                        <option value="">Popp Martin Student Union</option>
                        <option value="">J. Murrey Atkins Library</option>
                        <option value="">Woodward Hall</option>
                        <option value="">Off Campus Apartment</option>
                        <option value="">Other</option>
                    </select><br>

                <label>Category</label><br>
                    <select name="category"><br>
                        <option value="">Select A Category</option>
                        <option value="">Clothing</option>
                        <option value="">Electronics</option>
                        <option value="">Furniture</option>
                        <option value="">Household Goods</option>
                        <option value="">Miscellaneous</option>
                        <option value="">Books</option>
                        <option value="">Other</option>
                    </select><br>

                <label>Condition</label><br>
                    <select name="condition"><br>
                        <option value="">Choose a Condition</option>
                        <option value="">New</option>
                        <option value="">Used</option>
                        <option value="">Excellent</option>
                        <option value="">Very Good</option>
                        <option value="">Good</option>
                        <option value="">Acceptable</option>
                    </select><br>

                <label>Color</label><br>
                    <input type="checkbox" name="color" value="">Black
                    <input type="checkbox" name="color" value="">White
                    <input type="checkbox" name="color" value="">Gray
                    <input type="checkbox" name="color" value="">Blue
                    <input type="checkbox" name="color" value="">Red
                    <input type="checkbox" name="color" value="">Beige
                    <input type="checkbox" name="color" value="">Brown
                    <input type="checkbox" name="color" value="">Green
                    <input type="checkbox" name="color" value="">Yellow
                    <br>

                <label>Description</label><br>
                    <input type="text" name="description" value="" required><br>
                <button type="submit" id="create_post_button">Create Post</button>
            </div>
            </form>
        </div>
    </section>

</body>
</html>