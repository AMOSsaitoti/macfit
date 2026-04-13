<?php

namespace App\Http\Controllers;

use App\Models\role;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    { 
        $roles = role::all();
        return response()->json($roles);
        $validated = $request->validate([
            'name' => 'required|string',
        ]);
        $role = new role();
        $role->name = $validated['name'];

        $role->save();

        return response()->json(['message' => 'Role created successfully'], 200);
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
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(role $role)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(role $role)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, role $role)
    { 
        $roles = role::all();
        return response()->json($roles);
        $validated = $request->validate([
            'name' => 'required|string',
        ]);
        $role = new role();
        $role->name = $validated['name'];

        $role->save();

        return response()->json(['message' => 'Role created successfully'], 200);
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(role $role)
    {
        //
    }
}
