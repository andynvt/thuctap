function Time() {
    "use strict";
    var time = new Date(),
        day = time.getDay(),
        month = time.getMonth(),
        year = time.getYear(),
        date = time.getDate(),
        datearray = new Array("Chủ nhật", "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7"),
        montharray = new Array("01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"),
        currentTime = new Date(),
        h = currentTime.getHours(),
        m = currentTime.getMinutes(),
        s = currentTime.getSeconds();
    if (year < 1000) {
        year += 1900;
    }
    if (h === 24) {
        h = 0;
    } else if (h > 12) {
        h = h - 0;
    }
    if (h < 10) {
        h = "0" + h;
    }
    if (m < 10) {
        m = "0" + m;
    }
    if (s < 10) {
        s = "0" + s;
    }

    var Clock = document.getElementById("clockdisplay");
    Clock.innerHTML = " " + datearray[day] + ", " + date + "/" + montharray[month] + "/" + year + " | " + "<i class='fa fa-clock-o' aria-hidden='true'></i> " + h + ":" + m + ":" + s;
    setTimeout(Time, 1000);
}