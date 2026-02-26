<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>학점 판정</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${param.score >= 90}">
                <b>A</b>
            </c:when>
            <c:when test="${param.score >= 80}">
                <b>B</b>
            </c:when>
            <c:when test="${param.score >= 70}">
                <b>C</b>
            </c:when>
            <c:otherwise>
                <b>F</b>
            </c:otherwise>
        </c:choose>

    </body>
</html>