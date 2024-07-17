<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class SanctumController extends Controller
{
    public function register(Request $request)
    {
        $data = $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required'
        ]);
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password'])
        ]);
        $token = $user->createToken('main')->plainTextToken;
        return response()->json([
            'user' => $user,
            'token' => $token
        ]);
    }

    public function login(Request $request)
    {
        $data = $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);
        if (!auth()->attempt($data)) {
            return response()->json([
                'message' => 'Provided credentials are not correct'
            ], 422);
        }
        $user = User::where('email', $data['email'])->first();
        $token = $user->createToken('main')->plainTextToken;
        return response()->json([
            'user' => $user,
            'token' => $token
        ]);
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();
        return response()->json([
            'message' => 'Logged out'
        ]);
    }
    public function profile($id){
        return response()->json([
            "user" => User::where('id', $id)->first()
        ]);
    }
    public function profileImage(Request $request) {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        
        $imageName = time().'.'.$request->image->extension();  
        $request->image->move(public_path('images'), $imageName);

        $user = User::find($request->id);
        $user->image = $imageName;
        $user->save();

        return response()->json(['message' => 'Image uploaded successfully', 'imageName' => $imageName]);
    }
}
