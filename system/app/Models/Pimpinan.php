<?php

namespace App\Models;

use Illuminate\Support\Str;
use App\Models\Model;


class Pimpinan extends Model
{

	protected $table = "pimpinan";
	
 
    function handleUploadFoto()
    {
        if (request()->hasFile('foto')) {
            $foto = request()->file('foto');
            $destination = "pimpinan";
            $randomStr = Str::random(5);
            $filename = time() . "-"  . $randomStr . "."  . $foto->extension();
            $url = $foto->storeAs($destination, $filename);
            $this->foto = "app/" . $url;
            $this->save();

        }
    }

}
