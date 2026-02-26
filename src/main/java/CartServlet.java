import java.io.IOException;
import java.util.List;

import DTO.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cartList.do")
public class CartServlet extends HttpServlet {
    List<Product> list = List.of(
            new Product("키보드", 30000, 15),
            new Product("마우스", 15000, 5),
            new Product("모니터", 100000, 3),
            new Product("본체", 150000, 4));

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("myCart", list);
        req.getRequestDispatcher("WEB-INF/views/cartSummary.jsp").forward(req, resp);
    }

    @Override
    public void destroy() {
        // TODO Auto-generated method stub
        super.destroy();
    }

    @Override
    public void init() throws ServletException {
        // TODO Auto-generated method stub
        super.init();
    }

}
