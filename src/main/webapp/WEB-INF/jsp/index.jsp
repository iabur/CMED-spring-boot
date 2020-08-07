<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="common/header.jspf" %>
<div class="container hero">
    <h1 class="text-center">Prescriptions<br/></h1>
    <div style="color: white;">
        <label for="from">From</label>
        <input type="date" id="from" name="from"/>
        <label for="to">to</label>
        <input type="date" id="to" name="to"/>
        <input type="submit" id="submit" value="search"/>
    </div>
    <table class="table mt-5" style="color: white;">

        <thead>
        <tr>
            <th>Patient Name</th>
            <th>Prescription Date</th>
            <th>Patient Age</th>
            <th>Patient Gender</th>
            <th>Diagnosis</th>
            <th>Medicines</th>
            <th>Next visit</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="prescription" items="${prescriptions}">
            <tr>
                <td>${prescription.patientName}</td>
                <td>${prescription.prescriptionDate}</td>
                <td>${prescription.patientAge}</td>
                <td>${prescription.patientGender}</td>
                <td>${prescription.diagnosis}</td>
                <td>${prescription.medicines}</td>
                <td>${prescription.nextVisitDate}</td>
                <td>
                    <a class="btn btn-primary btn-circle ml-1" href="${pageContext.request.contextPath}/update?id=${prescription.prescriptionId}" role="button"
                    ><i class="far fa-edit text-white"></i
                    ></a>
                </td>
                <td>
                    <a onclick="return confirm(' you want to delete?')" class="btn btn-danger btn-circle ml-1" href="${pageContext.request.contextPath}/delete?id=${prescription.prescriptionId}"
                    ><i class="fas fa-trash text-white"></i
                    ></a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<%@ include file="common/footer.jspf" %>

//replace the url with query text for searching
<script>
    $('#submit').click(function (e) {
        e.preventDefault();
        window.location = "show-all?start="+$('#from').val()+"&end="+$('#to').val();
    })

</script>