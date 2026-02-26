import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bmi.do")
public class BMIServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String heightStr = req.getParameter("height");
        String weightStr = req.getParameter("weight");
        String nameStr = req.getParameter("name");

        double height = (heightStr == null || heightStr.isEmpty()) ? 0 : Double.parseDouble(heightStr);
        double weight = (weightStr == null || weightStr.isEmpty()) ? 0 : Double.parseDouble(weightStr);
        String name = (nameStr == null || nameStr.isEmpty()) ? "" : nameStr;

        double bmi = weight / ((height / 100) * (height / 100));
        bmi = Math.floor(bmi * 100) / 100.0;

        String result = "";
        if (bmi >= 30) {
            result = "비만(2단계/고도비만)";
        } else if (bmi > 25) {
            result = "비만(1단계)";
        } else if (bmi > 23) {
            result = "과체중";
        } else if (bmi > 18.5) {
            result = "정상";
        } else {
            result = "저체중";
        }

        req.setAttribute("name", name);
        req.setAttribute("height", height);
        req.setAttribute("weight", weight);
        req.setAttribute("bmi", bmi);
        req.setAttribute("result", result);

        req.getRequestDispatcher("/WEB-INF/views/bmiResult.jsp").forward(req, resp);
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
