<?php

namespace App\Http\Controllers;

use App\Http\Curl\MyCurl;
use App\Models\Currency;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CurrencyController extends Controller
{
    //
    public function home(Request $request){
        $currencies = Currency::select('charCode')->distinct()->get();
        $fromCurrency = null;
        $fromValue = null;
        $outputValue = null;
        $toCurrency = null;
        if($request->post()){
            die(''.print_r($request->post(), true));
        }
        return view('welcome', array('currencies'=> $currencies, 'fromCurrency'=>$fromCurrency, 'fromValue'=>$fromValue, 'toCurrency'=>$toCurrency, 'outputValue' => $outputValue));
    }

    public function calculate(Request $request){
        $currencies = Currency::select('charCode')->distinct()->get();
        $fromCurrency = null;
        $fromValue = null;
        $outputValue = null;
        $toCurrency = null;
        if($request->post()){
            $fromCurrency = $request->post('fromCuurency', null);
            $toCurrency = $request->post('toCuurency', null);
            $fromValue = $request->post('fromValue', null);
            $fromObject = DB::table('Currency')->where('charCode', $fromCurrency)->first();
            $toObject = DB::table('Currency')->where('charCode', $toCurrency)->first();
            $outputValue = ($fromObject->value/$toObject->value)*$fromValue;
            $outputValue = round($outputValue, 2);
        }
        return view('welcome', array('currencies'=> $currencies, 'fromCurrency'=>$fromCurrency, 'fromValue'=>$fromValue, 'toCurrency'=>$toCurrency, 'outputValue' => $outputValue));
    }

    public function data(Request $request){
        $currencies = Currency::all();
        return view('data', array('currencies'=> $currencies));
    }
    public function load(Request $request){
        $obj = new MyCurl('http://www.cbr.ru/scripts/XML_daily.asp');
        $obj->processCurl();
#die('ss: '.$obj->getHttpStatus());
        $xml = simplexml_load_string($obj->__tostring());

        if(count($xml->Valute)) {
            foreach ($xml->Valute as $rowObject){
                $currency = new Currency();
                #die('<pre>'.print_r($rowObject, true));
                $currency->numCode = $rowObject->NumCode;
                $currency->charCode = $rowObject->CharCode;
                $currency->name = $rowObject->Name;
                $currency->value = preg_replace('/\D/', '', $rowObject->Value);
                $currency->date = date('Y-m-d H:i:s', strtotime($xml->attributes()['Date']));
                $currency->save();
            }
        }
        return redirect('data');
    }
}
