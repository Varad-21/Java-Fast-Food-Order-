<%@page import="com.fastfood.DbConnect"%>
<%@page import="java.sql.*"%>
<jsp:include flush="true" page="navbar1.jsp"/>
<%@include file="allCss.jsp" %>
<style>
    @media print{
        .header,.h_menu,.footer,.btn{
            display: none !important;
        }
    }
</style>
<button onclick="print()" class="btn btn-secondary btn-sm float-right m-2">Print Bill</button>
<div class="text-center mt-5">
    <h3>Online Cafeteria</h3>
    <h4>C-sangli</h4>
    <h4 class="border-bottom border-dark pb-2">Sangli, Maharashtra,(India)</h4>
    <h4>Invoice no. <%= session.getAttribute("order_id")%> </h4>
</div>
<%
    Connection con = DbConnect.Connect();
    ResultSet rs = con.createStatement().executeQuery("SELECT * FROM order_details inner join products on products.prodid=order_details.prodid where order_id="
            + session.getAttribute("order_id"));
    ResultSet rs2 = con.createStatement().executeQuery("SELECT userid,order_status from orders "
            + "where order_id=" + session.getAttribute("order_id"));
    rs2.next();
    ResultSet rs3=con.createStatement()
            .executeQuery("SELECT * from cust_address where userid='"+rs2.getString(1)+"'");
    rs3.next();
%>
<div class="container mt-1">
<div class="row">
    <div class="offset-7 col-sm-5">
    <table class="table table-sm table-borderless">
    <tr>
        <th>Customer Name</th>
        <th class="text-right font-weight-bold"><%= rs3.getString("name") %></th>
    </tr>
    <tr>
        <th>Address</th>
        <th class="text-right">
            <%= rs3.getString("address") %><br>            
            <%= rs3.getString("city") %>,<%= rs3.getString("state") %><br>
            Pin code-<%= rs3.getString("pin") %><br>
        </th>
    </tr>
</table>
        
    </div>
</div>

<table class="table table-bordered table-striped table-sm">
    <thead class="font-weight-bold table-primary">
        <tr>
            <th>Sr. No.</th>
            <th>Product</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Amount</th>                    
        </tr>
    </thead>
    <tbody>
        <%
            int counter = 1, total = 0;
            while (rs.next()) {
        %>
        <tr>
            <td><%= counter%></td>  
            <td><%= rs.getString("pname")%></td>   
            <td>&#8377; <%= rs.getString("disc_price")%></td> 
            <td><%= rs.getString("qty")%></td>  
            <td>&#8377; <%= rs.getInt("qty") * rs.getInt("disc_price")%></td>  

        </tr>
        <%
                counter++;
                total += rs.getInt("qty") * rs.getInt("disc_price");
            }
            con.close();
        %>
    </tbody>
    <tfoot class="font-weight-bold">
        <tr>
            <th colspan="4" class="text-right">Total Bill Amount</th>
            <th>&#8377; <%= total%></th>
        </tr>
        <tr>
            <th colspan="4" class="text-right">GST @ 15%</th>
            <th>&#8377; <%= total*0.15 %></th>
        </tr>
        <tr>
            <th colspan="4" class="text-right">Net Bill Amount</th>
            <th>&#8377; <%= total+total*0.15 %></th>
        </tr>
    </tfoot>
</table>
  <div class="sorry" id="ssorry" style=" position: absolute;
    top: 120%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 250px;
    padding: 20px;
    /*padding-right: 40px;*/
    background: #ffffff;
    box-shadow: 2px 2px 5px 5px rgba(0, 0, 0, 0.15);
    border-radius: 10px;">
       <div class="img">
      
         <img src="../static/images/qr.jpg" alt="img" style="width:150px; height:150px">
         <h1>Payment of Rs &#8377; <%= total+total*0.15  %></h1>
       </div>
       <div class="sorry-para">
       <a href="thankyou.jsp"> <input type="submit" value="Payment" class="btn btn-primary float-right mb-2"></a>
            
         
       </div>

</div>