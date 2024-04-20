<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Berita;
use App\Models\Penelitian;
use App\Models\Pengabdian;
use App\Models\Profil;
use App\Models\Seminar;
use App\Models\Slide;
use Illuminate\Http\Request;

class WebController extends Controller
{
    
    public function index()
    {
        $data['list_slide'] = Slide::all();
        $data['list_profil'] = Profil::all();
        $data['list_berita'] = Berita::all();
        $data['list_seminar'] = Seminar::all();
        
        $data['penelitian_internal'] = Penelitian::where('jenis_penelitian', 'Internal')->count();
        $data['penelitian_eksternal'] = Penelitian::where('jenis_penelitian', 'Eksternal')->count();
        $data['penelitian_mahasiswa'] = Penelitian::where('jenis_penelitian', 'Mahasiswa')->count();
        $data['pengabdian_internal'] = Pengabdian::where('jenis_pengabdian', 'Internal')->count();
        $data['pengabdian_eksternal'] = Pengabdian::where('jenis_pengabdian', 'Eksternal')->count();

        return view('web.index', $data);
    }

    
}
