<%@ include file="common/header.jspf" %>
        <div class="container hero">
            <h1 class="text-center">Prescriptions<br/></h1>
            <form style="color: white;">
                <label for="from">From</label>
                <input type="text" id="from" name="from"/>
                <label for="to">to</label>
                <input type="text" id="to" name="to"/>
                <input type="submit" value="search"/>
            </form>
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
                <tr>
                    <td>Bangladesh</td>
                    <td><img src alt/></td>
                    <td>Active</td>
                    <td>
                        <a class="btn btn-primary btn-circle ml-1"
                        ><i class="far fa-edit text-white"></i
                        ></a>
                    </td>
                    <td>
                        <a class="btn btn-danger btn-circle ml-1"
                        ><i class="fas fa-trash text-white"></i
                        ></a>
                    </td>
                    <td>
                        <a class="btn btn-primary btn-circle ml-1"
                        ><i class="far fa-edit text-white"></i
                        ></a>
                    </td>
                    <td>
                        <a class="btn btn-danger btn-circle ml-1"
                        ><i class="fas fa-trash text-white"></i
                        ></a>
                    </td>
                    <td>
                        <a class="btn btn-primary btn-circle ml-1"
                        ><i class="far fa-edit text-white"></i
                        ></a>
                    </td>
                    <td>
                        <a class="btn btn-danger btn-circle ml-1"
                        ><i class="fas fa-trash text-white"></i
                        ></a>
                    </td>
                </tr>
                <tr>
                    <td>Bangladesh</td>
                    <td><img src alt/></td>
                    <td>Active</td>
                    <td>
                        <a class="btn btn-primary btn-circle ml-1"
                        ><i class="far fa-edit text-white"></i
                        ></a>
                    </td>
                    <td>
                        <a class="btn btn-danger btn-circle ml-1"
                        ><i class="fas fa-trash text-white"></i
                        ></a>
                    </td>
                    <td>
                        <a class="btn btn-primary btn-circle ml-1"
                        ><i class="far fa-edit text-white"></i
                        ></a>
                    </td>
                    <td>
                        <a class="btn btn-danger btn-circle ml-1"
                        ><i class="fas fa-trash text-white"></i
                        ></a>
                    </td>
                    <td>
                        <a class="btn btn-primary btn-circle ml-1"
                        ><i class="far fa-edit text-white"></i
                        ></a>
                    </td>
                    <td>
                        <a class="btn btn-danger btn-circle ml-1"
                        ><i class="fas fa-trash text-white"></i
                        ></a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
<%@ include file="common/footer.jspf" %>