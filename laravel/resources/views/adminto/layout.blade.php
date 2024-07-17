<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8" />
        <title>Dashboard | Adminto - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App css -->

        <link href="{{asset('adminto')}}/assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />

        <!-- icons -->
        <link href="{{asset('adminto')}}/assets/css/icons.min.css" rel="stylesheet" type="text/css" />

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

	    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        @yield('style')
    </head>

    <!-- body start -->
    <body class="loading" data-layout-color="light"  data-layout-mode="default" data-layout-size="fluid" data-topbar-color="light" data-leftbar-position="fixed" data-leftbar-color="light" data-leftbar-size='default' data-sidebar-user='true'>
        @include('inc._sweetAlert2')
        <!-- Begin page -->
        <div id="wrapper">


            <!-- Topbar Start -->
            @include('adminto.inc._navbar')
            <!-- end Topbar -->

            <!-- ========== Left Sidebar Start ========== -->
            @include('adminto.inc._leftside')
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->
         
            <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">

                        @yield('content')    
                        
                    </div> <!-- container-fluid -->

                </div> <!-- content -->

                <!-- Footer Start -->
                @include('adminto.inc._footer')
                <!-- end Footer -->

            </div>
            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->

        <!-- Right Sidebar -->
        @include('adminto.inc._rightside')
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- Vendor -->
        <script src="{{asset('adminto')}}/assets/libs/jquery/jquery.min.js"></script>
        <script src="{{asset('adminto')}}/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="{{asset('adminto')}}/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="{{asset('adminto')}}/assets/libs/node-waves/waves.min.js"></script>
        <script src="{{asset('adminto')}}/assets/libs/waypoints/lib/jquery.waypoints.min.js"></script>
        <script src="{{asset('adminto')}}/assets/libs/jquery.counterup/jquery.counterup.min.js"></script>
        <script src="{{asset('adminto')}}/assets/libs/feather-icons/feather.min.js"></script>

        <!-- knob plugin -->
        <script src="{{asset('adminto')}}/assets/libs/jquery-knob/jquery.knob.min.js"></script>

        <!--Morris Chart-->
        <script src="{{asset('adminto')}}/assets/libs/morris.js06/morris.min.js"></script>
        <script src="{{asset('adminto')}}/assets/libs/raphael/raphael.min.js"></script>
  
        <!-- Dashboar init js-->
        <script src="{{asset('adminto')}}/assets/js/pages/dashboard.init.js"></script>

        <!-- App js-->
        <script src="{{asset('adminto')}}/assets/js/app.min.js"></script>
        @yield('script')
    </body>
</html>