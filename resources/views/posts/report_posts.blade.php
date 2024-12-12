@extends('layouts.topbar')

@section('content')
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <style>
        .scrollable-table-container {
            width: 100%;
            overflow-x: auto;
        }
    </style>


    <div class="w-100 m-4">


        <div class="card my-3">

        <div class="col-12">
            <div class="col-12">
                <table class="table table-bordered scrollable-table-container">
                    <thead>
                        <tr>
                            <th scope="col">User</th>
                            <th scope="col">Belongs To</th>
                            <th class="col">Reason</th>
                            <th class="col">Hours</th>
                            <th class="col-md-2">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($reportedPosts as $post)
                        <tr>
                            <td>{{$post->user->name}}</td>
                            <td>{{$post->post->user->name}}</td>
                            <td>{{$post->reason}}</td>
                            <td>{{$post->created_at}}</td>
                            <td>
                                {{-- <a href="{{ route('view_post', ['id'=>$post->id]) }}" class="btn btn-primary">VIEW</a>
                                <a href="{{ route('delete_post', ['id' => $post->id]) }}" class="btn btn-danger"  >DELETE</a> --}}
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

    </div>
    </div>
@endsection
