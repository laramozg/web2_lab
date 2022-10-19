import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/controller")
public class ControllerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (isClearRequest(req)) {
            getServletContext().getRequestDispatcher("/clear").forward(req, resp);
        } else if (req.getQueryString() == null) {
            getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        } else {
            getServletContext().getRequestDispatcher("/checkArea").forward(req, resp);
        }
    }

    private boolean isClearRequest(HttpServletRequest req) {
        String paramValue = req.getParameter("clear");
        return (paramValue != null);
    }

}