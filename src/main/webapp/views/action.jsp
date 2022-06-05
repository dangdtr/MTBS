<%@ page import="com.uet.mtbs.database.CheckLogged" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ jsp:include file="alert.jsp"%>--%>
<html>
<head>
    <title>Title</title>
<%--    <script type="text/javascript">--%>
<%--        function alertAddMovie(){--%>
<%--            alert("Only admin can use this feature");--%>
<%--        }--%>
<%--    </script>--%>
</head>
<body>
<%--    <script type="text/javascript">--%>
<%--        function alertAddMovie(){--%>
<%--            String currUsername = <%CheckLogged.getLoggedUsername();%>--%>
<%--            if(<%CheckLogged.LOGGED_USERNAME.equals("");%>) {--%>
<%--                alert("Only admin can use this feature");--%>
<%--            }--%>
<%--            else {--%>
<%--                <%response.sendRedirect("add_movie.jsp");%>--%>
<%--            }--%>
<%--        }--%>
<%--    </script>--%>
<%
    if(CheckLogged.LOGGED_USERNAME.equals("admin")) {
        response.sendRedirect("add_movie.jsp");
    }
    else {
        response.sendRedirect("logged_index.jsp");
    }
%>
</body>
</html>
