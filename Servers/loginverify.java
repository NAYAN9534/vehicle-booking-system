
import java.sql.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

@WebServlet("/login_verify")
public class login_verify extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public login_verify() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mobile = req.getParameter("mob");
	     String password = req.getParameter("password");
	 	Connection conn = null;
        Statement stmt = null;
		String mobile = request.getparameter("mob");
		
		String password = request.getParameter("password");
		
     String sql = "SELECT * FROM login";
     stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
    
    if (sql.equals("select * from login where Mobile="+mobile+"and Password"+password))
        System.out.println("Login Success...!");
    else
        System.out.println("Login Failed...!");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
