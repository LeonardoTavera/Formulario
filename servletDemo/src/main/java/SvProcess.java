import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/process-form")
public class SvProcess extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String ciclo = req.getParameter("ciclo");
        //enviamos atributos a sus respectivos en el jsp
        req.setAttribute("namejsp", name);
        req.setAttribute("emailjsp", email);
        req.setAttribute("ciclojsp", ciclo);
        //conversor
        int falta = 10-Integer.parseInt(req.getParameter("ciclo"));
        req.setAttribute("faltajsp", falta);
        //mostramos info en response.jsp
        req.getRequestDispatcher("response.jsp").forward(req, resp);
    }
}
