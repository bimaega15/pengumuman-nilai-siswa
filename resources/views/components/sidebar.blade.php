<aside id="leftsidebar" class="sidebar">
    <div class="menu">
        <ul class="list">
            <li>
                <div class="user-info">
                    <div class="image"><a href="#"><img src="{{ asset('backend/html/') }}/assets/images/foto.jpg"
                                alt="User"></a></div>
                    <div class="detail">
                        <h4>{{ Auth::user()->name }}</h4>
                        <small>Admin</small>
                    </div>
                </div>
            </li>
            {{-- <li class="header">MAIN</li> --}}
            <br>
            {!! $outputSidebar !!}

        </ul>
    </div>
</aside>
