<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
  <style type="text/css">
  html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
  }

  ul {
    list-style: none;
  }

  .hidden {
    display: none;
  }

  .visible {
    display: block;
  }

  .wrapper {
    position: relative;
    padding: 2em;
  }

  li {
    margin-bottom: 1.25em;
  }

  ul li:last-child {
    margin-bottom: 0;
  }

  .clear {
    clear: both;
  }

  input.error {
    background-color: #fee3e2;
    border: 1px solid #c37676;
  }

  body {
    /*background: #00979c url(bg.png) repeat-y 50% top;*/
    background: #00979c url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABiYAAAABAQMAAABg74QgAAAABlBMVEUAl5z19fUmxL6DAAAAGklEQVR4XrXAAQ0AAACCMJvYvyObpuDxdTYO7dthu3tColUAAAAASUVORK5CYII=) repeat-y 50% top;
    color: #222;
    font: 1em "Lucida Grande", Lucida, Verdana, sans-serif;
  }

  h1 {
    font-size: 3em;
    font-weight: bold;
    text-transform: uppercase;
    display: none;
  }

  img {
    width: 100%;
    height: auto;
  }

  label {
    font-size: .75em;
    margin-bottom: .6125em;
    display: block;
    color: #666;
    text-transform: uppercase;
  }

  label.title {
    font-weight: bold;
  }

  input {
    font-size: 1em;
    padding: .5125em;
    border: 1px solid #ddd;
    margin: 0;
    width: 97.5%;
    font-family: "Helvetica Neue", Arial, Helvetica, Geneva, sans-serif;
    border-radius: 3px;
    color: #555;
  }

  textarea {
    width: 100%;
  }

  #header {
    color: #FFF;
    width: 50%;
    float: left;
    text-align: right;
  }

  #logo {
    margin: 0 auto;
    width: 9em;
  }

  #content {
    width: 50%;
    float: left;
    background: #f5f5f5;
    position: relative;
    z-index: 2;
  }

  #error_container {
    padding: 0 0 1em 0;
    margin-bottom: 2em;
    color: #c37676;
  }

  input.saveForm {
    height: 30px;
    border: 1px solid #1e8488;
    box-shadow: 0 4px 0 #1e8488;
    background: #00979c;
    color: #FFF;
    text-transform: uppercase;
    cursor: pointer;
    width: 70%;
    height: 40px;
    margin: 2em auto 0;
    display: block;
    -webkit-appearance: none;
  }

  @media only screen and (max-width:320px) {
    body {
      background: #f5f5f5;
      font-size: 1em;
    }

    #container {
      margin-top: 0;
    }

    #header {
      background: #00979c;
      width: 100%;
      float: none;
      text-align: center;
    }

    #content {
      width: 100%;
      float: none;
    }

  }

  @media (max-width:767px) {
    body {
      background: #f5f5f5;
      font-size: .9em;
    }

    #container {
      margin-top: 0;
    }

    #header {
      background: #00979c;
      width: 100%;
      float: none;
      text-align: center;
      height: 10.5em;
    }

    #content {
      width: 100%;
      float: none;
    }

    #logo {
      width: 7em;
      margin: 0 auto;
    }

    label {
      margin-bottom: .45em;
    }
  }

  @media only screen and (min-width:321px) {
    body {
      font-size: .9em;
    }

    input.saveForm {
      height: 30px;
      border: 1px solid #1e8488;
      box-shadow: 0 4px 0 #1e8488;
      background: #00979c;
      color: #FFF;
      text-transform: uppercase;
      cursor: pointer;
      width: 50%;
      height: 40px;
      margin: 2em 0;
      display: block;
      -webkit-appearance: none;
    }
  }

  @media (min-width:1200px) {
    body {
      background: #00979c;
      font-size: 1em;
    }

    #header {
      background: transparent;
      text-align: center;
    }

    #container {
      float: none;
      width: 1200px;
      margin: 3em auto;
    }

    #header {
      width: 30%;
    }

    #logo {
      width: 9em;
    }

    #content {
      width: 60%;
    }

    label {
      float: left;
      text-align: right;
      padding: .525em;
      width: 200px;
    }

    input {
      width: 400px;
    }

    input.saveForm {
      width: 410px;
      margin-left: 218px;
      -webkit-appearance: none;
    }
  }
  </style>
  <script type="text/javascript">
    function formCheck(form) {
      var wifi_ssid = form["wifi.ssid"];
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
      if (wifi_password.value == null || wifi_password.value == "") {
        errorHandler(wifi_password, errContainer, "Please choose a WiFi password");
        errors = true;
      } else if (wifi_password.value.length < 8) {
        errorHandler(wifi_password, errContainer, "WiFi password should be 8 char at least");
        errors = true;
      }
      if (hostname.value == null || hostname.value == "") {
        errorHandler(hostname, errContainer, "Please choose a name for your Etheris");
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
  </script>
  <title>Etheris</title>
</head>
<body>
<div id="container">
  <div id="header">
    <div class="wrapper">
      <h1>Etheris</h1>

      <div id="logo"><img
              src="data:image/png;base64,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"
              alt="Etheris"/></div>
    </div>
  </div>
  <div id="content">
    <div class="wrapper">
%include
    </div>
  </div>
  <!-- #content -->
  <br class="clear"/>
</div>
<!-- #container -->
</body>
</html>