<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>
        <div class="container hero">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <h1 class="text-center">Update Prescription<br/></h1>
                    <div id="errorMessage" class="alert-danger" style="width: 650px; margin-left: 10px; margin-bottom: 10px"></div>
                    <form:form action="${pageContext.request.contextPath}/update" modelAttribute="prescription" id="check"   style="color: white;">
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="name" class="mr-3">Patient Name: </label>
                            <form:input path="patientName"
                                    type="text"
                                    class="form-control"
                                    id="name"
                                    placeholder="Patient Name"
                            />
                        </div>
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="age" class="mr-3">Patient age: </label>
                            <form:input path="patientAge"
                                    type="text"
                                    class="form-control"
                                    id="age"
                                    placeholder="Patient age"
                            />
                        </div>
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="gender" class="mr-3">Patient gender: </label>
                            <form:select path="patientGender" class="form-control">
                                <form:option value="male" label="Male"/>
                                <form:option value="female" label="Female"/>
                            </form:select>
                        </div>
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="Diagnosis" class="mr-3">Diagnosis: </label>
                            <form:textarea path="diagnosis" class="form-control" id="Diagnosis" rows="3"></form:textarea>
                        </div>
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="Medicines" class="mr-3">Medicines: </label>
                            <form:textarea path="medicines" class="form-control" id="Medicines" rows="3"></form:textarea>
                        </div>
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="date" class="mr-3">Next visit Date: </label>
                            <form:input path="n_Date"
                                    type="date"
                                    class="form-control"
                                    id="date"
                                    placeholder="Next visit Date"
                            />
                        </div>
                        <form:hidden path="prescriptionId" value = "${prescriptionId}" />

                        <button type="submit" class="btn btn-primary ml-3 mt-1">Create</button>
                    </form:form>
                </div>
            </div>
        </div>
<%@ include file="common/footer.jspf" %>

<script>
    $("#check").submit(function() {
        var errorMassage = '';
        var fieldMissing = '';
        if ($('#name').val() == '') {
            fieldMissing += '<br> Name';
        }
        if ($('#age').val() == '') {
            fieldMissing += '<br> Age';
        }
        if ($('#Diagnosis').val() == '') {
            fieldMissing += '<br> Diagnosis';
        }
        if ($('#Medicines').val() == '') {
            fieldMissing += '<br> Medicines';
        }
        if (fieldMissing != '') {
            errorMassage +=
                '<p>The following field are missing: </p> ' + fieldMissing;
        }

        if ($.isNumeric($('#age').val()) == false) {
            errorMassage += '<p> age not numeric </p>';
        }
        if ($('#age').val() < 0) {
            errorMassage += "<p> Age can't be negative </br>";
        }
        if (errorMassage != '') {
            $('#errorMessage').html(errorMassage);
            $('#errorMessage').show();
        }
        if(errorMassage != ''){
            return false;
        }
    });

</script>