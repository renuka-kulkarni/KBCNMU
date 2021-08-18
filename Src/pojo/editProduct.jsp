<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import ="dao.ProductMangementDao" %>
<%@page import ="pojo.Product" %>
<%@page import ="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product</title>
</head>
<body>
    <%@ include file="header.jsp" %>
    <%
         String productId = request.getParameter("prodId");
         Product product =ProductMangementDao.getProductById(productId);
         
     %>
     <div align="center">
     <form action="processEditProduct.jsp" method="post">
       <table class="productTable">
        <thead>
         <tr>
             <th colspan="2">
                Product Details
              </th>
          </tr>
         </thead>
         <tr>
             <td>Product ID</td>
             <td><input type="text" name="prodId" size="20" 
             value="<%=productId%>" class="productTextfield" readonly/></td>
         </tr>
         <tr>
             <td>Product Name</td>
             <td><input type="text" name="prodName" size="20" 
             value="<%=product.getProductName()%>" class="productTextfield"/></td>
          </tr>  
          <tr>
             <td>Category</td>
             <td><input type="text" name="prodCategory" size="20" 
             value="<%=product.getProductCategory()%>" class="productTextfield"/></td>
          </tr> 
          <tr>
             <td>Price</td>
             <td><input type="text" name="prodPrice" size="20" 
             value="<%=product.getProductPrice()%>" class="productTextfield"/></td>
          </tr>       
       </table>
         <button class="actionBtn" style="margin-top:10px">Save</button>
     </form>
     </div>
</body>
</html>