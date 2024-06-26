<x-app>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">


                <div class="card card-primary card-outline">
                    <div class="card-header">
                        <x-button.back-button url="{{ url('admin/struktur-organisasi') }}" />
                    </div>
                    <div class="card-header">
                        <h3 class="card-title">Detail Data</h3>
                    </div>
                  
                    <div class="row mt-3">
                        <div class="col-lg-4">
                            <div class="card mb-4">
                                <div class="card-body text-center">
                                    @if ($pimpinan->foto == $pimpinan->foto)
                                        <img style="width: 100%" src="{{ url("public/$pimpinan->foto") }}"
                                            onerror="this.src='https://bootdey.com/img/Content/avatar/avatar7.png';" alt="avatar"
                                            class="rounded">
                                    @endif
                                    <h2 class="my-3">{{ $pimpinan->jabatan }}</h2>
                                    <h4 class="my-3">{{ $pimpinan->nama_lengkap }}</h4>
                                    <h4 class="my-3">{{ $pimpinan->nip }}</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="card mb-4">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <p class="mb-0">NIK</p>
                                        </div>
                                        <div class="col-sm-7">
                                            <p class="text-muted mb-0">: {{ $pimpinan->nik }}</p>
                                        </div>
                                    </div>
                                    <hr>
            
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <p class="mb-0">Jenis Kelamin</p>
                                        </div>
                                        <div class="col-sm-7">
                                            <p class="text-muted mb-0">: {{ $pimpinan->jenis_kelamin }}</p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <p class="mb-0">Agama</p>
                                        </div>
                                        <div class="col-sm-7">
                                            <p class="text-muted mb-0">: {{ $pimpinan->agama }}</p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <p class="mb-0">Tempat, Tanggal Lahir</p>
                                        </div>
                                        <div class="col-sm-7">
                                            <p class="text-muted mb-0">: {{ $pimpinan->tempat_lahir }},
                                                {{ date('d-m-Y', strtotime($pimpinan->tanggal_lahir)) }}</p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <p class="mb-0">Alamat</p>
                                        </div>
                                        <div class="col-sm-7">
                                            <p class="text-muted mb-0">: {{ $pimpinan->alamat }}</p>
                                        </div>
                                    </div>
                                    <hr>
                                    
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <p class="mb-0">No Hp</p>
                                        </div>
                                        <div class="col-sm-7">
                                            <p class="text-muted mb-0">: {{ $pimpinan->hp }}</p>
                                        </div>
                                    </div>
                                    <hr>
                                    
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <p class="mb-0">Email</p>
                                        </div>
                                        <div class="col-sm-7">
                                            <p class="text-muted mb-0">: {{ $pimpinan->email }}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
            
                        </div>
                    </div>

                </div>

            </div>
            <div class="col-md-1"></div>
        </div>

    </div>
</x-app>
