import exceptions.InvalidParameterException;
import validation.Validation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.concurrent.CopyOnWriteArrayList;

@WebServlet(urlPatterns = "/checkArea")
public class AreaCheckServlet extends HttpServlet {
    public static CopyOnWriteArrayList<String[]> table = new CopyOnWriteArrayList<>();
    public Validation val = new Validation();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().setAttribute("table", table);
        try {
            Double[] xyr = val.checkParameter(req.getParameter("x"),req.getParameter("y"),req.getParameter("r"));
            long startTime = System.nanoTime();
            String time = LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd.MM.yyyy hh:mm:ss"));

            String[] answer = new String[]{xyr[0].toString(), xyr[1].toString(), xyr[2].toString(),
                    val.checkArea(xyr[0],xyr[1],xyr[2]), time, String.valueOf((System.nanoTime() - startTime) / 1000)};
            ((CopyOnWriteArrayList<String[]>) getServletContext().getAttribute("table")).add(answer);
            req.setAttribute("table", answer);
            getServletContext().getRequestDispatcher("/answer.jsp").forward(req, resp);
        } catch (InvalidParameterException e) {
            resp.sendError(403, e.getMessage());
        }
    }



}