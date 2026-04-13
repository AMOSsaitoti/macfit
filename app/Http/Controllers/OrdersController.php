<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $orders = Order::all();
        return response()->json($orders);
    }
    //get order per user
    public function ordersPerUser($id){
        $orders= Order::where('user_id', $id)->get();

        foreach ($orders as $order) {
            $order->product = Product::where('id', $order->product_id)->first();
        }
        return response()->json($orders);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'user_id'=>'required|integer',
            'product_id'=>'required|integer',
            'quantity'=>'required|integer'

        ]);

        $order = new order();
        $order->name = $validated['name'];

        $order->save();

        return response()->json(['message' => 'Order created successfully.'], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Order $order)
    {
        $validated = $request->validate([
            'user_id'=>'required|integer',
            'product_id'=>'required|integer',
            'quantity'=>'required|integer'

        ]);

        $order =  order::find($order);
        $order->name = $validated['name'];

        $order->save();

        return response()->json(['message' => 'Order updated successfully.'], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Order $order)
    {
        //
    }
}


