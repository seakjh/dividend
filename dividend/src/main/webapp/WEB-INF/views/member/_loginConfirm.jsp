<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE>
<html>
    <head>
    <meta charset="UTF-8">
    </head>
<body>
	<%
		String member_id = "";
		String member_password = "";
		String member_role = "";
		
		if(request.getParameter("member_id") == ""){  %>
		     <script>
				 alert("아이디를 입력하세요");
				 document.location.href='./loginPage.jsp' <!-- 경로 지정 필요 -->
			 </script>
		    <% }
		else if(request.getParameter("member_password") == ""){ %>
		     <script>
				 alert("비밀번호를 입력하세요");
				 document.location.href='./loginPage.jsp' <!-- 경로 지정 필요 -->
			 </script>
		    <% }
		else{
			member_id = request.getParameter("member_id"); //ID값 가져옴
			member_password = request.getParameter("member_password"); //PW값 가져옴
		
			Connection conn = null;
			String driverName="oracle.jdbc.driver.OracleDriver";
			Class.forName(driverName);
			String serverName = "localhost";
			String serverPort = "1521";
			String sid = "orcl";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String memberName = "scott";
			String memberPassword = "tiger";
			
			conn = DriverManager.getConnection(url, memberName, memberPassword);
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("select * from MEMBER_ID where ID = '" + member_id + 
			"' AND MEMBER_PASSWORD ='" + member_password + "'");
			Boolean check = false;
			
			while(rs.next()) 
		    {
				String id = rs.getString("MEMBER_ID");
		    	String password = rs.getString("MEMBER_PASSWORD"); 
		    	session.setAttribute("member_id", member_id); 
				session.setAttribute("member_password", member_password); 
				check = true;
		    }
			
			if(check){ 
		    %> 
		 			 <script>
		  			 	document.location.href='./board_list.jsp' <!-- 경로 지정 필요 -->
		 			 </script> <%
		    	        rs.close();
		    	    	conn.close();
				} else { 
		    %>
		    <script>
				alert("ID 또는 PW를 잘못 입력했습니다.");
				document.location.href='./loginPage.jsp' <!-- 경로 지정 필요 -->
		 	</script>
			<% }
	} %>
</html>