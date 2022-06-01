<?php

namespace App\Http\Controllers;

use App\Models\image_post;
use App\Http\Requests\Storeimage_postRequest;
use App\Http\Requests\Updateimage_postRequest;

class ImagePostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\Storeimage_postRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Storeimage_postRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\image_post  $image_post
     * @return \Illuminate\Http\Response
     */
    public function show(image_post $image_post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\image_post  $image_post
     * @return \Illuminate\Http\Response
     */
    public function edit(image_post $image_post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\Updateimage_postRequest  $request
     * @param  \App\Models\image_post  $image_post
     * @return \Illuminate\Http\Response
     */
    public function update(Updateimage_postRequest $request, image_post $image_post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\image_post  $image_post
     * @return \Illuminate\Http\Response
     */
    public function destroy(image_post $image_post)
    {
        //
    }
}
