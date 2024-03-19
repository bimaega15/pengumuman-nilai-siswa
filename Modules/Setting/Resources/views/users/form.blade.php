@if (isset($profile))
    <form method="post" action="{{ secure_url('setting/users/' . $profile->users_id . '?_method=put') }}"
        id="form-submit">
    @else
        <form method="post" action="{{ secure_url('setting/users') }}" id="form-submit">
@endif
<x-modal.modal-body>
    <input type="hidden" name="id" value="{{ isset($profile) ? $profile->id : '' }}">
    <input type="hidden" name="password_old" value="{{ isset($profile) ? $profile->users->password : '' }}">
    <div class="col-span-12 sm:col-span-12 mb-2">
        <ul class="nav nav-link-tabs" role="tablist">
            <li id="biodata_diri_tab" class="nav-item flex-1" role="presentation">
                <button class="nav-link w-full py-2 active" data-tw-toggle="pill" data-tw-target="#biodata_diri"
                    type="button" role="tab" aria-controls="biodata_diri" aria-selected="true"> BIODATA DIRI
                </button>
            </li>
        </ul>
        <div class="tab-content mt-5">
            <div id="biodata_diri" class="tab-pane leading-relaxed active" role="tabpanel"
                aria-labelledby="biodata_diri_tab">
                @include('setting::users.partials.biodata')
            </div>

        </div>
    </div>


</x-modal.modal-body>

<x-modal.modal-footer>
    <div class="form-group d-flex">
        <button type="button" class="btn btn-secondary d-flex align-items-center justify-content-center mr-2"
            data-tw-dismiss="modal" href="javascript:;">
            <i class="zmdi zmdi-close mr-1"></i> Close
        </button>
        <button type="submit" class="btn btn-primary mr-2" id="btn_submit"><i class="zmdi zmdi-mail-send mr-1"></i>
            Simpan</button>
    </div>
</x-modal.modal-footer>
</form>


<script type="text/javascript" src="{{ secure_asset('js/setting/users/form.js') }}"></script>
