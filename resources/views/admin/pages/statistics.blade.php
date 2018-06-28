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
                                                                data: [ @foreach ($m_dl[$g[0]->id] as $mdl) {{$mdl}}, @endforeach ],
                                                                label: "{{$g[0]->name}}",
                                                                borderColor: "{{$g['color']}}",
                                                                backgroundColor: "{{$g['color']}}",
                                                                fill: false
                                                              },
                                                                @endforeach
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
                                                            datasets: [
                                                                    @foreach($gr_au as $g)
                                                                {
                                                                    data: [ @foreach ($m_au[$g[0]->id] as $mdl) {{$mdl}}, @endforeach ],
                                                                    label: "{{$g[0]->name}}",
                                                                    borderColor: "{{$g['color']}}",
                                                                    backgroundColor: "{{$g['color']}}",
                                                                    fill: false
                                                                },
                                                                @endforeach
                                                            ]
                                                          },
                                                          options: {
                                                            title: {
                                                              display: true,
                                                              text: 'Số lượng khách tham quan ăn uống năm 2018',
                                                              fontSize: 25
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
                                                            datasets: [
                                                                    @foreach($gr_ks as $g)
                                                                {
                                                                    data: [ @foreach ($m_ks[$g[0]->id] as $mdl) {{$mdl}}, @endforeach ],
                                                                    label: "{{$g[0]->name}}",
                                                                    borderColor: "{{$g['color']}}",
                                                                    backgroundColor: "{{$g['color']}}",
                                                                    fill: false
                                                                },
                                                                @endforeach
                                                            ]
                                                          },
                                                          options: {
                                                            title: {
                                                              display: true,
                                                              text: 'Số lượng khách nghỉ ngơi năm 2018',
                                                              fontSize: 25
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