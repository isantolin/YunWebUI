function formCheck(form) {
    var wifi_ssid = form["wifi.ssid"];
    var wifi_encryption = form["wifi.encryption"];
    var wifi_password = form["wifi.password"];
    var hostname = form["hostname"];
    var password = form["password"];

    var errContainer = document.getElementById("error_container");

    errContainer.innerHTML = "";
    errors = false;

    wifi_password.className = "normal";
    wifi_ssid.className = "normal";
    hostname.className = "normal";
    password.className = "normal";
    errContainer.className = "hidden";


    if (wifi_ssid.value == null || wifi_ssid.value == "") {
        errorHandler(wifi_ssid, errContainer, "Please choose a WiFi network name");
        errors = true;
    }
    if (wifi_encryption.value != "none") {
        if (wifi_password.value == null || wifi_password.value == "") {
            errorHandler(wifi_password, errContainer, "Please choose a WiFi password");
            errors = true;
        } else if (wifi_password.value.length < 8) {
            errorHandler(wifi_password, errContainer, "WiFi password should be 8 char at least");
            errors = true;
        }
    }
    if (hostname.value == null || hostname.value == "") {
        errorHandler(hostname, errContainer, "Please choose a name for your Yún 云");
        errors = true;
    } else if (hostname.value.match(/[^a-zA-Z0-9_]/)) {
        errorHandler(hostname, errContainer, "Incorrect hostname: you can use only characters between a and z, numbers and the underscore (_)");
        errors = true;
    }

    if (password.value != null && password.value != "" && password.value.length < 8) {
        errorHandler(password, errContainer, "Password should be 8 char at least");
        errors = true;
    }

    return !errors;
}

function errorHandler(el, er, msg) {
    el.className = "error";
    er.className = "visible";
    er.innerHTML = "<p>" + er.innerHTML + msg + "<br /></p>";
}

function goto(href) {
    document.location = href;
    return false;
}

function onchange_security(select) {
    var wifi_password_asterisk = document.getElementById("req_3");
    if (select.value == "none") {
        wifi_password_asterisk.setAttribute("style", "visibility: hidden");
    } else {
        wifi_password_asterisk.removeAttribute("style");
    }
}