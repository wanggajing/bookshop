<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="200" border="0" cellpadding="0" cellspacing="0" class="tb1">
        <tr>
          <td align="center" class="font3">图书类别</td>
        </tr>
     <s:iterator value="#session.catalogs" var="c">
        <tr>
           <td align="center" class="font1"><a href="#" class="font1"><s:property value="#c.catalogname"/></a></td>
       </tr>
     </s:iterator>
</table>
     
  
</body>
</html>