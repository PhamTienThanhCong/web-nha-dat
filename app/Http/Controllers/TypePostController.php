<?php

namespace App\Http\Controllers;

use App\Models\type_post;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class TypePostController extends Controller
{
    public function index()
    {
        $types = type_post::query()
                ->select('*')
                ->get();
        return view('content.admin.managerTag',[
            'types' => $types,
        ]);
    }

    public function create(Request $request)
    {
        try {
            $slug = Str::of($request->get('link_name'))->slug('-');
            type_post::query()
            ->create([
                'link_name' => $request->get('link_name'),
                'link'      => $slug,
            ]);
            return redirect()->route('admin.managerTag')->with('success','Thêm thẻ thành công');
        } catch (\Throwable $th) {
            return redirect()->route('admin.managerTag')->with('error','Thêm thẻ thất bại. kiểm tra trùng');
        }
    }
    
    public function destroy(type_post $tag_id)
    {
        $tag_id->delete();
        return redirect()->route('admin.managerTag')->with('success','Xóa thẻ thành công');
    }
}
