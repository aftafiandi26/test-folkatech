@extends('layouts.app')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header">
                <h3>Create Companies</h3>
            </div>

            <div class="card-body">

                <form action="{{ route('companies.store') }}" method="post" enctype="multipart/form-data">
                    @csrf

                    <div class="mb-3">
                        <label for="name" class="form-label">Name Company:</label>
                        <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" placeholder="Name Company" name="name">
                        @error('name')
                        <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email:</label>
                        <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="email Company" name="email">
                        @error('email')
                        <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="logo" class="form-label">Logo:</label>
                        <input type="file" class="form-control @error('logo') is-invalid @enderror" id="logo" placeholder="logo Company" name="logo">
                        @error('logo')
                        <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="website" class="form-label">Website:</label>
                        <input type="text" class="form-control @error('website') is-invalid @enderror" id="website" placeholder="Website Company" name="website">
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