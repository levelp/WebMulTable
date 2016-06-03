<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Вывод таблицы умножения заданного размера</title>
</head>
<body>

<form action="index.jsp" method="post">
    <label>
        Строчек: <input type="text" name="rows" value="${param["rows"]}"/>
    </label>
    <br>
    <label>
        Столбцов: <input type="text" name="cols" value="${param["cols"]}"/>
    </label>
    <br>
    <input type="submit" value="Обновить">
</form>

<%
    // request = (HttpServletRequest) pageContext.getRequest();
    String rowsStr = request.getParameter("rows");
    String colsStr = request.getParameter("cols");
%>

rows = <%=rowsStr%><br>
cols = <%=colsStr%><br>

<table border="1">
    <%
        int rows = (rowsStr == null) ? 10 : Integer.parseInt(rowsStr); // Количество строчек
        int cols = (colsStr == null) ? 9 : Integer.parseInt(colsStr); // Количество столбцов
        for (int i = 1; i <= rows; i++) { %>
    <tr>
        <% for (int j = 1; j <= cols; j++) { %>
        <td><%=i * j %>
        </td>
        <% } %>
    </tr>
    <% } %>
</table>

</body>
</html>
