<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bang App</title>

   <!-- Global stylesheets -->
    <link href="{{  asset('/assets/css/ltr/all.min.css')}}" id="stylesheet" rel="stylesheet" type="text/css">
    <link href="{{ asset('/assets/fonts/inter/inter.css')}}" rel="stylesheet" type="text/css">
    <link href="{{ asset('/assets/icons/phosphor/styles.min.css')}}" rel="stylesheet" type="text/css">

   <!-- Core JS files -->
    <script src="{{ asset('/assets/demo/demo_configurator.js')}}"></script>
    <script src="{{ asset('/assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>
    <!-- /core JS files -->

    <!-- Theme JS files -->
    <script src="{{ asset('/assets/js/vendor/visualization/d3/d3.min.js')}}"></script>
    <script src="{{ asset('/assets/js/vendor/visualization/d3/d3_tooltip.js')}}"></script>

    <script src="{{  asset('/assets/js/app.js')}}"></script>
    <script src="{{ asset('/assets/demo/pages/dashboard.js')}}"></script>
    <script src="{{ asset('/assets/demo/charts/pages/dashboard/streamgraph.js')}}"></script>
    <script src="{{ asset('/assets/demo/charts/pages/dashboard/sparklines.js')}}"></script>
    <script src="{{ asset('/assets/demo/charts/pages/dashboard/lines.js')}}"></script>
    <script src="{{ asset('/assets/demo/charts/pages/dashboard/areas.js')}}"></script>
    <script src="{{ asset('/assets/demo/charts/pages/dashboard/donuts.js')}}"></script>
    <script src="{{ asset('/assets/demo/charts/pages/dashboard/bars.js')}}"></script>
    <script src="{{ asset('/assets/demo/charts/pages/dashboard/progress.js')}}"></script>
    <script src="{{ asset('/assets/demo/charts/pages/dashboard/heatmaps.js')}}"></script>
    <script src="{{ asset('/assets/demo/charts/pages/dashboard/pies.js')}}"></script>
    <script src="{{ asset('/assets/demo/charts/pages/dashboard/bullets.js')}}"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <!-- Theme JS files -->

</head>

<body>

    <!-- Main navbar -->
    <div class="navbar navbar-dark navbar-expand-lg navbar-static border-bottom border-bottom-white border-opacity-10">
        <div class="container-fluid">
            <div class="d-flex d-lg-none me-2">
                <button type="button" class="navbar-toggler sidebar-mobile-main-toggle rounded-pill">
                    <i class="ph-list"></i>
                </button>
            </div>

            <div class="navbar-brand flex-1 flex-lg-0">
                <a href="index.html" class="d-inline-flex align-items-center">
                    BangApp Backend
                </a>
            </div>

        </div>
    </div>
    <!-- /main navbar -->


    <!-- Page content -->
    <div class="page-content">

        <!-- Main sidebar -->
        <div class="sidebar sidebar-dark sidebar-main sidebar-expand-lg">

            <!-- Sidebar content -->
            <div class="sidebar-content">

                <!-- Sidebar header -->
                <div class="sidebar-section">
                    <div class="sidebar-section-body d-flex justify-content-center">
                        <h5 class="sidebar-resize-hide flex-grow-1 my-auto">Navigation</h5>

                        <div>
                            <button type="button"
                                class="btn btn-flat-white btn-icon btn-sm rounded-pill border-transparent sidebar-control sidebar-main-resize d-none d-lg-inline-flex">
                                <i class="ph-arrows-left-right"></i>
                            </button>

                            <button type="button"
                                class="btn btn-flat-white btn-icon btn-sm rounded-pill border-transparent sidebar-mobile-main-toggle d-lg-none">
                                <i class="ph-x"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- /sidebar header -->


                <!-- Main navigation -->
                <div class="sidebar-section">
                    <ul class="nav nav-sidebar" data-nav-type="accordion">

                        <li class="nav-item">
                            <a href="{{ route('dashboard') }}" class="nav-link active">
                                <i class="ph-house"></i>
                                <span>
                                    Dashboard
                                </span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('bangInspirationWeb') }}" class="nav-link ">
                                <i class="ph-house"></i>
                                <span>
                                    Add BangInspiration
                                </span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="" class="nav-link ">
                                <i class="ph-house"></i>
                                <span>
                                    Add BangUpdate
                                </span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('bangBattleWeb') }}" class="nav-link ">
                                <i class="ph-house"></i>
                                <span>
                                    Add Bang Battle
                                </span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('reportedPost') }}" class="nav-link ">
                                <i class="ph-house"></i>
                                <span>
                                    Reported Posts
                                </span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('users') }}" class="nav-link ">
                                <i class="ph-house"></i>
                                <span>
                                    Users
                                </span>
                            </a>
                        </li>
                        <!-- /layout -->


                    </ul>
                </div>
                <!-- /main navigation -->

            </div>
            <!-- /sidebar content -->

        </div>
        <!-- /main sidebar -->

        @yield('content')

    </div>
</div>
