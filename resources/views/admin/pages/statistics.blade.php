@extends('admin.master')

@section('content')
<div class="content">
    <div class="card">
        <div class="row">
            <div class="col-4">
                <div class="card">
                    <div class="place-selection">
                        <div class="form-group">
                            <label class="control-label" for="thanhpho">Chọn thành phố</label>
                            <select name="" id="">
                                <option value="Cần Thơ">Cần Thơ</option>
                                <option value="Sóc Trăng">Sóc Trăng</option>
                                <option value="Bạc Liêu">Bạc Liêu</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12">
                <div class="place-statistic">
                    <div class="row">
                        <div class="col-12">
                            <div class="card card-chart">
                                <div class="card-header">
                                    <h4 class="card-title">Thống kê về thành phố <b>Cần Thơ</b></h4>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area" style="height: unset">
                                        <canvas id="bar-chart-grouped" width="800" height="450"></canvas>
                                        <script>
                                            new Chart(document.getElementById("bar-chart-grouped"), {
                                                type: 'bar',
                                                data: {
                                                  labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
                                                  datasets: [
                                                    {
                                                      label: "Du lịch",
                                                      backgroundColor: "#3e95cd",
                                                        data: [ @foreach($month_dl as $m) {{$m}}, @endforeach ],
                                                    }, {
                                                      label: "Ăn uống",
                                                      backgroundColor: "#8e5ea2",
                                                      data: [@foreach($month_au as $m) {{$m}}, @endforeach]
                                                    },
                                                    {
                                                      label: "Nghỉ ngơi",
                                                      backgroundColor: "pink",
                                                      data: [@foreach($month_ks as $m) {{$m}}, @endforeach]
                                                    }
                                                  ]
                                                },
                                                options: {
                                                  title: {
                                                    display: true,
                                                    text: 'Lượng du khách',
                                                    fontSize: 25
                                                  }
                                                }
                                            });
                                        </script>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="now-ui-icons arrows-1_refresh-69"></i> Tải lại
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- place tab -->
            <div class="col-12">
                <div class="place-statistic">
                    <div class="card card-nav-tabs">
                        <div class="card-header tab-header">
                          <div class="nav-tabs-navigation">
                            <div class="nav-tabs-wrapper">
                              <ul class="nav nav-tabs" data-tabs="tabs">
                                <li class="nav-item">
                                  <a class="nav-link active" href="#dulich" data-toggle="tab">
                                    <i class="now-ui-icons location_pin"></i> Du lịch
                                  </a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" href="#anuong" data-toggle="tab">
                                    <i class="fas fa-utensils"></i> Ăn uống
                                  </a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" href="#nghingoi" data-toggle="tab">
                                    <i class="fas fa-bed"></i> Nghỉ ngơi
                                  </a>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>

                        <div class="card-body ">
                            <div class="tab-content text-center">

                                <!-- du lịch -->
                                <div class="tab-pane active" id="dulich">
                                    <div class="card-chart">
                                        <div class="card-body">
                                            <div class="chart-area" style="height: unset">
                                                <!-- id (cantho) thay đổi theo địa điểm -->
                                                <canvas id="cantho-play" width="800" height="450"></canvas>
                                                <script>
                                                    new Chart(document.getElementById("cantho-play"), {
                                                        type: 'line',
                                                        data: {
                                                            labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
                                                            datasets: [

                                                                @foreach($gr_dl as $g)
                                                                {
                                                                data: [0,0],
                                                                label: "{{$g[0]->name}}",
                                                                borderColor: "{{$g['color']}}",
                                                                {{--color: "{{$g['color']}}",--}}
                                                                fill: false
                                                              },
                                                                @endforeach

                                                              //   {
                                                              //   data: [282,350,411,502,635,809,947,1402,3700,5267],
                                                              //   label: "Chợ nổi Cái Răng",
                                                              //   borderColor: "#8e5ea2",
                                                              //   fill: false
                                                              // }, {
                                                              //   data: [168,170,178,190,203,276,408,547,675,734],
                                                              //   label: "Thiền viện Trúc Lâm phương Nam",
                                                              //   borderColor: "#3cba9f",
                                                              //   fill: false
                                                              // }, {
                                                              //   data: [40,20,10,16,24,38,74,167,508,784],
                                                              //   label: "Vườn cò Bằng Lăng",
                                                              //   borderColor: "#e8c3b9",
                                                              //   fill: false
                                                              // }, {
                                                              //   data: [6,3,2,2,7,26,82,172,312,433],
                                                              //   label: "Nhà cổ Bình Thuỷ",
                                                              //   borderColor: "#c45850",
                                                              //   fill: false
                                                              // }
                                                            ]
                                                          },
                                                          options: {
                                                            title: {
                                                              display: true,
                                                              text: 'Số lượng khách tham quan du lịch năm 2018',
                                                              fontSize: 25
                                                            }
                                                          }
                                                        });
                                                </script>
                                            </div>
                                        </div>
                                        <div class="card-footer text-left">
                                            <div class="stats">
                                                <i class="now-ui-icons arrows-1_refresh-69"></i> Tải lại
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end du lịch -->

                                <!-- ăn uống -->
                                <div class="tab-pane" id="anuong">
                                    <div class="card-chart">
                                        <div class="card-body">
                                            <div class="chart-area" style="height: unset">
                                                <canvas id="cantho-anuong"></canvas>
                                                <script>
                                                    new Chart(document.getElementById("cantho-anuong"), {
                                                        type: 'line',
                                                        data: {
                                                            labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
                                                            datasets: [{ 
                                                                data: [86,114,106,106,107,111,133,221,783,2478],
                                                                label: "Hoa Sứ",
                                                                borderColor: "#3e95cd",
                                                                fill: false
                                                              }, { 
                                                                data: [282,350,411,502,635,809,947,1402,3700,5267],
                                                                label: "Cây bưởi",
                                                                borderColor: "#8e5ea2",
                                                                fill: false
                                                              }, { 
                                                                data: [168,170,178,190,203,276,408,547,675,734],
                                                                label: "Biển Đông",
                                                                borderColor: "#3cba9f",
                                                                fill: false
                                                              }, { 
                                                                data: [40,20,10,16,24,38,74,167,508,784],
                                                                label: "Năm Sánh",
                                                                borderColor: "#e8c3b9",
                                                                fill: false
                                                              }, { 
                                                                data: [6,3,2,2,7,26,82,172,312,433],
                                                                label: "Starbucks",
                                                                borderColor: "#c45850",
                                                                fill: false
                                                              }
                                                            ]
                                                          },
                                                          options: {
                                                            title: {
                                                              display: true,
                                                              text: 'Lượng du khách ăn uống theo địa điểm trong năm',
                                                              fontSize: 20
                                                            }
                                                          }
                                                        });
                                                </script>
                                            </div>
                                            <div class="card-footer text-left">
                                                <div class="stats">
                                                    <i class="now-ui-icons arrows-1_refresh-69"></i> Tải lại
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end ăn uống -->

                                <!-- nghỉ ngơi -->
                                <div class="tab-pane" id="nghingoi">
                                    <div class="card-chart">
                                        <div class="card-body">
                                            <div class="chart-area" style="height: unset">
                                                <canvas id="cantho-khachsan"></canvas>
                                                <script>
                                                    new Chart(document.getElementById("cantho-khachsan"), {
                                                        type: 'line',
                                                        data: {
                                                            labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
                                                            datasets: [{ 
                                                                data: [86,114,106,106,107,111,133,221,783,2478],
                                                                label: "Ninh Kiều 2",
                                                                borderColor: "#3e95cd",
                                                                fill: false
                                                              }, { 
                                                                data: [282,350,411,502,635,809,947,1402,3700,5267],
                                                                label: "Vincom Plaza",
                                                                borderColor: "#8e5ea2",
                                                                fill: false
                                                              }, { 
                                                                data: [168,170,178,190,203,276,408,547,675,734],
                                                                label: "Gold",
                                                                borderColor: "#3cba9f",
                                                                fill: false
                                                              }, { 
                                                                data: [40,20,10,16,24,38,74,167,508,784],
                                                                label: "Mường Thanh",
                                                                borderColor: "#e8c3b9",
                                                                fill: false
                                                              }, { 
                                                                data: [6,3,2,2,7,26,82,172,312,433],
                                                                label: "Ninh Kiều 1",
                                                                borderColor: "#c45850",
                                                                fill: false
                                                              }
                                                            ]
                                                          },
                                                          options: {
                                                            title: {
                                                              display: true,
                                                              text: 'Lượng du khách nghỉ ngơi theo địa điểm trong năm',
                                                              fontSize: 20
                                                            }
                                                          }
                                                        });
                                                </script>
                                            </div>
                                            <div class="card-footer text-left">
                                                <div class="stats">
                                                    <i class="now-ui-icons arrows-1_refresh-69"></i> Tải lại
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end nghỉ ngơi -->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection