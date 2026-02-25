<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    /*
    1. cookie_login,jsp에서 넘어 온 아이디, 비밀번호를 받아 처리
    2. id = abc 이고, pw=1234 라면 로그인 성공
    로그인 성공시, 쿠키 생성 - ("user_id", id) 값을 가지는 쿠키
    
    3. 쿠키 전송 cookie_login.jsp로 이동
    4. 만약 로그인 실패시 cookie_login.jsp로 이동
    
    5. 로그인 성공했을 경우에는 Welcome.jsp로 이동
    "id님 환영합니다." 출력되게
    쿠키를 사용해서 표시되게
    
    6. cookie_login.jsp에는 user_id쿠키가 있는 경우에 로그인 아이디 입력 부분에 cookie에 있는 user_id값이 나오게
    단, 아이디 기억하기가 체크되어 있을 경우에
    idCheck 박스를 표시한 경우 쿠키를 생성해서 추가
    "idCheck"로 생성해서 확인 후에 user_id가 아이디 부분에 표시되어야 한다.
    */
    
    // 1. id, pw 받기
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    // 6.idCheck값 받기
    String idCheck = request.getParameter("idCheck");
    
    // 2. id와 pw 검증 처리 작업.
    if (id.equals("abc")){
        if(pw.equals("1234")){
            // 3. 쿠키 생성
            Cookie saveID = new Cookie("saveID", id);
            saveID.setMaxAge(30);
            saveID.setPath("/demo");
            response.addCookie(saveID);
            
            // 6. idCheck에 id값을 저장
            // idCheck가 있는지 여부 확인
            if(idCheck != null){
                Cookie check = new Cookie("idCheck", id);
                check.setMaxAge(180); // 3분
                check.setPath("/demo");
                response.addCookie(check);
            }
            
            // 5. 로그인 성공시 welcome 페이지로 이동
            response.sendRedirect("welcome.jsp");
            } else {
                // 4. 실패시 로그인 페이지로 이동 (패스워드 틀림)
                response.sendRedirect("cookie_login.jsp");
            }
            } else {
                // 4. 실패시 로그인 페이지로 이동(아이디 틀림)
                response.sendRedirect("cookie_login.jsp");
            }
        %>