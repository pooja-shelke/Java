
            
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>        
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>
        <body>
            <header>              
                   <div>                        
                    </div>
                    <ul class="navbar-nav">                    
                    </ul>
                </nav>
            </header>
            <br>
            <div class="row">
               
                <div class="container">
                    <h3 class="text-center">List of Student</h3>
                    <hr>
                    <div class="container text-left">
                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Student</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Student_ID</th>
                                <th>Student_Name</th>
                                <th>Student_DOB</th>
                                <th>Student_DOJ</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.dob}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.doj}" />
                                    </td>
                                    <td><a href="edit?id=<c:out value='${user.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>
