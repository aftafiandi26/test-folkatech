@extends('layouts.app')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header">
                <h3>Edit Companies</h3>
            </div>

            <div class="card-body">

                <form action="{{ route('companies.update', [$companies->id]) }}" method="post" enctype="multipart/form-data">
                    @csrf
                    @method('put')

                    <div class="mb-3">
                        <label for="name" class="form-label">Name Company:</label>
                        <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" placeholder="Name Company" name="name" value="{{ $companies->name }}">
                        @error('name')
                        <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email:</label>
                        <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="email Company" name="email" value="{{ $companies->email }}">
                        @error('email')
                        <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="logo" class="form-label">Logo:</label>
                        <br>
                        <img src="{{ asset('storage/' . substr($companies->logo, 7)) }}" alt="logo" height="100px" width="100px" class="mb-2">
                        <input type="file" class="form-control" id="logo" placeholder="logo Company" name="logo">
                    </div>
                    <div class="mb-3">
                        <label for="website" class="form-label">Website:</label>
                        <input type="text" class="form-control @error('website') is-invalid @enderror" id="website" placeholder="Website Company" name="website" value="{{ $companies->website }}">
                        @error('website')
                        <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <dov class="col">
                        <button type="submit" class="btn btn-sm btn-primary">Insert</button>
                        <a href="{{ route('companies.index') }}" class="btn btn-sm btn-secondary">back</a>
                    </dov>
                </form>
            </div>
        </div>
    </div>
</div>
</div>
@endsection