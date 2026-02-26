import java.io.IOException;
import java.util.List;

import DTO.MemberInfo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/members.do")
public class MemServlet extends HttpServlet {
    List<MemberInfo> memberList = List.of(
            new MemberInfo(1, "가가가", "gaga@gmail.com", true),
            new MemberInfo(2, "나나나", "nana@gmail.com", false),
            new MemberInfo(3, "다다다", "dada@gmail.com", true),
            new MemberInfo(4, "라라라", "rara@gmail.com", false),
            new MemberInfo(5, "마마마", "mama@gmail.com", true),
            new MemberInfo(6, "바바바", "baba@gmail.com", false),
            new MemberInfo(7, "사사사", "sasa@gmail.com", true),
            new MemberInfo(8, "아아아", "aaa@gmail.com", false),
            new MemberInfo(9, "자자자", "jaja@gmail.com", true),
            new MemberInfo(10, "차차차", "chacha@gmail.com", false));

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("memberList", memberList);
        req.getRequestDispatcher("/WEB-INF/views/memberList.jsp").forward(req, resp);
    }

    @Override
    public void destroy() {
        super.destroy();
    }

    @Override
    public void init() throws ServletException {
        super.init();
    }

}
