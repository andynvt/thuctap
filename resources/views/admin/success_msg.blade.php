@if(Session::has('success'))
    {{--@push('script')--}}
        <script>
            $.toast({
                heading: 'Thông báo',
                text: '{{ Session::get('success') }}',
                icon: 'success',
                position: 'bottom-right',
                loader: false
            });
        </script>
    {{--@endpush--}}
@endif

    {{--@if(Session::has('success'))--}}
    {{--<div class="alert alert-info alert-dismissible" role="alert">--}}
        {{--<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>--}}
    {{--{{Session::get('success')}}--}}
    {{--</div>--}}
    {{--@endif--}}