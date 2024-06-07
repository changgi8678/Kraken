<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>
	<table border=1 align='center'>
	
	
	 <tr> 
          <th colspan=3>Git Practice</th> 
          </tr> 
          <tr> 
          <th>Id</th>
          <th>Title</th>
          <th>Genre</th>
          
          </tr> 


	<c:forEach var="dto" items="${list }">
		<tr>
			<td>${dto.id}</td>
			<td>${dto.title}</td>
			<td>${dto.genre}</td>
			
		</tr>
	</c:forEach>
		
        
          <tr> 
          <td colspan=3> 
          <form action="delete.movies"> 
          <input type='text' placeholder='Delete ID' name='delet_id'/> 
         <button id='delete_btn'>Delete</button> 
          </form> 
          </td> 
          </tr> 
        
          <tr> 
          <td colspan=3> 
          <form action='update.movies'> 
          <input type='text' placeholder='Update ID' name='update_id'/> 
          <br> 
          <input type='text' placeholder='Update Title' name='update_title'/> 
          <br> 
          <input type='text' placeholder='Update Genre' name='update_genre'/> 
          <br> 
          <input type='text' placeholder='Update Movie_date' name='update_date'/> 
          <br> 
         <button id='update_btn'>Update</button> 
          </form> 
          </td> 
          </tr> 
          <tr> 
          <td colspan=3 align=center> 
          <button id='back_btn'>Back</button> 
          </td> 
          </tr> 
          </table> 
         
         	<script> 
          	document.getElementById('back_btn').onclick=function(){location.href='/index.html';} 
          </script> 
	
	
</body>
</html>