<%--
  Created by IntelliJ IDEA.
  User: Andrey
  Date: 27.10.2018
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="styles/w3.css">
    <title>Add user</title>
</head>
<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Add User</h1>
</div>

<div class="w3-container w3-padding">
    <div>
        <p>Please, enter your login and password:</p>
    </div>

    <div class="w3-card-4">
        <form method="post" class="w3-selection w3-light-grey w3-padding">
            <label>Name:
                <input type="text" name="name"><br/>
            </label>

            <label>Password:
                <input type="password" name="pass"><br/>
            </label>
            <button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom">Submit</button>
        </form>
    </div>

    <div>
        <%
            String name = (String) request.getAttribute("name");
            if (name != null && !name.isEmpty()) {
                out.println("<p>You added user: " + name + "</p>");
            }
        %>
    </div>

    <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
        <button class="w3-btn w3-round-large" onclick="location.href='/'">Back to main</button>
    </div>
</div>
</body>
</html>
