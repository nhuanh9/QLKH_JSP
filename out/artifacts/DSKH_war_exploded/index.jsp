<%@ page import="java.util.ArrayList" %>
<%@ page import="Customer.Customer" %><%--
  Created by IntelliJ IDEA.
  User: chopp
  Date: 7/13/2019
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Danh Sach Khach Hang</title>
    <style>
      table {
        border-collapse: collapse;
        border-style: solid ;
        box-shadow: 1px 1px 10px 10px #6983ff;
      }

      th, td {
        border-bottom: 1px solid black;
        width: 250px;
        text-align: center;
        line-height: 20px;
      }
    </style>
  </head>
  <body>
  <%
    ArrayList<Customer> listCustomers = new ArrayList<>();
    listCustomers.add(new Customer("Dao Nhu Anh", "10/04/1999", "TB", "a"));
    listCustomers.add(new Customer("Ho Thu Phuong", "17/02/1999", "Ha Tinh", "b"));
    listCustomers.add(new Customer("Nguyen Quang Huy", "21/08/1999", "Ninh Binh", "c"));
    pageContext.setAttribute("listCustomers", listCustomers);
  %>
  <center>
    <h1>Danh Sách Khách Hàng</h1>
    <table>
      <tr>
        <td>Name</td>
        <td>Birthday</td>
        <td>Address</td>
        <td>Image</td>
      </tr>
      <c:forEach var="customer" items="#{listCustomers}">
      <tr>
        <td><c:out value="${customer.name}"/></td>
        <td><c:out value="${customer.birthday}"/></td>
        <td><c:out value="${customer.address}"/></td>
        <td><c:out value="${customer.image}"/></td>
      </tr>
      </c:forEach>
    </table>
  </center>
  </body>
</html>
