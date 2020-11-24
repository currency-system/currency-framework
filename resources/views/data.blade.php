@extends('layout')
@section('content')
<div class="mt-8 bg-white dark:bg-gray-800 overflow-hidden shadow sm:rounded-lg">
    <div class="grid grid-cols-1 md:grid-cols-2">
        @if(count($currencies))
        <table class="table">
            <thead><tr><th>NumCode</th><th>CharCode</th><th>Name</th><th>Value</th><th>Date</th></tr></thead>
            <tbody>
            @foreach($currencies as $currency)
                <tr>
                    <td>{{$currency->numCode}}</td>
                    <td>{{$currency->charCode}}</td>
                    <td>{{$currency->name}}</td>
                    <td>{{$currency->value}}</td>
                    <td>{{$currency->date}}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
        @else
            <a href="{{ route('load') }}" class="text-sm text-gray-700 underline">Load</a>
        @endif
    </div>
</div>
@endsection