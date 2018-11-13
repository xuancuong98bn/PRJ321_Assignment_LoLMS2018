<%-- 
    Document   : HomePage
    Created on : Nov 12, 2018, 3:00:56 AM
    Author     : MTC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>${team.getName()}</title>
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
                            <h6 class="mb-0 col-lg-4">Coach</h6><br>
                        <div class="col-lg-12"><a href="#" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                                    <div class="row">
                                        <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left"><strong class="h5 mb-0"><sup class="smaller text-gray font-weight-normal"></sup></strong><img src="img/avatar-1.jpg" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                                            <h6 class="mb-0">${team.getCoachName()}</h6>
                                        </div>
                                        <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                            <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">Coach</div>
                                            <p class="mb-0 mt-3 mt-lg-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit..</p>
                                        </div>
                                    </div></a></div>
                        <h6 class="mb-0 col-lg-4">Member of Team</h6><br>
                            <c:forEach begin="0" end="5" var="p">
                            <div class="col-lg-12"><a href="#" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                                    <div class="row">
                                        <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left"><strong class="h5 mb-0">${p+1}<sup class="smaller text-gray font-weight-normal"></sup></strong><img src="img/avatar-1.jpg" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                                            <h6 class="mb-0">${listPlayerByTeam.get(p).getName()}</h6>
                                        </div>
                                        <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                            <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">${listPlayerByTeam.get(p).getPosition()}</div>
                                            <p class="mb-0 mt-3 mt-lg-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit..</p>
                                        </div>
                                    </div></a></div>
                            </c:forEach>
                        </div>
                    </section>
                </div>
                <%@include file="Footer.jsp" %>
            </div>
        </div>
        <!-- JavaScript files-->
        <%@include file="JSImport.jsp" %>
    </body>
</html>
