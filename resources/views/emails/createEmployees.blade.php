<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h4>New Employee</h4>
                </div>

                <div class="card-body">
                    <p>
                        Dear Sir/Madam,
                        We have new employee :
                    </p>
                    <table class="table table-condensed table-bordered">
                        <tr>
                            <td>First Name</td>
                            <td>:</td>
                            <td>{{ $firstname }}</td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td>:</td>
                            <td>{{ $lastname }}</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>:</td>
                            <td>{{ $email }}</td>
                        </tr>
                        <tr>
                            <td>Phone</td>
                            <td>:</td>
                            <td>{{ $phone }}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>