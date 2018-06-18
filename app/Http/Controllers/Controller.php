<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    
    public function GetDrivingDistance($id,$lat1, $long1, $lat2, $long2){
        $url = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=".$lat1.",".$long1."&destinations=".$lat2.",".$long2."&mode=driving&language=pl-PL";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_PROXYPORT, 3128);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        $response = curl_exec($ch);
        curl_close($ch);
        $response_a = json_decode($response, true);
        // $dist = $response_a['rows'][0]['elements'][0]['distance']['text'];
        // $time = $response_a['rows'][0]['elements'][0]['duration']['text'];
        $dist = $response_a['rows'][0]['elements'][0]['distance']['value'];
        $time = $response_a['rows'][0]['elements'][0]['duration']['value'];

        return array('id' => $id,'distance' => $dist, 'time' => $time);
    }


    // public function displayIntro($img, $address, $dist, $time, $pname, $pdes)
    // {
    //     $html = "";

    //     $html .= '<div class="carousel-item">';
    //         $html .= '<img class="d-block w-100" src="storage/image/'.$img.'" alt="First slide" style="height: 100vh">';
    //         $html .= '<div class="place-intro">';
    //             $html .= '<a href="#" style="color: white">';
    //                 $html .= '<h3>Địa điểm gần đây</h3>';
    //                 $html .= '<h1>'.$pname.'</h1>';
    //                 $html .= '<div class="row">';
    //                     $html .= '<div class="col-6 place-intro-left">';
    //                         $html .= '<h4>Địa chỉ:</h4>';
    //                         $html .= '<h4>Khoảng cách:</h4>';
    //                         $html .= '<h4>Thời gian đi:</h4>';
    //                         $html .= '<h4>Đánh giá:</h4>';
    //                         $html .= '<h4>Loại hình:</h4>';
    //                     $html .= '</div>';
    //                     $html .= '<div class="col-6 place-intro-right">';
    //                         $html .= '<h4>'.$address.'</h4>';
    //                         $html .= '<h4>'.$dist.' km</h4>';
    //                         $html .= '<h4>'.$time.' phút (xe ô tô)</h4>';
    //                         $html .= '<h4>4.3 / 5 (20 đánh giá)</h4>';
    //                         $html .= '<h4>'.$pname.'</h4>';
    //                     $html .= '</div>';
    //                 $html .= '</div>';
    //             $html .= '</a>';
    //         $html .= '</div>';
    //         $html .= '<div class="carousel-caption d-none d-md-block place-info-box">';
    //           $html .= '<div class="brand">';
    //             $html .= '<div class="card card-nav-tabs hide-place-info-box">';
    //               $html .= '<div class="card-header card-header-primary">';
    //                 $html .= '<div class="nav-tabs-navigation">';
    //                   $html .= '<div class="nav-tabs-wrapper" style="position: relative;">';
    //                     $html .= '<ul class="nav nav-tabs" data-tabs="tabs">';
    //                       $html .= '<li class="nav-item">';
    //                         $html .= '<a class="nav-link active" href="#descript" data-toggle="tab">';
    //                           $html .= '<i class="material-icons">description</i> Mô tả';
    //                         $html .= '</a>';
    //                       $html .= '</li>';
    //                       $html .= '<li class="nav-item">';
    //                         $html .= '<a class="nav-link" href="#" data-target="#modalimg" data-toggle="modal">';
    //                           $html .= '<i class="material-icons">insert_photo</i> Hình ảnh';
    //                         $html .= '</a>';
    //                       $html .= '</li>';
    //                     $html .= '</ul>';
    //                   $html .= '</div>';
    //                 $html .= '</div>';
    //               $html .= '</div>';
    //               $html .= '<div class="card-body responsive-card-body">';
    //                 $html .= '<div class="tab-content text-center">';
    //                   $html .= '<div class="tab-pane active">';
    //                     $html .= '<p>'.$pdes.'</p>';
    //                   $html .= '</div>';
    //                   $html .= '<div class="tab-pane">';
    //                     $html .= '<div class="col-md-12 place-info-img">';
    //                     $html .= '</div>';
    //                   $html .= '</div>';
    //                 $html .= '</div>';
    //               $html .= '</div>';
    //             $html .= '</div>';
    //           $html .= '</div>';
    //           $html .= '<button class="btn btn-primary btn-fab home-minimize-btn"><i class="material-icons">keyboard_arrow_up</i></button>';
    //         $html .= '</div>';
    //     $html .= '</div>';

    //     return $html;
    // }
}
