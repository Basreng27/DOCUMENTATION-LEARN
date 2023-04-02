<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UploadCOntroller extends Controller
{
    public function upload(Request $request): string
    {
        $picture = $request->file("picture");
        // dibuatkan otomatis folder bernama pictures, nama file, nama storage
        $picture->storePubliclyAs("pictures", $picture->getClientOriginalName(), "public");

        return "OK : " . $picture->getClientOriginalName();
    }
}
