package net.javaguides.textilemanagement.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.jsp.jstl.core.Config;
import jakarta.servlet.jsp.jstl.core.LoopTagStatus;

import jakarta.servlet.jsp.jstl.sql.Result;
import jakarta.servlet.jsp.jstl.sql.ResultSupport;
import jakarta.servlet.jsp.jstl.sql.SQLExecutionTag;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



import net.javaguides.textilemanagement.dao.TextileDAO;
import net.javaguides.textilemanagement.model.Textile;


import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfDocument;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


public class TextileServlet extends HttpServlet {
	public TextileServlet()
	{
		System.out.println("UserServlet entered");
	}
    private static final long serialVersionUID = 1L;
    private TextileDAO userDAO;

    public void init() {
        userDAO = new TextileDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	System.out.println("Entered Servlet");
        String action = request.getRequestURI().substring(request.getContextPath().length());
        System.out.println("is" +action);
        try {
            switch (action) {              
                case "/textile/insertYarn":
                    insertYarn(request, response);
                    break;
                case "/textile/insertWarp":
                    insertWarp(request, response);
                    break;
                case "/textile/insertMeter":
                    insertMeter(request, response);
                    break;
                case "/textile/updateYarn":
                    updateYarn(request, response);
                    break;
                case "/textile/updateWarp":
                    updateWarp(request, response);
                    break;
                case "/textile/updateMeter":
                    updateMeter(request, response);
                    break;
                case "/textile/month_Statement":
                    month_statement(request, response);
                    break;
                case "/textile/display":
                    display(request, response);
                    break;
                case "/textile/PdfGeneratorServlet":
                	pdf(request,response);
                	break;
                case "/textile/gst":
				try {
					gst(request,response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
                	break;
                default:
                {
                	 response.sendRedirect(request.getContextPath() + "/main.jsp");
                	break;
                }
//                    listUser(request, response);
            }
        } catch (SQLException ex) {
        	System.out.println("Error");
            throw new ServletException(ex);
        }
    }
    
    private void gst(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, DocumentException {
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=\"GST_Invoice.pdf\"");
        try
        {
        	 
        	
        	 
        	Document document = new Document(PageSize.A4);
        	PdfWriter.getInstance(document, response.getOutputStream());
        	document.open();
        	
        	float titlewidth[]= {285f,435f};
        	
        	PdfPTable table=new PdfPTable(titlewidth);
        	table.setWidthPercentage(100); 
        	
        	table.addCell(new PdfPCell(new Phrase("Invoice ")));
        	
        	PdfPTable table2=new PdfPTable(new float[]{285f/2,435f/2});
        	table2.setWidthPercentage(100); 
        	table2.addCell(new PdfPCell(new Phrase("Invoice No")));
        	table2.addCell(new PdfPCell(new Phrase("01")));
        	table2.addCell(new PdfPCell(new Phrase("Date")));
        	table2.addCell(new PdfPCell(new Phrase("01/01/2024")));
        	table.addCell(table2);
        	
        	PdfPTable Addresstable=new PdfPTable(new float[]{285f,285f});
        	Addresstable.setWidthPercentage(100); 
        	PdfPTable Sellertable=new PdfPTable(1);
        	Sellertable.setWidthPercentage(100); 
        	PdfPTable Buytable=new PdfPTable(1);
        	Buytable.setWidthPercentage(100); 
        	Sellertable.addCell(new PdfPCell(new Phrase("From ABC TEXTILES")));
        	Sellertable.addCell(new PdfPCell(new Phrase("ABC TEXTILES,Tamil Nadu, India")));
        	Sellertable.addCell(new PdfPCell(new Phrase("GST IN : 33AA645DD765JBHJV7")));
        	Buytable.addCell(new PdfPCell(new Phrase("TO "+request.getParameter("buyName"))));
        	Buytable.addCell(new PdfPCell(new Phrase("   "+request.getParameter("To_address"))));
        	Buytable.addCell(new PdfPCell(new Phrase("   GST IN : "+request.getParameter("GSTnum"))));
        	Addresstable.addCell(Sellertable);
        	Addresstable.addCell(Buytable);
        	
        	PdfPTable Producttable = new PdfPTable(new float[]{20f, 150f, 50f, 50f, 50f});
        	Producttable.setWidthPercentage(100);
        	Producttable.setTotalWidth(new float[]{50f, 200f, 100f, 100f, 100f}); 
        

        
        	String[] columnHeadings = {"S No", "Particulars", "Total Meter", "Rate", "Amount"};
            for (String heading : columnHeadings) {
            PdfPCell headingCell = new PdfPCell(new Phrase(heading));
            Producttable.addCell(headingCell);
            }
            
            for (int i = 0; i < 5; i++) {
                PdfPCell emptyCell = new PdfPCell();
                emptyCell.setFixedHeight(500f); 
                Producttable.addCell(emptyCell);
            }

            PdfPTable gsttable=new PdfPTable(new float[]{285f,285f});
            gsttable.setWidthPercentage(100);
            
        	PdfPTable emptytable=new PdfPTable(1);
        	emptytable.setWidthPercentage(100); 
        	
        	PdfPTable subtable=new PdfPTable(1);
        	subtable.setWidthPercentage(100);
        	subtable.addCell(new PdfPCell(new Phrase("Assessable value = "+request.getParameter("totalAmount"))));
        	subtable.addCell(new PdfPCell(new Phrase("SGST       2.5%    = "+request.getParameter("totalCGST"))));
        	subtable.addCell(new PdfPCell(new Phrase("CGST       2.5%    = "+request.getParameter("totalSCST"))));
        	subtable.addCell(new PdfPCell(new Phrase("Round Off             =0.00")));
        	subtable.addCell(new PdfPCell(new Phrase("Gross Amount       ="+request.getParameter("grandTotal"))));
        	gsttable.addCell(emptytable);
        	gsttable.addCell(subtable);
        	
        	PdfPTable finaltable=new PdfPTable(new float[]{400f,100f});
        	finaltable.setWidthPercentage(100);
        	PdfPTable rupeestable=new PdfPTable(1);
        	rupeestable.setWidthPercentage(100);
        	rupeestable.addCell(new Phrase("Rupees-Two lakhs forty eight thousand six hundred and sixt nine only"));
        	PdfPTable signaturetable=new PdfPTable(1);
        	signaturetable.setWidthPercentage(100);
        	signaturetable.addCell(new Phrase("For ABC WEAVING"));
        	finaltable.addCell(rupeestable);
        	finaltable.addCell(signaturetable);
        	document.add(table);
        	document.add(Addresstable);
        	document.add(Producttable);
        	document.add(gsttable);
        	document.add(finaltable);        	
        	
        	document.close();
        }
        catch (DocumentException e) {
            e.printStackTrace();
        }
        } 
    

    
    
    private void pdf(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=\"table.pdf\"");
        System.out.println("pdf");
        List<List<String>> list = userDAO.display();
        try {
           
            Document document = new Document(PageSize.A4.rotate());
            PdfWriter.getInstance(document, response.getOutputStream());
            document.open();

        
            PdfPTable headerTable = new PdfPTable(1);
            headerTable.setWidthPercentage(100);
            PdfPCell headerCell = new PdfPCell(new Phrase("Textile Management"));
            headerCell.setBorder(Rectangle.NO_BORDER);
            headerCell.setHorizontalAlignment(Element.ALIGN_CENTER);
            headerTable.addCell(headerCell);
            document.add(headerTable);

           
            float[] columnWidths = {10f, 10f, 20f, 15f, 15f, 15f, 15f, 15f, 15f, 15f, 15f, 15f, 15f, 15f, 15f, 15f, 15f, 15f}; 
            PdfPTable pdfTable = new PdfPTable(columnWidths);
            pdfTable.setWidthPercentage(100); 
            String[] columnHeadings = {"Transaction ID", "Date", "Details", "Brand Name", "Quality", "In Yarn kg", "Out Yarn kg", 
                                       "Balance Yarn kg", "In Warp meter", "Out Warp meter", "Balance Warp meter", "Debit", 
                                       "Credit", "Balance", "CGST", "SGST", "Final Amount", "Total"};
            for (String heading : columnHeadings) {
                PdfPCell headingCell = new PdfPCell(new Phrase(heading));
                pdfTable.addCell(headingCell);
            }

           
            for (List<String> row : list) {
                for (String cell : row) {
                    PdfPCell dataCell = new PdfPCell(new Phrase(cell != null ? cell : "-"));
                    pdfTable.addCell(dataCell);
                }
            }

            document.add(pdfTable);
            document.close();
            response.sendRedirect("list");
        } catch (DocumentException e) {
            e.printStackTrace();
        }
    }




    private void insertYarn(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String date = request.getParameter("date");
        System.out.println("Date is"+date);
        String yarn_details = request.getParameter("yarn_details");
        String brand_name = request.getParameter("brand_name");
        String quality = request.getParameter("quality");
        double kg =Double.parseDouble(request.getParameter("kg"));
        Textile newUser = new Textile(date,yarn_details,brand_name,quality,kg);
        userDAO.insertTextile_Yarn(newUser);
        response.sendRedirect("list");
    }

    private void insertWarp(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException 
    {
    	        String date = request.getParameter("date");
    	        
    	        String warp_details = request.getParameter("warp_details");
    	
    	        double warp_meter =Double.parseDouble(request.getParameter("warp_meter"));
    	        Textile newUser = new Textile(date,warp_details,warp_meter);
    	        userDAO.insertTextile_Warp(newUser);
    	        response.sendRedirect("list");
     }
    
    private void insertMeter(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException 
    {
    	        String date = request.getParameter("date");
    	        
    	        String meter_details = request.getParameter("meter_details");
    	
    	        double meter =Double.parseDouble(request.getParameter("meter"));
    	        double pic =Double.parseDouble(request.getParameter("pic"));
    	        double pic_rate =Double.parseDouble(request.getParameter("pic_rate"));
    	        Textile newUser = new Textile(date,meter_details,meter,pic,pic_rate);
    	        userDAO.insertMeter(newUser);
    	        response.sendRedirect("list");
     }
    
    private void updateYarn(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException 
    {
    	       int t_id = Integer.parseInt(request.getParameter("t_id"));
    	        
    	       
    	        double update_kg =Double.parseDouble(request.getParameter("kg"));
    	        
    	        Textile newUser = new Textile(t_id,update_kg);
    	        userDAO.update_Yarn(newUser);
    	        response.sendRedirect("list");
     }
    
    private void updateWarp(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException 
    {
    	       int t_id_warp = Integer.parseInt(request.getParameter("t_id"));
    	        
    	       
    	        double update_warp =Double.parseDouble(request.getParameter("update_meter"));
    	        
    	        Textile newUser = new Textile(t_id_warp,update_warp,"Updating Warp");
    	        userDAO.update_Warp(newUser);
    	        response.sendRedirect("list");
     }
    private void updateMeter(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException 
    {
    	       int t_id_meter = Integer.parseInt(request.getParameter("t_id"));
    	        
    	       
    	        double update_meter =Double.parseDouble(request.getParameter("update_meter"));
    	        double update_pic =Double.parseDouble(request.getParameter("update_pic"));
    	        double update_pic_rate =Double.parseDouble(request.getParameter("update_pic_rate"));
    	        
    	        
    	        Textile newUser = new Textile(t_id_meter,update_meter,update_pic,update_pic_rate);
    	        TextileDAO.update_Meter(newUser);
    	        response.sendRedirect("list");
     }
    private void month_statement(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException ,ServletException
    {
    	       
              String start_date = request.getParameter("start_date");  
              String end_date = request.getParameter("end_date");  
              
    	        Textile newUser = new Textile(start_date,end_date);
    	        List<Double> list=userDAO.monthly(newUser);
    	        request.setAttribute("list", list);
    	        System.out.println(list.get(0));
    	        RequestDispatcher dispatcher = request.getRequestDispatcher("/monthStatement.jsp");
    	        dispatcher.forward(request, response);
     }
    
    private void display(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException ,ServletException
    {
               
    	List<List<String>> list = userDAO.display();
        request.setAttribute("list", list);
        System.out.println("List: " + list);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/display.jsp");
        dispatcher.forward(request, response);
     }
    

}