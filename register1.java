///*
// * To change this template, choose Tools | Templates
// * and open the template in the editor.
// */
//package Db_register;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.Connection;
//import java.sql.Statement;
//import java.util.Random;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import databaseconnection.databasecon;
//import javax.servlet.http.HttpSession;
//
///**
// *
// * @author java3
// */
//
//public class register1 extends HttpServlet {
//
//    /**
//     * Processes requests for both HTTP
//     * <code>GET</code> and
//     * <code>POST</code> methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//   public void doGet(HttpServletRequest request, HttpServletResponse response) 
//throws IOException{ 
//        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//       Connection con = null;
//    Statement st = null;
//    String username = request.getParameter("username"); 
//    String password = request.getParameter("password");
//    String location = request.getParameter("location");
//     String gender = request.getParameter("gender");
//    String email = request.getParameter("email");
//    String category = request.getParameter("category");
//    String timings = request.getParameter("timings");
//    String fees = request.getParameter("fees"); 
//   
//    String mobile = request.getParameter("mobile");
//    
//    try {
//    Random s = new Random();
//    int a = s.nextInt(10000 - 5000) +25000 ;
//    System.out.print(a);
//   
//        con = databasecon.getconnection();
//        st = con.createStatement();
//        int i = st.executeUpdate("insert into doctor values ('" + username + "','" + password + "','" + location + "','" + gender + "','" + email + "','" + category + "','"+timings+"','"+fees+"','"+mobile+"')");
//        if (i != 0) {
//            
//           
//            response.sendRedirect("doctor.jsp?m1=success");
//        } else {
//            response.sendRedirect("docotrreg.jsp?m2=failed");
//        }
//    } catch (Exception ex) {
//    	 response.sendRedirect("docotrreg.jsp?m3=failed");
//    }
//    }}