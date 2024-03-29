<?php

namespace App\Http\Controllers;

use App\Models\Analytics;
use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class StockController extends Controller
{
    public function stock(Request $request)
    {

        $json = file_get_contents('https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=AAPL&interval=5min&apikey=T0KA2XJ7HBRP9MPC');

        $data = json_decode($json, true);

        return $data;
    }

    public function analytics()
    {


        $analyticsData = Analytics::with(['company' => function ($query) {
            $query->select('id','symbol', 'company_name', /* add other columns from the company table */);
        }])->select(
            'id',
            'offer_shares',
            'offer_price',
            'last_price',
            'bid_price',
            'bid_shares',
            'trade',
            'average',
            'money',
            'previous_close',
            'company_id'
        )->get();

        $analyticsData->transform(function ($item) {
            // Calculate difference between last_price and previous_close
            $difference = $item->last_price - $item->previous_close;

            // Calculate percentage difference
            $percentage = ($difference / $item->previous_close) * 100;

            // Add difference and percentage to the item
            $item->difference = $difference;
            $item->percentage_difference = $percentage;

            return $item;
        });

        return $analyticsData;
    }


    public function fetchData(Company $company, string $timeSeries)
    {
        $symbol = $company->symbol; // Example symbol (Apple Inc.)
        $apiKey = 'T0KA2XJ7HBRP9MPC'; // Your Alpha Vantage API key

        $response = Http::get('https://www.alphavantage.co/query', [
            'function' => 'TIME_SERIES_'. strtoupper($timeSeries),
            'symbol' => $symbol,
            'apikey' => $apiKey,
        ]);

        $data = $response->json();


        return $data;

        // Handle the response and store the data in your database
    }
}
