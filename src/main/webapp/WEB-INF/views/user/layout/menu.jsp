 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page pageEncoding="utf-8"%>
         <head>
         <div class="row" style=" margin : 0px;">
         <div class="container">
         <nav class="navbar navbar-expand-lg navbar-light bg-light"
         style=" background-color: white !important; ">
         <div class="logo_container mr-auto" style=" margin-top: 4px; ">
         <div class="logo_text"><a class="navbar-brand" href="/home/index"><img
         src="/static/images/trangchu.png"
         style="max-width: 120px; max-height: 44px; margin-top: -20px;"></a></div>
         </div>
         <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
         aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
         </button>

         <div class="collapse navbar-collapse" id="navbarSupportedContent">
         <ul class="navbar-nav ml-auto main_nav">
         <li class="nav-item">
         <a id="replaceAll1" class="nav-link active" href="/home/introduce">Giới thiệu</a>
         </li>





         <li class="nav-item dropdown">
         <a id="replaceAll2" href="#" class="Competition nav-link dropdown-toggle"
         data-toggle="dropdown">Khóa học</a>

         <div class="dropdown-menu dropdown-menu-new-event">
         <a id="course-list" class="dropdown-item" href="/home/courses">Danh sách khóa
         học</a>
         <a id="register-course" class="dropdown-item" href="/home/register-course">Đăng ký
         khóa học</a>
         <a id="propose-course" class="dropdown-item" href="/home/propose-course">Đề xuất nhu
         cầu</a>
         </div>
         </li>


         <li class="nav-item">
         <a id="Competition1" class="Competition nav-link
         require-login" href="/competition/home">Cuộc thi</a>
         </li>

         <li class="nav-item">
         <a id="replaceAll3" class="Competition nav-link info" href="/home/document">Tài liệu</a>
         </li>


         <li class="nav-item dropdown">
         <a id="replaceAllWrite" href="#" class="Competition nav-link dropdown-toggle"
         data-toggle="dropdown">Bài
         viết</a>

         <div class="dropdown-menu dropdown-menu-new-event">
         <a id="replaceAll5" class="dropdown-item" href="/home/news">Tin tức</a>
         <a id="replaceAll4" class="dropdown-item" href="/home/events">Sự kiện</a>
         </div>
         </li>

         <li class="nav-item">
         <a id="replaceAll6" class="nav-link active" href="/home/support">Hỗ trợ</a>


         </li>
         <li class="nav-item">

         <a id="profileUser" class="support nav-link dropdown-toggle menu-profile"
         data-toggle="dropdown" href="#">Admin</a>
         <div class="dropdown-menu dropdown-menu-profile">

         <a class="dropdown-item" href="/user/myprofile">Thông tin tài khoản</a>

         <a class="dropdown-item" href="/admin">Quản trị hệ thống</a>


         <a class="dropdown-item" href="/home/logout">Đăng xuất</a>

         </div>
         </li>

         </ul>
         </div>
         </nav>
         </div>

         <div class="d-flex justify-content-center bg-secondary " style="width: 100%;background: #0C1E34 !important;">
         <div class="p-2" style="margin-top: 6px;">
         <a style="color: white;"><i class="fa fa-bars" aria-hidden="true"></i> Danh mục khóa học</a>
         </div>
         <div class="p-2 ">
         <form>
         <div style="position: relative;">
         <input class="form-control" type="text" placeholder="Tìm kiếm khóa học" aria-label="Search"
         style="width: 555px;">
         <i class="fas fa-search"></i>
         </div>
         </form>
         </div>
         <div class="p-2 ">
         <button class="btn btn-warning">Khóa học của tôi</button>
         </div>
         </div>


         </div>
         </head>