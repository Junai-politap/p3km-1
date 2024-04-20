<x-web>
    <section class="page-header page-header__dark">
        <div class="container" style="height: -10px">
            <h2> Seminar</h2>
        </div>
    </section>
    <section class="event-one">
        <div class="container">
            <div class="block-title text-center">
            </div>
            <div class="row high-gutter">
                @foreach ($list_seminar as $seminar)
                    <div class="col-lg-4">
                        <div class="event-one__single">
                            <div class="event-one__image">
                                <img src="{{ url("public/$seminar->poto") }}"
                                    style="object-fit: cover; position: static; width: 100%; height: 300px;">
                                <a href="#"><i class="fal fa-plus"></i></a>
                            </div>
                            <div class="event-one__content">
                                <div class="event-one__content-inner">
                                    <div class="event-one__date">
                                        <div class="event-one__date-inner">
                                            <b>{{ date('d', strtotime($seminar->tanggal_seminar)) }}</b>
                                            <span>{{ date('M', strtotime($seminar->tanggal_seminar)) }}</span>
                                        </div>
                                    </div>
                                    <h3><a href="#">{{ $seminar->nama_seminar }}</a></h3>
                                    <p>
                                        <a href="{{$seminar->link_seminar}}" target="_blank">{{ $seminar->link_seminar }}</a>
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
</x-web>
