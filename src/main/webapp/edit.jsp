

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@include file="all_js_css.jsp"%>
<body>
	<div class="container">
		<%@include file="navebar.jsp"%>
		<h1>Please update your note</h1>
		<br>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>


		<!-- this is add from -->

		<form action="UppdateServlet" method="post">
			<input value="<%=note.getId()%>" name="noteId" type="hidden" />
			<div class="form-group">
				<label for="title">Note Title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here"
					value="<%=note.getTitle()%>" />

			</div>


			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content"
					placeholder="Enter Your Content Here" class="form-control"
					style="height: 200px;"><%=note.getContent()%>
     </textarea>

			</div>


			<div class="container text-center">
			<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<strong>please Wait!</strong> Are You Shur Update This Note Content
					<button type="button" class="close" data-dismiss="alert"aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<br>
				<a class="btn btn-secondary" href="all_notes.jsp" role="button">Back</a>
				<button type="submit" class="btn btn-success">Save your Note</button>
				
				
			</div>
		</form>



	</div>
</body>
</html>