<x-web>
    <section class="page-header"
        style="background-image: url(public/web/assets/images/background/page-header-about-1.jpg);">
        <div class="container">
            <h2>PROFIL P3KM</h2>

        </div>
    </section>

    <section class="about-one">
        <div class="container">
            <div class="row">
                <div class="col-xl-6">
                    <div class="about-one__image">
                        <img src="{{ url('public/web') }}/politap.png"
                            style="object-fit: cover; position: static; width: 70%;">

                    </div>
                </div>
                <div class="col-xl-6 d-flex">
                    <div class="my-auto">
                        <div class="about-one__content">
                            <div class="block-title text-left">

                                <h3>PROFIL <br> P3KM POLITAP</h3>
                            </div>

                            <div class="">
                                <div class="tab-pane fade show active animated fadeInUp">
                                    @foreach ($list_profil as $profil)
                                        <p>
                                            {!! nl2br($profil->text) !!}
                                        </p>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</x-web>
