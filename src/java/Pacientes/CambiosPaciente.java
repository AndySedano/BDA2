package Pacientes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CambiosPaciente extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int numSeguro = Integer.parseInt(request.getParameter("numSeguro"));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombrePila = request.getParameter("nombrePila");
        String apellidoPaterno = request.getParameter("apellidoPaterno");
        String apellidoMaterno = request.getParameter("apellidoMaterno");
        int telefonoso = Integer.parseInt(request.getParameter("telefonoso"));
        String fechaNacimiento = request.getParameter("fechaNacimiento");
        String domicilio = request.getParameter("domicilio");
        String sexo = request.getParameter("snu_snu");
        String escolaridad = request.getParameter("escolaridad");
        String grupoEtnico = request.getParameter("grupoEtnico");
        String religion = request.getParameter("religion");
        //El numero de seuridad social no debe cambiar, cuidado, peligro
        
    }
}
