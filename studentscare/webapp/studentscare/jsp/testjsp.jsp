<%@ page contentType="text/html; charset=utf-8" %>
<html>
<body>
<%
    int day= new java.util.Date().getDay()+1;
    switch (day)
    {
        case 1: out.println("วันนี้เป็นวันอาทิตย์");
                   break;
        case 7: out.println("วันนี้เป็นวันเสาร์");
                   break;
        default: out.println("วันนี้เป็นวันทำงาน");
    }
    out.println("<hr>ค่าของวัน = ");
    out.println(day);
%>
</body>
</html>