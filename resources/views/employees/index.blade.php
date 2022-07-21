@extends('layouts.app')

@section('link')
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h3>List Employees</h3>
                </div>

                <div class="card-body">
                    <div class="row">
                        @if ($message = Session::get('success'))
                        <div class="alert alert-success alert-dismissible mb-2">
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            <strong>Success!</strong> {{ $message }}
                        </div>
                        @endif
                        @if ($message = Session::get('info'))
                        <div class="alert alert-info alert-dismissible mb-2">
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            <strong>Info!</strong> {{ $message }}
                        </div>
                        @endif
                        @if ($message = Session::get('danger'))
                        <div class="alert alert-danger alert-dismissible mb-2">
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            <strong>Danger!</strong> {{ $message }}
                        </div>
                        @endif
                    </div>
                    <a href="{{ route('employees.create') }}" class="btn btn-sm btn-primary btn- mb-3">Add</a>
                    <form class="row float-end" method="get" action="{{ route('employees.index') }}">
                        @csrf
                        <div class="col-auto">
                            <label for="find" class="visually-hidden">Find</label>
                            <input type="text" class="form-control" id="find" placeholder="Employees" name="find">
                        </div>
                        <div class="col-auto">
                            <button type="submit" class="btn btn-secondary">find</button>
                        </div>
                    </form>
                    <table class="table table-hover table-bordered table-condensed" id="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Company</th>
                                <th>Name Employee</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($employees as $employee => $e)
                            <tr>
                                <td>{{ $employees->firstItem() + $employee }}</td>
                                <td>{{ $e->company->name }}</td>
                                <td>{{ $e->firstname.' '.$e->lastname }}</td>
                                <td>{{ $e->email }}</td>
                                <td>{{ $e->phone }}</td>
                                <td>
                                    <a data-bs-role="{{ route('employees.show', $e->id) }}" class="btn badge bg-secondary" data-bs-toggle="modal" data-bs-target="#myModal" title="view">view</a>
                                    <a href="{{ route('employees.edit', $e->id) }}" class="btn btn-warning badge">edit</a>
                                    <form action="{{ route('employees.destroy', $e->id) }}" method="post">
                                        @csrf
                                        @method('delete')
                                        <button type="submit" class="btn badge bg-danger">delete</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <p>Showing {{ $employees->firstItem() }} of {{ $employees->lastItem() }} from {{ $employees->total() }} </p>
                    {{ $employees->render() }}
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="showModalLabel" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="modal-content">

        </div>
    </div>
</div>

@endsection

@section('script')
<script>
    $(document).on('click', '#table tr td a[title="view"]', function(e) {
        var id = $(this).attr('data-bs-role');

        $.ajax({
            url: id,
            success: function(e) {
                $('#modal-content').html(e);
            }
        });
    });
</script>
@endsection