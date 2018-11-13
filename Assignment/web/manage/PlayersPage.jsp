<%-- 
    Document   : TeamsPage
    Created on : Nov 12, 2018, 5:26:11 PM
    Author     : MTC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Players Page</title>
        <%@include file="Header.jsp" %>
    </head>
    <body>
        <!-- navbar-->
        <%@include file="Navbar.jsp" %>
        <div class="d-flex align-items-stretch">
            <%@include file="Slidebar.jsp" %>
            <div class="page-holder w-100 d-flex flex-wrap">
                <div class="container-fluid px-xl-5">
                    <section class="py-5">
                        <div class="row">
                            <div class="col-lg-12 mb-4">
                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="text-uppercase mb-0">List Teams</h5>
                                    </div>
                                    <div class="card-body">
                                        <table class="table card-text table-hover">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Name</th>
                                                    <th>Team</th>
                                                    <th>Position</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="t" items="${listPlayers}">
                                                    <tr onclick="detail(${t.getTeamID()})">
                                                        <th scope="row">${t.getID()}</th>
                                                        <td>${t.getName()}</td>
                                                        <td>${mapTeams.get(t.getTeamID())}</td>
                                                        <td>${t.getPosition()}</td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <%@include file="Footer.jsp" %>
            </div>
        </div>
        <!-- JavaScript files-->
        <script>
            function detail(x) {
                window.location.href = "TeamDetails?ID=" + x;
            }
        </script>
        <%@include file="JSImport.jsp" %>
    </body>
</html>