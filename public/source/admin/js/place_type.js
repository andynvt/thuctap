
function infoMessage(heading, msg) {
    $.toast({
        heading: heading,
        text: msg,
        loader: false,
        icon: 'info',
        position: 'bottom-right'
    });
}

function successMessage(heading, msg) {
    $.toast({
        heading: heading,
        text: msg,
        loader: false,
        icon: 'success',
        position: 'bottom-right'
    });
}

function errorMessage(heading, msg) {
    $.toast({
        heading: heading,
        text: msg,
        loader: false,
        icon: 'error',
        position: 'bottom-right'
    });
}
function warningMessage(heading, msg) {
    $.toast({
        heading: heading,
        text: msg,
        loader: false,
        icon: 'warning',
        position: 'bottom-right',
        loaderBg: red
    });
}



// function alertDelete(text) {
//     swal({
//         title: 'Bạn chắc muốn xóa nó chứ?',
//         text: 'Dữ liệu liên quan sẽ bị xóa hoàn toàn!',
//         icon: 'warning',
//         buttons: true,
//         dangerMode: true,
//     })
//         .then((willDelete) => {
//             if (willDelete) {
//                 swal("Dữ liệu đã được xóa thành công!", {
//                     icon: "success",
//                 });
//             } else {
//                 swal("Your imaginary file is safe!");
//             }
//         });
//
// }
