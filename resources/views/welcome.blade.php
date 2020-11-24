@extends('layout')
@section('content')
<div class="mt-8 bg-white dark:bg-gray-800 overflow-hidden shadow sm:rounded-lg">
    <div class="grid grid-cols-1 md:grid-cols-2">
        <div class="p-6">
            <div class="flex items-center">
                <div class="ml-4 text-lg leading-7 font-semibold">
                    <h2>Available Currencies</h2>
                </div>
            </div>

            <div class="ml-12">
                <div class="mt-2 text-gray-600 dark:text-gray-400 text-sm">
                    @if(count($currencies))
                        <table class="table">
                            <thead>
                            <tr>
                                <th>CharCode</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($currencies as $currency)
                                <tr>
                                    <td>{{$currency->charCode}}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    @endif
                </div>
            </div>
        </div>

        <div class="p-6 border-t border-gray-200 dark:border-gray-700 md:border-t-0 md:border-l">
            <div class="flex items-center">
                <div class="ml-4 text-lg leading-7 font-semibold">
                    <h2>Currency Calculator</h2>
                </div>
            </div>
            <style>
                input, select{
                    display: block;
                    font-size:14px;
                    padding:4px 2px;
                    border:solid 1px #aacfe4;
                    width:auto;
                    margin:2px 0 20px 10px;
                }
            </style>
            <div class="ml-12">
                <form method="POST" action="{{url('calculate')}}" class="form-check">
                    @csrf
                    <select name="fromCuurency" class="form-select">
                        @if(count($currencies))
                            @foreach($currencies as $currency)
                                <option value="{{ $currency->charCode }}" {{$fromCurrency == $currency->charCode  ? 'selected' : ''}}>
                                    {{ $currency->charCode}}
                                </option>
                            @endforeach
                        @endif
                    </select>
                    <label for="fromValue">From</label>
                    <input name="fromValue" value="{{$fromValue}}" class="form-input">
                    <select name="toCuurency" class="form-select">
                        @if(count($currencies))
                            @foreach($currencies as $currency)
                                <option value="{{ $currency->charCode }}" {{$toCurrency == $currency->charCode  ? 'selected' : ''}}>{{ $currency->charCode}}</option>
                            @endforeach
                        @endif
                    </select>
                    <span></span>
                    <label for="from">{{ $outputValue }}</label>
                    <input type="submit" value="Calculate" name="calculate" class="btn">
                </form>
            </div>
        </div>
        <div class="p-12 border-t border-gray-200 dark:border-gray-700">
            <div class="flex items-center">
                <div class="ml-4 text-lg leading-7 font-semibold"><a href="{{ url('/data') }}" class="underline text-gray-900 dark:text-white">Show Currency Data</a></div>
            </div>

            <div class="ml-12">
                <div class="mt-2 text-gray-600 dark:text-gray-400 text-sm">
                    View current currency data
                </div>
            </div>
        </div>
    </div>
</div>
@endsection