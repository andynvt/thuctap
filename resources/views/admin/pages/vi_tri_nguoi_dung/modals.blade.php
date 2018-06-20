<script src="http://maps.google.com/maps/api/js?sensor=false"
        type="text/javascript"></script>
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
            <div class="card-body">
                <div class="map-responsive">
                    {{--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.7926945322533!2d105.7870708008999!3d10.03395864279271!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a2111cf0ed%3A0x4c8a499d81395168!2zQ8O0bmcgVmnDqm4gQsOqzIFuIE5pbmggS2nhu4F1IEPhuqduIFRoxqE!5e0!3m2!1svi!2s!4v1526614378134" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>--}}
                    <div id="map-{{$ul -> id}}" style="width: 100%; height: 400px;"></div>
                    <script type="text/javascript">
                        var coor =  '{{$ul -> coor}}';
                        var coord = coor.split(",");


                        var locations = [
                            ['Trung Tâm Hội Nghị Tiệc Cưới CB Diamond Palace Cần Thơ', coord[0], coord[1], 4],
                        ];

                        var map = new google.maps.Map(document.getElementById('map-{{$ul -> id}}'), {
                            zoom: 15,
                            center: new google.maps.LatLng(coord[0], coord[1]),
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        });

                        var infowindow = new google.maps.InfoWindow();

                        var marker, i;

                        for (i = 0; i < locations.length; i++) {
                            marker = new google.maps.Marker({
                                position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                                map: map
                            });

                            google.maps.event.addListener(marker, 'click', (function(marker, i) {
                                return function() {
                                    infowindow.setContent(locations[i][0]);
                                    infowindow.open(map, marker);
                                }
                            })(marker, i));
                        }
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>
@endforeach
<!--  End Modal -->

{{--Modal delete--}}
@foreach($userLocation as $ul)
    <div class="modal fade" id="modal-delete-{{$ul->id}}" tabindex="-1" role="dialog" aria-labelledby="delete" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title title " id="delete">Bạn chắc chắn muốn xóa phải không?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p class="text-black-50">Các dữ liệu liên quan đến sẽ bị xóa hoàn toàn. Bạn cần suy nghĩ trước khi xóa?</p>
                </div>
                <div class="modal-footer">
                    <form action="{{route('admin.xoa-vi-tri',[$ul->id])}}">
                        {{ method_field('DELETE') }}
                        {{ csrf_field() }}
                        <button type="button" class="btn btn-secondary btn-round" data-dismiss="modal">ĐÓNG</button>
                        <button type="submit" class="btn btn-primary btn-round">OK</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
@endforeach
<!--  End Modal -->


