
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/checklogin.do")
public class CheckLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        // 1. parameter로 전달되어진 id, pw를 받기
        String id = req.getParameter("id");
        String pw = req.getParameter("pw");
        if (id == null || pw == null) {
            resp.sendRedirect(req.getContextPath() + "response/login.jsp");
            return;
        }

        // 2. id와 pw 검증 처리 작업.
        if (id.equals("abc1234")) {
            if (pw.equals("asd123")) {
                // 로그인 성공
                // response 객체를 이용해서 리다이렉트 처리.
                // response 객체 sendRedirect() 사용.
                resp.sendRedirect("/response/login_welcome.jsp");
            } else {
                // 패스워드 틀림
                resp.sendRedirect("/response/login_pw_fail.jsp");
            }
        } else {
            // 아이디 틀림
            resp.sendRedirect("/response/login_id_fail.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        doPost(req, resp);
    }

}
