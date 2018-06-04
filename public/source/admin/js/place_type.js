//
// function bindSelectAll(id) {
//     let selector = $('#' + id);
//     $(selector).checkbox({
//         onChange() {
//             let checked = $(selector).find('input').prop('checked');
//             $('.form-check.child.checkbox').checkbox(checked ? 'check': 'uncheck');
//         }
//     });
// }
//     function bindSelectAll(id) {
//         alert("đâ");
//         // let selector = $('#' + id);
//         // $(selector).checkbox({
//         //     onChange() {
//         //         let checked = $(selector).find('input').prop('checked');
//         //         $('.ui.child.checkbox').checkbox(checked ? 'check': 'uncheck');
//         //     }
//         // });
//     }
function confirmDelete() {
    if ($('.ui.child.checkbox input:checked').length < 1)
        return false;

    return confirm('Bạn chắc chắn xóa các mục vừa chọn?');
}