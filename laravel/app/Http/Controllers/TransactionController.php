<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use App\Models\User;
use Illuminate\Http\Request;

class TransactionController extends Controller
{
    public function index($id){
        return response()->json([
            "histories" => Transaction::where('user_id', $id)->orderBy('id', 'desc')->take(10)->get()
        ]);
    }
    public function transfer(Request $request)
    {
        $data = $request->validate([
            'account' => 'required',
            'amount' => 'required',
            'email' => 'required',
            'password' => 'required'
        ]);

        $msg = 'completed';
        $trxid = uniqid();

        $sender = User::where('email', $data['email'])->first();
        if ($sender) {
            $balance = $sender->balance - $data['amount'];
            $sender->update(['balance' => $balance]);
            $transaction = Transaction::create([
                'user_id' => $sender->id,
                'email' => $data['email'],
                'amount' => $data['amount'],
                'trxid' => $trxid,
                'type' => 'expense',
                'description' => $request->description,
                'status' => 'completed'
            ]);
        }

        $reciver = User::where('email', $data['account'])->first();
        if ($reciver) {
            $balance = $reciver->balance + $data['amount'];
            $reciver->update(['balance' => $balance]);
            $transaction = Transaction::create([
                'user_id' => $reciver->id,
                'email' => $data['account'],
                'amount' => $data['amount'],
                'trxid' => $trxid,
                'type' => 'income',
                'description' => $request->description,
                'status' => 'completed'
            ]);
        }

        return response()->json([
            'status' => 'completed',
            'balance' => $sender->id,
            'trxid' => $trxid,
            'msg' => $msg
        ]);
    }
}
