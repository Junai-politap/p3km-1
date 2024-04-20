<section class="topbar-one">
    <div class="container">
        <div class="topbar-one__left">
            <a href="#">
                <i class="fa fa-map-marker-alt"></i>
                Jalan Rangge Sentap, Dalong, Sukaharja, Kec. Delta Pawan, 
                <br>Kabupaten Ketapang, Kalimantan Barat 78112
            </a>
            <a href="#">
                <i class="far fa-clock"></i>
                Senin - Jumat 07.00 - 16.00
            </a>
            <a href="tel:+ (0534) 3037213">
                <i class="far fa-phone"></i>
                + (0534) 3037213
            </a>
        </div>

        
    </div>
</section>

<nav class="main-nav-one stricky">
    <div class="container">
        <div class="inner-container">
           
            <div class="main-nav__main-navigation">
                <ul class="main-nav__navigation-box">
                    <li class="dropdown">
                        <a href="{{ url('/') }}">Dashboard</a>
                        
                    </li>
                    <li class="dropdown">
                        <a href="">Profil</a>
                        <ul>
                            <li><a href="{{ url('profil') }}">Profil P3KM</a></li>
                            <li><a href="{{ url('visi-misi') }}">Visi & Misi</a></li>
                            <li><a href="{{ url('renstra') }}">Renstra</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#">Master Data</a>
                        <ul>
                            
                            <li class="dropdown">
                                <a href="#">Penelitian</a>
                                <ul>
                                    <li><a href="{{ url('penelitian-internal') }}">Internal</a></li>
                                    <li><a href="{{ url('penelitian-eksternal') }}">Ekternal</a></li>
                                    <li><a href="{{ url('penelitian-mahasiswa') }}">Mahasiswa</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#">Pengabdian</a>
                                <ul>
                                    <li><a href="{{ url('pengabdian-internal') }}">PKM Internal</a></li>
                                    <li><a href="{{ url('pengabdian-eksternal') }}">PKM Ekternal</a></li>
                                </ul>
                            </li>
                            
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="{{ url('publikasi') }}">Publikasi</a>
                        
                    </li>
                    <li class="dropdown">
                        <a href="#">Sentral Layanan</a>
                        <ul>
                            <li><a href="{{ url('hki') }}">Data HKI</a></li>
                            <li><a href="{{ url('prosedur-hki') }}">Prosedur HKI</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#">Kegiatan</a>
                        <ul>
                            <li><a href="{{ url('seminar') }}">Seminar</a></li>
                            <li><a href="{{ url('galeri') }}">Galeri</a></li>
                            
                        </ul>
                    </li>

                    <li>
                        <a href="{{ url('berita') }}">Berita</a> 
                    </li>
                  
                </ul>
            </div>
           
        </div>
    </div>
</nav>

<div class="side-menu__block">

    <a href="#" class="side-menu_toggler side-menu__close-btn"><i class="fa fa-times"></i>
        

    <div class="side-menu__block-overlay custom-cursor__overlay">
        <div class="cursor"></div>
        <div class="cursor-follower"></div>
    </div>
    <div class="side-menu__block-inner ">

        <a href="index.html" class="side-menu__logo"><img src="{{url('public/web')}}/logo.png" alt=""
                width="190"></a>
        <nav class="mobile-nav__container">
            <!-- content is loading via js -->
        </nav>
        <p class="side-menu__block__copy">(c) 2024 P3KM - Politap.</p>
        
    </div>
</div>