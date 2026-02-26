<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>

<%
    String name = (String)(request.getAttribute("name"));
    double weight = (double)(request.getAttribute("weight"));
    double height = (double)(request.getAttribute("height"));
    double bmi = (double)(request.getAttribute("bmi"));
    String result = (String)(request.getAttribute("result"));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>비만도 계산</title>
    </head>
    <body>
        <h2><%=name %>님의 BMI 결과</h2>
        <ul>
            <h2><%=name %>님의 결과 : <%=bmi %>, <%= result%> 입니다.</h2>
        </ul>
    </body>
</html>