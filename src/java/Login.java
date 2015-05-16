import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/Login.jsp");
        disp.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String usernameInput = request.getParameter("username");
        String passwordInput = request.getParameter("password");
        
        if(usernameInput.equals("admin") && passwordInput.equals("admin")){
            response.sendRedirect("./Administracion.jsp");
        }else{
            response.sendRedirect("./index.html");
        }
    }
}
