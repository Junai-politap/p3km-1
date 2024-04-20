<x-app>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">

                
                <div class="card card-primary card-outline">
                    <div class="card-header">
                        <x-button.back-button url="{{ url('admin/user') }}" />
                        <a href="{{ url("admin/user/$admin->id") }}/edit" class="btn btn-primary btn-sm float-end"><span class="fa fa-edit"></span> Edit Data</a>
                    </div>
                    <div class="card-body box-profile">
                        <div class="text-center">
                            <img class="profile-user-img img-fluid circle" src="{{ url("public/$admin->poto") }}"
                                style="width:100%">
                        </div>

                        <h3 class="profile-username text-center">
                            {{ $admin->nama }}
                        </h3>
                    </div>
                    
                    
                </div>
                

                
                {{-- <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">About Me</h3>
                    </div>
                    
                    <div class="card-body">
                        

                        <strong><i class="fas fa-map-marker-alt mr-1"></i> Location</strong>

                        <p class="text-muted">{{ $admin->alamat }}</p>

                        <hr>

                        <strong><i class="fas fa-phone-alt mr-1"></i> No Telp</strong>

                        <p class="text-muted">
                            <span class="tag tag-danger">{{ $admin->no_telp }}</span>
                        </p>
                    </div>
                    
                </div> --}}
                
            </div>
            <div class="col-md-3"></div>
        </div>
        
    </div>
</x-app>