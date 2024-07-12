<%@page import="java.util.ArrayList"%>
<%@page import="com.Accio.SearchResult"%>
<html>
<body>
    <table border="2">
        <tr>
            <th>Title</th>
            <th>Link</th>
        </tr>
        <%
            ArrayList<SearchResult> results = (ArrayList<SearchResult>) request.getAttribute("results");
            if (results != null) {
                for (SearchResult result : results) {
        %>
        <tr>
            <td><%= result.getTitle() %></td>
            <td><a href="<%= result.getLink() %>"><%= result.getLink() %></a></td>
        </tr>
        <%
                }
            }
        %>
    </table>
</body>
</html>