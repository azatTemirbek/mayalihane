@extends("layouts.master")

@section("title")
Ürünler
@stop
@section("description")
urunler
@stop
@section("link")
{{'http://sitename.com'.$_SERVER['REQUEST_URI']}}
@stop
@section("content")
	<section class="ct-sidebar ct-js-sidebar ct-js-background ct-u-displayTable ct-u-hideAnimateBg" data-bg="assets/images/demo-content/full2-menu.jpg">
        <div class="ct-sidebar-inner">
	        <div class="item">
	            <hr class="hr-custom ct-js-background animated" data-fx="fadeInDown" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
	            <h2 class="ct-u-font2 text-uppercase animated " data-fx="flipInY">Menümüz</h2>
	            <p class="animated" data-fx="fadeIn">
	            	Üç çeşit kategorimiz bulunmaktadir
	            </p>
	            <ul class="ct-restaurantMenu">
	                
	                <li class="ct-u-paddingBottom15 onepage">
	                    <a href="#a1" class="btn btn-lg btn-warning" data-hover="GLüTENSİZ"><span>GLüTENSİZ</span></a>
	                </li>

	                <li class="ct-u-paddingBottom15 onepage">
	                    <a href="#a2" class="btn btn-lg btn-warning" data-hover="DÜŞÜK PROTEİNLİ"><span>DÜŞÜK PROTEİNLİ</span></a>
	                </li>
	                <li class="ct-u-paddingBottom15 onepage">
	                    <a href="#a2" class="btn btn-lg btn-warning" data-hover="EKŞİ MAYALI"><span>EKŞİ MAYALI</span></a>
	                </li>
	            </ul>
	            <hr class="hr-custom ct-js-background ct-u-paddingTop40 animated" data-fx="fadeInDown" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
	        </div>
	    </div>
    </section>

    <section class="ct-content">
    	<div id="a1">
    		@foreach($products as $p)
		        <section class="ct-frame ct-frame--white">
			        <section class="ct-foodBox">
            			@if($p->image)
			            <div class="ct-imageBox ct-u-marginTop5 section" id="breakfast">
			                <img src="/storage/{{$p->image}}" alt="breakfast" />
			            </div>
			            @endif
			            <h3 class="text-center text-uppercase ct-u-font1 ct-fw-600">{{$p->name}}</h3>
			            <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
			            <ul>
			                <li class="ct-foodMenu">
			                    <label class="ct-u-font4">
			                    	{{$p->subName}}
			                    </label>
			                    <div class="clearfix"></div>
			                    <div class="ct-u-foodIngredients text-center">
			                    	<a href="/products/{{$p->slug}}" class="btn btn-lg btn-warning" data-fx="fadeIn" data-hover="Daha Fazla"><span>Daha Fazla</span></a>
			                    </div>
			                </li>
			            </ul>
			            <div class="ct-hrContainer ct-u-paddingTop15 ct-u-paddingBottom10">
			                <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png">
			            </div>
			        </section>
		        </section>
	        @endforeach
    	</div>
    	<div id="a2">
    		@foreach($products1 as $p)
		        <section class="ct-frame ct-frame--white">
			        <section class="ct-foodBox">
			            <div class="ct-imageBox ct-u-marginTop5 section" id="breakfast">
			                <img src="/storage/{{$p->image}}" alt="breakfast" />
			            </div>
			            <h3 class="text-center text-uppercase ct-u-font1 ct-fw-600">{{$p->name}}</h3>
			            <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
			            <ul>
			                <li class="ct-foodMenu">
			                    <label class="ct-u-font4">
			                    	{{$p->subName}}
			                    </label>
			                    <div class="clearfix"></div>
			                    <div class="ct-u-foodIngredients text-center">
			                    	<a href="/products/{{$p->slug}}" class="btn btn-lg btn-warning" data-fx="fadeIn" data-hover="Daha Fazla"><span>Daha Fazla</span></a>
			                    </div>
			                </li>
			            </ul>
			            <div class="ct-hrContainer ct-u-paddingTop15 ct-u-paddingBottom10">
			                <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png">
			            </div>
			        </section>
		        </section>
	        @endforeach
    	</div>
    	<div id="a3">
    		@foreach($products2 as $p)
		        <section class="ct-frame ct-frame--white">
			        <section class="ct-foodBox">
			            <div class="ct-imageBox ct-u-marginTop5 section" id="breakfast">
			                <img src="/storage/{{$p->image}}" alt="breakfast" />
			            </div>
			            <h3 class="text-center text-uppercase ct-u-font1 ct-fw-600">{{$p->name}}</h3>
			            <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
			            <ul>
			                <li class="ct-foodMenu">
			                    <label class="ct-u-font4">
			                    	{{$p->subName}}
			                    </label>
			                    <div class="clearfix"></div>
			                    <div class="ct-u-foodIngredients text-center">
			                    	<a href="/products/{{$p->slug}}" class="btn btn-lg btn-warning" data-fx="fadeIn" data-hover="Daha Fazla"><span>Daha Fazla</span></a>
			                    </div>
			                </li>
			            </ul>
			            <div class="ct-hrContainer ct-u-paddingTop15 ct-u-paddingBottom10">
			                <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png">
			            </div>
			        </section>
		        </section>
	        @endforeach
    	</div>        
    </section>

    

    <style type="text/css">
    	div.ct-u-foodIngredients > table{
    		width: 100% !important;
    	}
    </style>
@stop