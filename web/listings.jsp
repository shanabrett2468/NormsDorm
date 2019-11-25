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
</body>
</html>