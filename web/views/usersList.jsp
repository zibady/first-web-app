<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Users</title>
        <link rel="stylesheet" href="styles/w3.css">
    </head>

    <body class="w3-light-grey b">
    <div class="w3-container w3-dark-grey w3-opacity w3-round-xlarge w3-right-align"> <!-- HEADER -->
            <h1>YOU CAN, DO IT!</h1>
        </div>

        <div class="w3-container w3-center w3-margin-bottom w3-padding">
            <div class="w3-card-4">
                <div class="w3-container w3-deep-orange w3-round-medium">
                    <h2>Users:</h2>
                </div>
            <!-- Use Java code: -->
            <%
                List<String> names = (List<String>) request.getAttribute("userNames");
                if (names != null && !names.isEmpty()) {
                    out.println("<ul class=\"w3-ul\">");
                    for (String name : names) {
                        out.println("<li class=\"w3-dark-grey w3-hover-white\">" + name + "</li>");
                    }
                    out.println("</ui>");
                }  else out.println("<div class=\"w3-panel w3-red w3-display-container w3-card-4 w3-round\">\n" +
                            "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                            "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-red w3-border w3-border-red w3-hover-border-grey\">×</span>\n" +
                            "   <h5>There are no users yet!</h5>\n" +
                            "</div>");
            %>
            </div>
        </div>

        <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
            <button class="w3-btn w3-black w3-round-xxlarge" onclick="location.href='/'">Back to main</button>
        </div>
    </body>
</html>
