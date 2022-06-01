<?php

namespace App\Http\Controllers;

use App\Models\type_post;
use App\Http\Requests\Storetype_postRequest;
use App\Http\Requests\Updatetype_postRequest;

class TypePostController extends Controller
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
     * @param  \App\Http\Requests\Storetype_postRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Storetype_postRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\type_post  $type_post
     * @return \Illuminate\Http\Response
     */
    public function show(type_post $type_post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\type_post  $type_post
     * @return \Illuminate\Http\Response
     */
    public function edit(type_post $type_post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\Updatetype_postRequest  $request
     * @param  \App\Models\type_post  $type_post
     * @return \Illuminate\Http\Response
     */
    public function update(Updatetype_postRequest $request, type_post $type_post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\type_post  $type_post
     * @return \Illuminate\Http\Response
     */
    public function destroy(type_post $type_post)
    {
        //
    }
}
