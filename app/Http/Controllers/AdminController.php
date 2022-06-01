<?php

namespace App\Http\Controllers;

use App\Models\admin;
use App\Http\Requests\StoreadminRequest;
use App\Http\Requests\UpdateadminRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function login()
    {
        return view('auth.loginAdmin');
    }

    public function register()
    {
        return view('auth.registerAdmin');
    }

    public function loginProcessing(Request $request){
        try {
            $user = admin::query()
                ->where('email', $request->get('email'))
                ->firstOrFail();
            if (!Hash::check($request->get('password'), $user->password)){ 
                return redirect()->route('user.login')->with('error-login','Tài khoản hoặc mật khẩu không đúng');
            }
            session()->put('login', 'true');
            session()->put('id', $user->id);
            session()->put('name', $user->name);
            session()->put('avatar', $user->avatar);
            session()->put('level', $user->level);
            if($user->level == 1 || $user->level == 2){
                return redirect()->route('seller.myAccount');
            }elseif($user->level == 3){
                return redirect()->route('admin.myAccount');
            }else{
                return redirect()->route('admin.login')->with('error-login','Tài khoản của bạn đang bị cấm vui lòng đăng nhập sau');
            }
        } catch (\Throwable $th) {
            return redirect()->route('user.login')->with('error-login','Tài khoản hoặc mật khẩu không đúng');
        }
    }

    public function registerProcessing(Request $request)
    {
        try {
            admin::query()
            ->create([
                'name'  => $request->get('name'),
                'email' => $request->get('email'),
                'password' => Hash::make($request->get('password')),
            ]);
            return redirect()->route('admin.login')->with('success','Đăng kí tài khoản thành công');
        } catch (\Throwable $th) {
            return redirect()->route('admin.register')->with('error','Email nãy lỗi hoặc Đã được sử dụng');
        }
    }

    public function logout(){
        session()->flush();
        return redirect()->route('admin.login');
    }

    public function show()
    {
        $admin = admin::find(session()->get('id'));
        return view('content.admin.myAccount',[
            'admin' => $admin,
        ]);
    }

    public function edit(admin $admin)
    {
        //
    }

    public function update(UpdateadminRequest $request, admin $admin)
    {
        //
    }

    public function destroy(admin $admin)
    {
        //
    }
}
