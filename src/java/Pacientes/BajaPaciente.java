package Pacientes;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BajaPaciente extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int numSeguro = Integer.parseInt(request.getParameter("numSeguro"));

        String sql = "DELETE FROM Paciente WHERE numero_seguro=" + numSeguro;
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection con = DriverManager.getConnection("jdbc:sqlserver://wtr6kjv2ao.database.windows.net:1433;databaseName=BDA", "BasesAvanzadas", "Elproyecto1")
            
            ;PreparedStatement ps = con.prepareStatement(sql)) {
                ps.executeUpdate();
            }
        } catch (ClassNotFoundException | SQLException ex) {
            // while(true){ Dance(); }
            ex.printStackTrace();
        }
        
        response.sendRedirect("Administracion.jsp");

    }

}
