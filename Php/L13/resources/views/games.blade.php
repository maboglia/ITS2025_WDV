@extends('index')



@section('content')

    <h1>Giochi</h1>


    <ul>

        @foreach ($giochi as $gioco)
        
        <li>
            <a href="{{ route('games', ['id'=>$gioco->id]) }}">
                {{ $gioco->game }}
            </a>
        </li>
        
        @endforeach
        
    </ul>
@endsection