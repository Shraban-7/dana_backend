<?php

namespace App\Http\Controllers;

use App\Models\Bid;
use Illuminate\Http\Request;

class BidController extends Controller
{
    public function store(Request $request)
    {
        // Validate the request data
        $validatedData = $request->validate([
            'user_id' => 'required|exists:users,id',
            'stock_symbol' => 'required|string|max:10',
            'bid_price' => 'required|numeric',
            'quantity' => 'required|integer|min:1',
            // Add more validation rules as needed
        ]);

        // Create a new bid instance
        $bid = new Bid();
        $bid->user_id = $validatedData['user_id'];
        $bid->stock_symbol = $validatedData['stock_symbol'];
        $bid->bid_price = $validatedData['bid_price'];
        $bid->quantity = $validatedData['quantity'];

        // Optionally, you can set the 'fulfilled' flag based on your business logic
        // $bid->fulfilled = false;

        // Save the bid
        $bid->save();

        // Return a JSON response with success message and the created bid data
        return response()->json([
            'success' => true,
            'message' => 'Bid placed successfully.',
            'bid' => $bid,
        ], 200);
    }
}
