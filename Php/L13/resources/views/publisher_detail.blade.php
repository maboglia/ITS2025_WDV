@extends('index')


@section('content')

    <h1>Publisher {{ $publisher->name }}</h1>

    @foreach($publisher->games as $gioco)

    <article>
        <header><h3>{{ $gioco->game }}</h3></header>
        <ul>
            <li>Genre: {{ $gioco->genre }}</li>
            <li>Original platform: {{ $gioco->original_platform }}</li>
            <li>Year: {{ $gioco->year }}</li>
            <li><a href="https://www.google.com/search?q={{ $gioco->game }}">Cerca</a></li>
        </ul>
        <footer>WDV Production Inc.</footer>
    </article>

    @endforeach

@endsection


