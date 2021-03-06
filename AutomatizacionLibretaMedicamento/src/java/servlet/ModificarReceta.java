
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dto.RecetaDto;
import java.sql.Date;
/**
 *
 * @author Sergio
 */
public class ModificarReceta extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
             RecetaDto dto = new RecetaDto();
            dto.setId_receta(Integer.valueOf(request.getParameter("txtReceta".trim())));
            dto.setFecha_emision(Date.valueOf(request.getParameter("txtFechaEmi")));
            dto.setIndicaciones(request.getParameter("txtIndicaciones".trim()));
            dto.setCodigo(Integer.valueOf(request.getParameter("txtCodigo")));
            String mensaje="";
            if (new dao.RecetaDaoImp().modificar(dto)) {

                mensaje = "Receta modificada";
            } else {

                mensaje = "Receta no modificada";
            }
            request.setAttribute("mensaje", mensaje);
            request.setAttribute("lista", new dao.RecetaDaoImp().listar());

            request.getRequestDispatcher("Doctor/ModificarReceta.jsp").forward(request, response);
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
