<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.entities.Note" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="com.helper.FactoryProvider" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Notes: Infinite-Note</title>
    <%@ include file="all_js_css.jsp" %>
</head>
<body>

    <div class="container">
        <%@ include file="navebar.jsp" %>
        <br>
        <h1 class="text-uppercase">All Notes:</h1>
        <div class="row">
            <div class="col-12">
                <%
                try (Session s = FactoryProvider.getFactory().openSession()) {
                    Query<Note> query = s.createQuery("FROM Note", Note.class);
                    List<Note> noteList = query.list();
                    for (Note note : noteList) {
                    	 // Format the date
                         SimpleDateFormat dateFormat = new SimpleDateFormat("EEEE/ MMMM dd/ yyyy /HH:mm:ss a");
                         String formattedDate = dateFormat.format(note.getAddedDate());
                %>
                <div class="card mt-3">
                    <img class="card-img-top m-4 mx-auto" style="max-width:100px;" src="img/notes.png" alt="Card image cap">
                    <div class="card-body px-5">
                        <h5 class="card-title"><%= note.getTitle() %></h5>
                        <p class="card-text">
                            <%= note.getContent() %>
                        </p>
                       <%--  <p><b class="text-info"><%= note.getAddedDate() %></b></p> --%>
                        <p><b class="text-info">Date: <%= formattedDate %></b></p>
                        <div class="container text-center mt-2 btn">
                            <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
                            <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
                        </div>
                    </div>
                </div>
                <%
                    }
                }
                catch(Exception e){
                	e.printStackTrace();
                }
               
                %>
    
            </div>
        </div>
    </div>

</body>
</html>
