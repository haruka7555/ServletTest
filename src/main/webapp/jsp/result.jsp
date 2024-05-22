<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="background-color: #f2f2f2; padding: 20px; border-radius: 5px;">
<p>氏名：<%=request.getAttribute("name") %></p>
<p>会社：<%=request.getAttribute("company") %></p>
<p>メールアドレス：<%=request.getAttribute("email") %></p>
<p>お問合せ内容：<%=request.getAttribute("comment") %></p>
<p>メルマガ種類：
<% String[] mels = (String[]) request.getAttribute("mels");
      if (mels != null) {
         for (String mel : mels) {
%>
			<%= mel %>
<%		 } 
	  }
%>

</body>
</html>