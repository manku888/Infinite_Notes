 <%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Notes:Infinite-Note</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>


	<div class="container">
		<%@include file="navebar.jsp"%>
		<br>
		<h1 class="text-Uppercase">Search Results :</h1>
		<div class="row">

			<div class="col-12">


				<%
				String searchTerm = request.getParameter("searchTerm");
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("FROM Note WHERE title LIKE :searchTerm OR content LIKE :searchTerm");
				q.setParameter("searchTerm", "%" + searchTerm + "%");
				List<Note> list = q.list();
				
				if(list!=null && !list.isEmpty()){
					
					
				for (Note note : list)
				{
					// Format the date
                                        SimpleDateFormat dateFormat = new SimpleDateFormat("EEEE/ MMMM dd/ yyyy /HH:mm:ss a");
                                        String formattedDate = dateFormat.format(note.getAddedDate());
				%>
				<div class="card mt-3">
					<img class="card-img-top m-4 mx-auto" style="max-width:100px;" src="img/notes.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle() %></h5>
						<p class="card-text">
						<%=note.getContent() %>
						</p>
						 <p><b class="text-info">Date: <%= formattedDate %></b></p>
						<div class="container text-center mt-2  btn">
						<a href="DeleteServlet?note_id=<%= note.getId()%>" class="btn btn-danger" >Delete</a>
						<a href="edit.jsp?note_id=<%= note.getId()%>" class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>

				
				<%
				}
				}
			     else {
			    %>
			    <h2>No results found</h2>
			    <% 
			     }
				s.close();
				%>
				

			</div>
		</div>
	</div>
</body>
</html>
