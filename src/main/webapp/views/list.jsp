<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List all users</title>
</head>
<body>

    <div>
        <h1>
            USERS:
        </h1>
    </div>

    <ul>
        <%
            List<String> names = (List<String>) request.getAttribute("users");
            if (names != null && !names.isEmpty()) {
                out.println("<ui>");
                for (String name : names) {
                    out.println("<li>" + name + "</li>");
                }
                out.println("</ui>");
            } else {
                out.println("<p>No users yet :( </p>");
            }
        %>
    </ul>

</body>
</html>
