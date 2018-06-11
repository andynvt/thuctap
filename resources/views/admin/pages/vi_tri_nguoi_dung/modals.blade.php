
<!-- Sart add type Modal -->
@foreach($userLocation as $ul)
<div class="modal fade" id="view-location-{{$ul -> id}}" tabindex="-1" role="dialog" aria-labelledby="list-type" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 50%;">
        <div class="modal-content" >
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="card-body" id="map">

                <div class="map-responsive">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.7926945322533!2d105.7870708008999!3d10.03395864279271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a2111cf0ed%3A0x4c8a499d81395168!2zQ8O0bmcgVmnDqm4gQsOqzIFuIE5pbmggS2nhu4F1IEPhuqduIFRoxqE!5e0!3m2!1svi!2s!4v1526614378134" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</div>
@endforeach
<!--  End Modal -->
