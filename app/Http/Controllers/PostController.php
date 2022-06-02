<?php

namespace App\Http\Controllers;

use App\Models\image_post;
use App\Models\post;
use Illuminate\Support\Str;
use App\Models\type_post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $types = type_post::query()
                ->select('*')
                ->get();
        return view('content.seller.addPost',[
            'types' => $types,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $posts = post::query()
            ->create([
                'admins_id'     => session()->get('id'),
                'title'         => $request->get('title'),
                'price'         => $request->get('price'),
                'price_type'    => $request->get('price_type'),
                'size'          => $request->get('size'),
                'address'       => $request->get('address'),
                'description1'  => $request->get('description1'),
                'description2'  => $request->get('description2'),
                'type'          => $request->get('type'),
            ]);
        foreach($request->file('photos') as $file){
            $name = now()->timestamp . Str::random(20) .".". pathinfo($file->getClientOriginalName() , PATHINFO_EXTENSION);
            $file->move(public_path()."/images/post/", $name);  
            image_post::query()
                ->create([
                    'posts_id'  => $posts->id,
                    'img'       => $name,
                ]);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorepostRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store()
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatepostRequest  $request
     * @param  \App\Models\post  $post
     * @return \Illuminate\Http\Response
     */
    public function update()
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(post $post)
    {
        //
    }
}
