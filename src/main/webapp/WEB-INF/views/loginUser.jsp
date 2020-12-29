<%@ page   pageEncoding="utf-8"%>
<html lang="en">
<head>
    <script src="/static/js/jquery-3.2.1.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <link rel="stylesheet" href="/static/styles/courses.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/styles/login/login.css">
    <link rel="icon" type="image/png" href="/static/images/favicon.ico">

</head>
<body style="width: 100% ;overflow: hidden;height: 100vh;">

<div class="row" style="height: 100%;">
    <div class="col col-sm-6 bentrai" style="background: #FCB71E;">
        <div class="row">
            <div class="col col-sm-5" >

            </div>
            <div class="col col-sm-7" style="margin-top: 10%;
          padding-right: 37px;">
                <div class="anh">
                    <div class="anhnen" style="background-image: url(/static/images/login/Rectangle814.png);">
                        <div class="anhchinhs">
                            <img src="/static/images/login/Asset1.png" alt="" class="anhchinh">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col col-sm-6 ">
                            <div style="background-image: url(/static/images/login/Rectangle814.png);">
                                <img src="/static/images/login/Asset2.png" class="anhphu1" alt="">
                            </div>

                        </div>
                        <div class="col col-sm-6">
                            <div style="background-image: url(/static/images/login/Rectangle814.png);">
                                <img  src="/static/images/login/Asset3.png" class="anhphu1" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col col-sm-12 col-lg-6 " style="padding: 6%;">

        <form action="/j_spring_security_check" id="formLogin2" class="login-form" method="POST" role="form">
            <div class="form-group text-center" style="width: 50%;">
                <img src="/static/images/login/Group1131.png" alt="">
            </div>
            <div class="form-group" style="width: 50%;">
                <label    class="ten">Tên đăng nhập : </label>
                <input type="text" name="username" class="form-control inputs" style="margin-bottom: 10px;">
                <label   class="ten">Mật khẩu : </label>
                <input  name="password" type="password"   class="form-control inputs" >
            </div>



            <button type="submit" id="login" class="btn btn-primary inputs " style="background: #FCB71E; width: 50%;

         margin-top: 10px;">Đăng nhập</button>
        </form>

    </div>
</div>

</body>
</html>

<script src="/static/js/jquery-3.2.1.min.js"></script>
<script src="/static/js/common/CommonAlert.js"></script>
<script>
    $(document).ready(function () {
        $('#login').on('click',function(e) {
            e.preventDefault();
            var formData = $('#formLogin2').serializeArray();
            var data = {};
            $.each(formData,function(i,v) {
                data[v.name] = v.value;
            });
            //console.log(data);
            $.ajax({
                url: '/api/authentication',
                type: 'POST',
                data: JSON.stringify(data),
                dataType: "json",
                contentType: "application/json",

                beforeSend:function() {
                    $('#loading').removeClass("display-none");
                    //$('#loading').removeClass("display-none");
                },
                success: function (res) {
                    localStorage.setItem("eln_front_token", res.data.token);
                    //console.log(res.token);
                    // alert(res.token);
                    $('#formLogin2').submit();
                },
                error:function (res) {
                    if(res.status == 403){
                        Swal.fire({
                            position: 'inherit',
                            icon: 'error',
                            title: "Bạn đã đăng nhập thất bại quá 5 lần,tài khoản của bạn bị khóa trong 15 phút",
                            showConfirmButton: true

                        });

                    }else{
                        Swal.fire({
                            position: 'inherit',
                            icon: 'error',
                            title: "Sai mật khẩu hoặc tên tài khoản",
                            showConfirmButton: true

                        });
                    }

                    $('#loading').delay(500).fadeOut(500);
                   // $('#loading').addClass("display-none");
                    console.log(res);
                }

            });

        })
    })

</script>



<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>