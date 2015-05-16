package Pacientes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AltaPaciente extends HttpServlet {
    
    String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        int socialNumber = Integer.parseInt(request.getParameter("socialNumber"));
        String escolaridad = request.getParameter("escolaridad");
        String grupoEtnico = request.getParameter("grupoEtnico");
        String religion = request.getParameter("religion");
        
        String sql = "INSERT INTO Paciente (numero_seguro, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, domicilio, telefono, sexo, numero_de_seguro, escolaridad, grupo_etnico, religion) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?);";
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection con = DriverManager.getConnection("jdbc:sqlserver://wtr6kjv2ao.database.windows.net:1433;databaseName=BDA", "BasesAvanzadas", "Elproyecto1")
            
            ;PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setInt(1, socialNumber);
                ps.setString(2, nombrePila);
                ps.setString(3, apellidoPaterno);
                ps.setString(4, apellidoMaterno);
                ps.setString(5, fechaNacimiento);
                ps.setString(6, domicilio);
                ps.setInt(7, telefonoso);
                ps.setString(8, sexo);
                ps.setInt(9, socialNumber);
                ps.setString(10, escolaridad);
                ps.setString(11, grupoEtnico);
                ps.setString(12, religion);
                
                ps.executeUpdate();
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        }
        response.sendRedirect("Administracion.jsp");
    }
}
