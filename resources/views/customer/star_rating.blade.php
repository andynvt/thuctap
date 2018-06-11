<div style="display: inline-block;" class="rating-component">
    @php

        $star = floatval(str_replace(',', '.', $slot));
        $floor = floor($star);
        $off_star= 5 - ceil($star);
    @endphp

    @for ($i = 0; $i < $floor; $i++)
        <img src="{{asset('storage/image/star-on.png')}}">
    @endfor

    @if ($star - $floor > 0)
        <img src="{{asset('storage/image/star-half-mono.png')}}">
    @endif
    @for ($i = 0; $i < $off_star; $i++)
        <img src="{{asset('storage/image/star-off.png')}}">
    @endfor
</div>
<script>

</script>