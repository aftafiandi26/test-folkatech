@extends('layouts.app')

@section('link')
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h3>Edit Employee</h3>
                </div>

                <div class="card-body">
                    <form action="{{ route('employees.update', $employee->id) }}" method="post">
                        @csrf
                        @method('patch')
                        <div class="mb-3 row">
                            <div class="col">
                                <label for="company" class="form-label">Name Company:</label>
                                <select name="company" id="company" class="form-control company @error('company') is-invalid @enderror">
                                    <option value="">-select company-</option>
                                    @foreach ($companies as $company)
                                    <option value="{{ $company->id }}" @if ($company->id == $employee->companies_id)
                                        selected
                                        @endif
                                        >{{ $company->name }}</option>
                                    @endforeach
                                </select>
                                @error('company')
                                <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col agakLain">
                                <label for="firstName" class="form-label">First Name</label>
                                <input type="text" name="firstName" id="firstName" class="form-control @error('firstName') is-invalid @enderror" value="{{ $employee->firstname }}">
                                @error('firstName')
                                <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col">
                                <label for="lastName class=" form-label">Last Name</label>
                                <input type="text" name="lastName" id="lastName" class=" form-control @error('lastName') is-invalid @enderror" value="{{ $employee->lastname }}">
                                @error('lastName')
                                <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="col">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" name="email" id="email" class="form-control" value="{{ $employee->email }}">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="col">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" name="phone" id="phone" class="form-control" value="{{ $employee->phone }}">
                            </div>
                        </div>

                        <button type="submit" class="btn btn-sm btn-primary">Update</button>
                        <a href="{{ route('employees.index') }}" class="btn btn-sm btn-secondary">Back</a>


                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection