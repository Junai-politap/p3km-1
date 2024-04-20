<x-app>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <x-button.back-button url="admin/user" />
                    <h1 class="header-title text-center mb-5">Edit Data User</h1>

                    <form action="{{ url('admin/user', $admin->id) }}" method="POST" enctype="multipart/form-data">
                        @method("PUT")
                        @csrf

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label">Nama</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="nama" value="{{ $admin->nama }}">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label">Username</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="username" value="{{ $admin->username }}">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label">Password</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" name="password">
                            </div>
                        </div>
                        <div class="row mb-2">
                            <label class="col-sm-3 col-form-label">Poto</label>
                            <div class="col-md-5">
                                <img src="{{ url("public/$admin->poto") }}" style="width:50%;"
                                onerror="this.src='https://bootdey.com/img/Content/avatar/avatar7.png';">
                            </div>
                            <div class="col-sm-4">
                                <input type="file" class="form-control" name="poto" accept=".jpg, .png, .jpeg" value="{{ $admin->poto }}">
                            </div>
                        </div>

                        <div class="justify-content-end row">
                            <div class="col-sm-9">
                                <button class="btn btn-info waves-effect waves-light float-end"><i
                                        class="fa fa-save"></i> Simpan</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</x-app>
