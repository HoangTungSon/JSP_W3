<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!java.util.HashMap<String, String> dic = new java.util.HashMap<>();%>

	<%
		dic.put("hello", "Xin Chao");
		dic.put("how", "The Nao");
		dic.put("book", "Quyen Vo");
		dic.put("computer", "May Tinh");

		String search = request.getParameter("txtSearch");

		String result = dic.get(search);
		if (result != null) {
			out.println("Word: " + search);
			out.println("Result: " + result);
		} else {
			out.println("Not found");
		}
	%>
</body>
</html>