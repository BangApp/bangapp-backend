
@extends('layouts.topbar')

@section('content')
<div class="w-100 m-4">
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addUserModal">
            ADD USER
          </button>

        <div class="card my-3">

        <div class="col-12">
            
                <table class="table table-bordered scrollable-table-container">
                    <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Phone Number</th>
                            <th scope="col">Joined</th>
                            <th class="col-md-2">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($users as $user)
                        <tr>
                            <td>{{$user->name}}</td>
                            <td>{{$user->email}}</td>
                            <td>{{$user->phone_number}}</td>
                            <td>{{$user->created_at}}</td>
                            <td>
                                <a href="{{ route('edit_bang_battle', ['id'=>$user->id]) }}" class="btn btn-primary">View</a>
                                <a href="{{ route('pin_bang_battle', ['id' => $user->id]) }}" class="btn btn-light"  >@if($user->status) Deactivate @else Activate @endif</a>
                                <a href="{{ route('delete_bang_battle', ['id' => $user->id]) }}" class="btn btn-danger"  >DELETE</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
        
        </div>

    </div>

</div>
@endsection