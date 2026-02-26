<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <h2>회원 목록</h2>
        <table>
            <tr>
                <th>번호</th>
                <th>상품명</th>
                <th>수량</th>
                <th>합계</th>
            </tr>
            <c:forEach var="l" items="${myCart}" varStatus="st">
                <tr>
                    <td>${st.count}</td>
                    <td>${l.name}</td>
                    <td>${l.count}</td>
                    <td>${l.count * l.price}</td>
                </tr>
            </c:forEach>

        </table>
    </body>
</html>