package Medicos;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AltaMedico extends HttpServlet {

    String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Hacer cosas aqui
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
        int cedula = Integer.parseInt(request.getParameter("cedula"));
        String perfil = request.getParameter("perfil");
        String especialidad = request.getParameter("especialidad");
        
        String sql = "INSERT INTO Profesional_Salud (id, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, cedula, direccion, telefono, perfil, especialidad) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection con = DriverManager.getConnection("jdbc:sqlserver://wtr6kjv2ao.database.windows.net:1433;databaseName=BDA", "BasesAvanzadas", "Elproyecto1")
            
            ;PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setInt(1, (int) (Math.random() * 10));
                ps.setString(2, nombrePila);
                ps.setString(3, apellidoPaterno);
                ps.setString(4, apellidoMaterno);
                ps.setString(5, fechaNacimiento);
                ps.setInt(6, cedula);
                ps.setString(7, direccion);
                ps.setInt(8, telefonoso);
                ps.setString(9, perfil);
                ps.setString(10, especialidad);
                ps.executeUpdate();
            }
        } catch (ClassNotFoundException | SQLException ex) {
            // while(true){ Dance(); }
            ex.printStackTrace();
        }
        response.sendRedirect("Administracion.jsp");
    }
}
