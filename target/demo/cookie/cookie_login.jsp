<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Cookie[] cookies = request.getCookies();
    
    String saveId = null;
    boolean checked = false;
    // 쿠키 존재 여부 확인
    if (cookies != null){ // 쿠키가 존재함
        
        for(int i=0; i<cookies.length; i++){
            if (cookies[i].getName().equals("idCheck")){
                saveId = cookies[i].getValue();
                checked = true;
            }
            if (cookies[i].getName().equals("saveId")){
                response.sendRedirect("welcom.jsp");
            }
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"> 
        <title>Cookie Login</title>
        <style>
            .wrap{
                width:257px;
                margin: 0 auto;
                text-align: center;
            }
            
            .btn{
                width:60px;
                height: 50px;
                background-color : aqua;
            }
            
            
        </style>
    </head>
    <body>
        <form action="cookie_login_ok.jsp" method="post">
            <table border="1">
                <tr>  <!-- rowspan, colspan 사용 -->
                    <td><input type="text" name="id" placeholder="아이디" value="<%=saveId%>"></td>
                    <td rowspan=2><input type="submit" value="로그인" class="btn"></td>
                </tr>
                <tr>
                    <td><input type="password" name="pw" placeholder="비밀번호"></td>

                </tr>
                <tr>
                    <td colspan="2">
                        <label for="idCheck">아이디 기억하기</label>
                        <input type="checkbox" id="idCheck" name="idCheck" value="y">

                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>