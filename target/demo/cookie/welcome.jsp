<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
// 1. request에서 전달된 쿠키 값을 얻기 (request에는 Cookie 배열로 저장됨)
    Cookie[] cookies = request.getCookies();
    
    String saveId = null;
    // 3. 쿠키 존재 여부 확인
    if (cookies != null){ // 쿠키가 존재함
        for(int i=0; i<cookies.length; i++){
            if (cookies[i].getName().equals("saveID")){
                saveId = cookies[i].getValue();
            }
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <h2>로그인 성공</h2>
        <p> <%=saveId %>님 환영합니다. </p>
        <a href="cookie_login.jsp">로그인 화면으로 이동</a>
    </body>
</html>