package Medicos;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CambiosMedicos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int cedula = Integer.parseInt(request.getParameter("numcedula"));
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombrePila = request.getParameter("nombrePila");
        String apellidoPaterno = request.getParameter("apellidoPaterno");
        String apellidoMaterno = request.getParameter("apellidoMaterno");
        int telefonoso = Integer.parseInt(request.getParameter("telefonoso"));
        String fechaNacimiento = request.getParameter("fechaNacimiento");
        String direccion = request.getParameter("direccion");
        String perfil = request.getParameter("perfil");
        String especialidad = request.getParameter("especialidad");
        //La cedula no se puede cambiar, cuidado
        
    }
}
