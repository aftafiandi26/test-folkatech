<?php

namespace App\Http\Controllers;

use App\Models\employees;
use App\Models\companies;
use App\Http\Requests\CreateEmployeesRequest;
use App\Mail\CreateEmployeesMails;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class EmployeesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $title = 'Employees';

        $cari = $request->find;

        $employees = employees::with('company')->where('firstname', 'like', '%' . $cari . '%')->orWhere('lastname', 'like', '%' . $cari . '%')->paginate(10);

        return view('employees.index', compact(['title', 'employees']));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create Employees';
        $companies = companies::all();

        return view('employees.create', compact(['title', 'companies']));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CreateEmployeesRequest $request)
    {
        $company = companies::find($request->company);
        $data = [
            'companies_id'   => $request->company,
            'firstname' => $request->firstName,
            'lastname'  => $request->lastName,
            'email'     => $request->email,
            'phone'     => $request->phone
        ];

        $validated = $request->validated();

        employees::create($data);

        $emp = employees::latest()->first();

        Mail::to($company->email)->send(new CreateEmployeesMails($emp));

        return redirect()->route('employees.index')->with('success', 'Data berhasil ditambahkan!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\employees  $employees
     * @return \Illuminate\Http\Response
     */
    public function show($employees)
    {
        $employee = employees::with('company')->find($employees);

        $return = '
        <div class="modal-header">
            <div class-"modal-title" id="showModalLabel">
                <img src="' . asset('storage/' . substr($employee->company->logo, 7)) . '" alt="logo" height="70px" width="70">
            </div>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
        </div>
        <div class="modal-body">         
            <table class="table-condensed table">
                <tr>
                    <td>Company</td>
                    <td>:</td>
                    <td>' . $employee->company->name . '</td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td>:</td>
                    <td>' . $employee->firstname . '</td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>:</td>
                    <td>' . $employee->lastname . '</td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>:</td>
                    <td>' . $employee->email . '</td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>:</td>
                    <td>' . $employee->phone . '</td>
                </tr>
            </table>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
        </div>
        ';

        return $return;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\employees  $employees
     * @return \Illuminate\Http\Response
     */
    public function edit($employees)
    {
        $employee = employees::with('company')->find($employees);
        $companies = companies::all();

        $title = "Edit Employees";

        return view('employees.edit', compact(['title', 'employee', 'companies']));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\employees  $employees
     * @return \Illuminate\Http\Response
     */
    public function update(CreateEmployeesRequest $request, $employees)
    {
        $data = [
            'companies_id'   => $request->company,
            'firstname' => $request->firstName,
            'lastname'  => $request->lastName,
            'email'     => $request->email,
            'phone'     => $request->phone
        ];

        $validated = $request->validated();

        employees::where('id', $employees)->update($data);

        return redirect()->route('employees.index')->with('info', 'Data berhasil diperbaharui!!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\employees  $employees
     * @return \Illuminate\Http\Response
     */
    public function destroy($employees)
    {
        $employee = employees::find($employees);
        $employee->delete();

        return redirect()->route('employees.index')->with('danger', 'Data berhasil dihapuskan!!');
    }
}
