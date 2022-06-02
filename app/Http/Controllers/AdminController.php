<?php

namespace App\Http\Controllers;

use App\Models\admin;
use App\Http\Requests\StoreadminRequest;
use App\Http\Requests\UpdateadminRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function session_save($id, $name, $avatar, $level){
        session()->put('id', $id);
        session()->put('name', $name);
        session()->put('avatar', $avatar);
        session()->put('level', $level);
    }
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
                return redirect()->route('admin.login')->with('error','Tài khoản hoặc mật khẩu không đúng');
            }
            $this->session_save($user->id,$user->name,$user->avatar,$user->level);
            if($user->level == 1 || $user->level == 2){
                return redirect()->route('seller.myAccount');
            }elseif($user->level == 3){
                return redirect()->route('admin.myAccount');
            }else{
                return redirect()->route('admin.login')->with('error','Tài khoản của bạn đang bị cấm vui lòng đăng nhập sau');
            }
        } catch (\Throwable $th) {
            return redirect()->route('admin.login')->with('error','Tài khoản hoặc mật khẩu không đúng');
        }
    }

    public function registerProcessing(Request $request)
    {
        try {
            admin::query()
            ->create([
                'name'      => $request->get('name'),
                'email'     => $request->get('email'),
                'password'  => Hash::make($request->get('password')),
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

    public function showAll(Request $request){
        $s = $request->get('search');
        $t = $request->get('check');

        $Show = ["0","1","2"];
        if ($t == "0"){
            $Show = ["0"];
        }else if ($t != "3" && $t != ""){
            $Show = [$t];
        }

        $admins = DB::table('admins')
            ->select('*')
            ->where('admins.name', 'like', "%".$s."%")
            ->whereIn('admins.level', $Show)
            ->paginate(10);

        $admins->appends([
           'search' => $s,
           'check' => $t,
        ]);

        return view('content.admin.managerSeller',[
            'data'      => $admins,
            'search'    => $s,
            'type'      => $t,
        ]);
    }

    public function show_one($admin_id)
    {
        $admin = admin::find($admin_id);
        return view('content.admin.ViewSeller',[
            'admin' => $admin,
        ]);
    }

    public function edit($admin_id, $type)
    {
        $admin = admin::find($admin_id);
        $admin->level = $type;
        $admin->save();
        return redirect()->route('admin.viewSeller', $admin_id)->with('success','Cập nhập tài khoản thành công');
    }

    public function update(Request $request)
    {
        try {
            $admin = admin::find(session()->get('id'));
            if (request()->avatar != null){
                $filename = $admin->name.'.'.time().'.'.request()->avatar->getClientOriginalExtension();
                request()->avatar->move(public_path('images\avatar'), $filename);
                $admin->avatar = $filename;
            }
            $admin->name            = $request->get('name');
            $admin->email           = $request->get('email');
            $admin->phone_number    = $request->get('phone_number');
            $admin->company         = $request->get('company');
            $admin->address         = $request->get('address');
            $admin->save();
            $this->session_save($admin->id,$admin->name,$admin->avatar,$admin->level);
            if ($admin->level == 3){
                return redirect()->route('admin.myAccount')->with('success','Chỉnh sửa thông tin thành công');
            }
            return redirect()->route('seller.myAccount')->with('success','Chỉnh sửa thông tin thành công');
        } catch (\Throwable $th) {
            if (session()->get('level') == 3){
                return redirect()->route('admin.myAccount')->with('error','Chỉnh sửa thông tin thất bại. trùng email');
            }
            return redirect()->route('seller.myAccount')->with('error','Chỉnh sửa thông tin thất bại. trùng email');
        }
    }
    public function updatePassword(Request $request){
        $admin = admin::find(session()->get('id'));
        if (!Hash::check($request->get('password'), $admin->password)){
            return redirect()->route('admin.myAccount')->with('error','Mật khẩu không đúng, vui lòng nhập lại để thay đổi');
        }
        $admin->password = Hash::make($request->get('password2'));
        $admin->save();
        return redirect()->route('admin.myAccount')->with('success','Đổi mật khẩu tài khoản thành công');
    }

}
