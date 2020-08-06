<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="common/header.jspf" %>
        <div class="container hero">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <h1 class="text-center">Prescriptions count<br/></h1>
                    <table class="table mt-5" style="color: white;">
                        <thead>
                        <tr>
                            <th>Date</th>
                            <th>Number of Prescription</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="prescription" items="${prescriptionCount}">
                        <tr>
                            <td>${prescription.date}</td>
                            <td>${prescription.prescriptionNo}</td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
<%@ include file="common/footer.jspf" %>