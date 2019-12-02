<%@page import="normsPackage.User"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset = "UTF-8"/>
  <title>Norm's Dorm - Listings</title>
  <link rel="stylesheet" type="text/css" href="styling.css">
</head>

<body>
   <!--- Navigation bar --->
    <header>
    <div class="container">
        <img src="./Images/logo.svg" alt="Logo" class="logo"/>

        <% User theUser = (User) session.getAttribute("theUser"); %>
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
        <!--- Listings Grid --->
    <div class="page-container">
        <div class="itemContainer"> 
            <div class="grid-image">
                <p>This is where the image goes.</p>
            </div>
            <div class="caption">
                <p>This is where the caption goes. blah blah blah blah this is a description tee heexxxxxxxxxxxxxxxxxxx</p>
                <br>
            </div>
        </div>

        <div class="itemContainer"> 
            <div class="grid-image">
                <p>This is where the image goes.</p>
            </div>
            <div class="caption">
                <p>This is where the caption goes. blah blah blah blah this is a description tee heexxxxxxxxxxxxxxxxxxx</p>
                <br>
            </div>
        </div>
    </div>
    <!--- End of Grid --->

    <!--------- Filter side bar ------->
    <div class="sidebar">
    <form>
        <h3>Browse Ads</h3>
        <label>Category</label><br>
            <input type="radio" name="category" value="clothing">Clothing<br>
            <input type="radio" name="category" value="electronics">Electronics<br>
            <input type="radio" name="category" value="furniture">Furniture<br>
            <input type="radio" name="category" value="household_goods">Household Goods<br>
            <input type="radio" name="category" value="miscellaneous">Miscellaneous
            <input type="radio" name="category" value="books">Books<br>
            <input type="radio" name="category" value="others">Others<br>
        <label>Price Range</label><br>
            <input type="checkbox" name="price" value="">No Min - $20<br>
            <input type="checkbox" name="price" value="">$20 - $50<br>
            <input type="checkbox" name="price" value="">$50 - No Max<br>

        <label>Location</label><br>
            <input type="radio" name="location" value="student_union">Popp Martin Student Union<br>
            <input type="radio" name="location" value="library">J. Murrey Atkins Library<br>
            <input type="radio" name="location" value="woodward_hall">Woodward Hall<br>
            <input type="radio" name="location" value="offcampus">Off Campus Apartment<br>
            <input type="radio" name="location" value="others">Others<br>
        <label>Condition</label><br>
            <input type="radio" name="condition" value="new">New
            <input type="radio" name="condition" value="used">Used<br>
            <input type="radio" name="condition" value="excellent">Excellent
            <input type="radio" name="condition" value="very_good">Very Good<br>
            <input type="radio" name="condition" value="good">Good
            <input type="radio" name="condition" value="acceptable">Acceptable<br>

        <label>Color</label><br>
            <input type="checkbox" name="color" value="black">Black
            <input type="checkbox" name="color" value="white">White<br>
            <input type="checkbox" name="color" value="gray">Gray
            <input type="checkbox" name="color" value="blue">Blue<br>
            <input type="checkbox" name="color" value="red">Red
            <input type="checkbox" name="color" value="beige">Beige<br>
            <input type="checkbox" name="color" value="brown">Brown
            <input type="checkbox" name="color" value="green">Green
            <input type="checkbox" name="color" value="yellow">Yellow
        <br>
        <button type="submit" class="" value="">Search</button>
    </form>               
    </div>
    </section>

</body>
</html>