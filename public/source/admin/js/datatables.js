function bindDatatable(tableId) {

    $('#' + tableId).DataTable({
        columnDefs: [
            {
                targets: [ 0, 1, 2 ],
                className: 'mdl-data-table__cell--non-numeric'
            }
        ],
        language: {
            processing:     "Đang xử lý...",
            search:         "Tìm kiếm",
            lengthMenu:     "Xem _MENU_ mục",
            info:           "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
            infoEmpty:      "Đang xem 0 đến 0 trong tổng số 0 mục",
            infoFiltered:   "(được lọc từ _MAX_ mục)",
            infoPostFix:    "",
            zeroRecords:     "Không tìm thấy dòng nào phù hợp",
            paginate: {
                first:      "Đầu",
<<<<<<< HEAD
                previous:   "<",
                next:       ">",
                last:       "Cuối",
=======
                previous:   "Trước",
                next:       "Tiếp",
                last:       "Cuối"
>>>>>>> e007a3acf8356daaa16ea0b763d4b8d8912d0038
            },
            aria: {
                sortAscending:  ": sắp xếp tăng",
                sortDescending: ": sắp xếp giảm"
            }
        }

    });
}
