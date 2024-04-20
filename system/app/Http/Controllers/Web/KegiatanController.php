<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Galeri;
use App\Models\Seminar;
use Illuminate\Http\Request;

class KegiatanController extends Controller
{
    public function seminar() {
        $data['list_seminar'] = Seminar::all();

        return view('web.kegiatan.seminar', $data);
    }


    public function galeri() {
        $data['list_galeri'] = Galeri::all();

        return view('web.kegiatan.galeri', $data);
    }
}
