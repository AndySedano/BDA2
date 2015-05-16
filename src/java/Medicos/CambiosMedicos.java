package Medicos;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CambiosMedicos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String sql = "SELECT * FROM Profesional_Salud WHERE cedula = ?;";
        
        int cedula = Integer.parseInt(request.getParameter("numcedula"));
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection con = DriverManager.getConnection("jdbc:sqlserver://wtr6kjv2ao.database.windows.net:1433;databaseName=BDA", "BasesAvanzadas", "Elproyecto1")
            
            ;PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setInt(1, cedula);
                ResultSet rs = ps.executeQuery();
                rs.next();
                
                
                request.setAttribute("nombre", rs.getString("nombre"));
                request.setAttribute("apellido_paterno", rs.getString("apellido_paterno"));
                request.setAttribute("apellido_materno", rs.getString("apellido_materno"));
                request.setAttribute("fecha_nacimiento", rs.getDate("fecha_nacimiento").toString());
                request.setAttribute("direccion", rs.getString("direccion"));
                request.setAttribute("telefono", rs.getInt("telefono"));
                request.setAttribute("perfil", rs.getString("perfil"));
                request.setAttribute("especialidad", rs.getString("especialidad"));
                request.setAttribute("cedula", rs.getInt("cedula"));
                RequestDispatcher disp = getServletContext().getRequestDispatcher("/Cambios.jsp");
                disp.include(request, response);
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            // while(true){ Dance(); }
            ex.printStackTrace();
        }
        
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
        int cedula = Integer.parseInt(request.getParameter("cedula"));
        
        String sql = "UPDATE Profesional_Salud SET nombre = ?, apellido_paterno = ?, apellido_materno = ?,"
                + " fecha_nacimiento = ?, direccion = ?, telefono = ?, perfil = ?, especialidad = ? "
                + "where cedula = ?;";
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection con = DriverManager.getConnection("jdbc:sqlserver://wtr6kjv2ao.database.windows.net:1433;databaseName=BDA", "BasesAvanzadas", "Elproyecto1")
            
            ;PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1,nombrePila);
                ps.setString(2,apellidoPaterno);
                ps.setString(3,apellidoMaterno);
                ps.setString(4,fechaNacimiento);
                ps.setString(5,direccion);
                ps.setInt(6,telefonoso);
                ps.setString(7,perfil);
                ps.setString(8,especialidad);
                ps.setInt(9,cedula);
                
                ps.executeUpdate();
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            // while(true){ Dance(); }
            ex.printStackTrace();
        }
        response.sendRedirect("Administracion.jsp");
        
    }
}
