<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add new user</title>
        <link rel="stylesheet" href="styles/w3.css">
    </head>

    <body class="w3-light-grey b">
    <div class="w3-container w3-dark-grey w3-opacity w3-round-xlarge w3-right-align"> <!-- HEADER -->
            <h1>YOU CAN, DO IT!</h1>
        </div>

        <div class="w3-container w3-padding">
            <%
                if (request.getAttribute("userName") != null) {
                    String name = (String) request.getAttribute("userName");
                    if (!name.isEmpty()) {
                    out.println("<div class=\"w3-panel w3-sand w3-text-green w3-display-container w3-card-4 w3-round\">\n" +
                            "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                            "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-border-grey\">×</span>\n" +
                            "   <h5 class=\"w3-xlarge\">User '" + request.getAttribute("userName") + "' added!</h5>\n" +
                            "</div>");
                    } else {
                        out.println("<div class=\"w3-panel w3-sand w3-text-red w3-display-container w3-card-4 w3-round\">\n" +
                                "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                                "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-red w3-hover-border-grey\">×</span>\n" +
                                "   <h5 class=\"w3-xlarge\">Incorrect user's name!</h5>\n" +
                                "</div>");
                    }
                }
            %>
            <div class="w3-card-4">
                <div class="w3-container w3-center w3-deep-orange w3-round-medium">
                    <h2>Enter data to create a new user</h2>
                </div>

                <form method="post" class="w3-selection w3-gray w3-opacity w3-padding w3-round-medium">
                    <label>Name:
                        <input type="text" name="name" class="w3-input w3-border w3-rou w3-round-large w3-opacity-off" style="width: 30%"><br/>
                    </label>

                    <label>Password:
                        <input type="password" name="pass" class="w3-input w3-border w3-round-large w3-opacity-off" style="width: 30%"><br/>
                    </label>
                    <button type="submit" class="w3-btn w3-green w3-hover-opacity-off w3-round-xxlarge w3-margin-bottom" >Submit</button>
                </form>
            </div>
        </div>

        <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding w3-round-xlarge">
            <button class="w3-btn w3-black w3-round-xxlarge" onclick="location.href='/'">Back to main</button>
        </div>
    </body>
</html>
