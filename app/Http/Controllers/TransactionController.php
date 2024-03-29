<?php

namespace App\Http\Controllers;

use App\Models\Bid;
use App\Models\Transaction;
use Illuminate\Http\Request;

class TransactionController extends Controller
{
    public function store(Request $request)
    {
        // Validate the request data
        $validatedData = $request->validate([
            'bid_id' => 'required|exists:bids,id',
            'user_id' => 'required|exists:users,id',
            // Add more validation rules as needed
        ]);

        // Find the bid
        $bid = Bid::findOrFail($validatedData['bid_id']);

        // Ensure the bid is not already fulfilled
        if ($bid->fulfilled) {
            return response()->json(['error' => 'Bid has already been fulfilled.'], 400);
        }

        // Execute the transaction
        // For simplicity, let's assume the transaction price is the bid price
        $transactionPrice = $bid->bid_price;

        // Create a new transaction
        $transaction = new Transaction();
        $transaction->bid_id = $bid->id;
        // $transaction->user_id = auth()->id(); // Assuming you're using authentication
        $transaction->user_id = $validatedData['user_id']; // Assuming you're using authentication
        $transaction->stock_symbol = $bid->stock_symbol;
        $transaction->transaction_price = $transactionPrice;
        $transaction->quantity = $bid->quantity;
        $transaction->save();

        // Mark the bid as fulfilled
        $bid->fulfilled = true;
        $bid->save();

        return response()->json(['success' => true, 'message' => 'Transaction completed successfully.', 'transaction' => $transaction], 200);
    }

    public function index()
    {
        // Retrieve transactions with related stock details
        $transactions = Transaction::with(['stock', 'stock.analytics'])->get();

        return response()->json(['success' => true, 'transactions' => $transactions], 200);
    }
}
