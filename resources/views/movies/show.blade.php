@extends('layouts.app')

@section('content')
<div class="card my-5">
    <img src="{{$movie->image}}" alt="" class="card-image-top mx-auto mt-5" width="30%">
    <div class="card-body">
        <h1>{{$movie->title}}</h1>
        <div class="text-danger">
            @for ($i = 1; $i <=$movie->rating_star; $i++)
                <i class="fas fa-star"></i>
                @endfor
        </div>
        <p>{{$movie->description}}</p>

        <h3>Cast
            <!-- Button trigger modal -->
            @auth
            <button type="button" id="btn1" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
                <i class="fas fa-plus"></i>
            </button>
            @endauth
        </h3>
        <ul class="list-group list-group-flush">

            @if (count($movie->casts))
            @foreach ($movie->casts as $cast )
            <li class="list-group-item">
                <a href="{{route('casts.show',$cast->id)}}">{{$cast->name}}</a> -
                <span class="text-muted font-italic">{{$cast->pivot->role}}</span>
                @auth
                    <form action="{{ route('movie_cast_destroy',[$movie->id, $cast->id]) }}" method="POST">
                    @csrf
                    @method('delete')
                    <button type="submit" class="btn btn-link text-danger">Delete</button>
                </form>
                @endauth
            </li>
            @endforeach
            @endif

        </ul>


        <h3>Comments</h3>
        <ul class="list-group list-group-flush">
            @if (count($movie->comments))
            @foreach ($movie->comments as $comment)
            <li class="list-group-item"><b>{{$comment->user->name}}: </b>{{$comment->content}}
                @auth
                    <form action="{{route('comments.destroy', $comment->id)}}" method="POST">
                    @csrf
                    @method('delete')
                    <button type="submit" class="btn btn-link text-danger">Delete</button>
                </form>
                @endauth
            </li>
            @endforeach
            @else
            No Comment !!!
            @endif
            <form action="{{route('movies.comments.store',$movie->id)}}" method="POST">
                @csrf
                <input type="text" name="comment" class="form-control" placeholder="Say Something...">
                <button type="submit" class="btn btn-primary mt-2 float-right">Comment</button>
            </form>

    </div>
    @auth        
    <div class="card-footer">
        <form action="{{route('movies.destroy',$movie->id)}}" method="POST">
            @csrf
            @method('delete')
            <button type="submit" class="btn btn-link float-right">Delete</button>
        </form>
    </div>
    @endauth
</div>



<!-- Modal -->
@auth
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">New Cast</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <h1>Cast Role</h1>
                        <form action="{{ route('movie_cast_store', $movie->id) }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label>Actor Name</label>
                                <select name="cast_movie_name" class="form-control">
                                    <option value="" disabled selected>Choose Cast</option>
                                    @if (count($casts))
                                    @foreach ($casts as $cast)
                                    <option value="{{$cast->id}}">{{$cast->name}}</option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Role</label>
                                <input type="text" class="form-control" name="cast_movie_role">
                            </div>
                            <button type="submit" class="btn btn-primary float-right">Submit</button>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <h1>New Cast</h1>
                        <form action="{{route('casts.store')}}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label>Actor Name</label>
                                <input type="text" class="form-control" name="name">
                            </div>
                            <div class="form-group">
                                <label>Actor Image</label>
                                <input type="text" class="form-control" name="image">
                            </div>
                            <button type="submit" class="btn btn-primary float-right">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- <script type="text/javascript">
    $('#btn1').on('click', function() {
        $('#exampleModal').modal('show');
    });
</script> -->
@endauth
@endsection