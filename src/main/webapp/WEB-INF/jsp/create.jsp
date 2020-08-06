<%@ include file="common/header.jspf" %>
        <div class="container hero">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <h1 class="text-center">Create a new Prescription<br/></h1>
                    <form style="color: white;">
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="date" class="mr-3">Prescription Date: </label>
                            <input
                                    type="date"
                                    class="form-control"
                                    id="date"
                                    placeholder="Prescription date"
                            />
                        </div>
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="name" class="mr-3">Patient Name: </label>
                            <input
                                    type="text"
                                    class="form-control"
                                    id="name"
                                    placeholder="Patient Name"
                            />
                        </div>
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="age" class="mr-3">Patient age: </label>
                            <input
                                    type="text"
                                    class="form-control"
                                    id="age"
                                    placeholder="Patient age"
                            />
                        </div>
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="gender" class="mr-3">Patient gender: </label>
                            <select class="form-control">
                                <option>Male</option>
                                <option>Female</option>
                            </select>
                        </div>
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="Diagnosis" class="mr-3">Diagnosis: </label>
                            <textarea class="form-control" id="Diagnosis" rows="3"></textarea>
                        </div>
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="Medicines" class="mr-3">Medicines: </label>
                            <textarea class="form-control" id="Medicines" rows="3"></textarea>
                        </div>
                        <div class="form-group mx-sm-3 mb-2" style="width: 650px;">
                            <label for="date" class="mr-3">Next visit Date: </label>
                            <input
                                    type="date"
                                    class="form-control"
                                    id="date"
                                    placeholder="Next visit Date"
                            />
                        </div>

                        <button type="submit" class="btn btn-primary ml-3 mt-1">Create</button>
                    </form>
                </div>
            </div>
        </div>
<%@ include file="common/footer.jspf" %>