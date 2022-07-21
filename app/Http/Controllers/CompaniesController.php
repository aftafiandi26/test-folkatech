<?php

namespace App\Http\Controllers;

use App\Models\companies;
use Illuminate\Http\Request;
use App\Http\Requests\CreateCompaniesRequest;
use App\Http\Requests\UpdateCompaniesRequest;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class CompaniesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $title = "Companies";

        $cari = $request->find;

        $companies = Companies::where('name', 'like', '%' . $cari . '%')->orderBy('name', 'asc')->paginate(10);

        return view('companies.index', compact(['title', 'companies']));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('companies.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CreateCompaniesRequest $request)
    {
        $validated = $request->validated();
        $logo = null;

        if ($request->hasFile('logo')) {
            // $logo = $request->logo->store('publilogo');
            $logo = Storage::putFile('public/logo', $request->logo);
        }

        $data = [
            'name'      => $request->name,
            'email'     => $request->email,
            'logo'      => $logo,
            'website'   => $request->website
        ];

        companies::create($data);

        return redirect()->route('companies.index')->with('success', 'Data berhasil di tambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\companies  $companies
     * @return \Illuminate\Http\Response
     */
    public function show($companies)
    {
        $company = companies::find($companies);

        $return = '
        <div class="modal-header">
            <span class-"modal-title" id="showModalLabel">
            <h4>' . $company->name . ' </h4> website : ' . $company->website . ' 
            </span>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
        </div>
        <div class="modal-body">         
            <img src="' . asset('storage/' . substr($company->logo, 7)) . '" alt="logo" height="200px" width="200px">
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
     * @param  \App\Models\companies  $companies
     * @return \Illuminate\Http\Response
     */
    public function edit($companies)
    {
        $title = "Edit Companies";
        $companies = companies::find($companies);

        return view('companies.edit', compact(['title', 'companies']));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\companies  $companies
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCompaniesRequest $request, $companies)
    {
        $company = companies::find($companies);

        $validated = $request->validated();

        $logo = $company->logo;

        if ($request->hasFile('logo')) {
            // $logo = $request->logo->store('publilogo');
            Storage::delete($company->logo);
            $logo = Storage::putFile('public/logo', $request->logo);
        }

        $data = [
            'name'      => $request->name,
            'email'     => $request->email,
            'logo'      => $logo,
            'website'   => $request->website
        ];

        companies::where('id', $companies)->update($data);

        return redirect()->route('companies.index')->with('info', 'Data berhasil di perbaharui');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\companies  $companies
     * @return \Illuminate\Http\Response
     */
    public function destroy($companies)
    {
        $company = companies::find($companies);
        Storage::delete($company->logo);
        $company->delete();

        return redirect()->route('companies.index')->with('danger', 'Data berhasil di hapuskan');
    }
}
