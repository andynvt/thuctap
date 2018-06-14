
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

function sweetAlertClick(title,text,heading) {
    swal(title, text, heading);
}


