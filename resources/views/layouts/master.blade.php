{{-- <!DOCTYPE html> --}}
<!--[if IE 8 ]>
<html class="no-js ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]>
<html class="no-js ie9" lang="en"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="no-js" lang="tr"> <!--<![endif]-->
<head lang="tr">
    <meta charset="UTF-8">

    <title>@yield('title') - Mayali Hane - Bakery House</title>
    <link rel="canonical" href="@yield('link')" />
    <meta name="description" content="@yield('description')">

    <link rel="shortcut icon" href="favicon.ico" type="/assets/image/x-icon">

    <link rel="shortcut icon" href="/assets/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/assets/images/favicon.ico" type="image/x-icon">
    <meta name="geo.position" content="40;30">
    <meta name="geo.country" content="TR">
    <meta name="geo.region" content="TR-06">

    <meta name="google" content="notranslate" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximum-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" type="text/css" href="/assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--[if lt IE 9]>
    <script src="/assets/bootstrap/js/html5shiv.min.js"></script>
    <script src="/assets/bootstrap/js/respond.min.js"></script>
    <![endif]-->

</head>
<body class="cssAnimate ptn13">
	@include("includes.header") 

	@yield('content')
	
	@include("includes.footer")
</body>
</html>
