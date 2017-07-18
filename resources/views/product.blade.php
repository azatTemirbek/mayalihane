@extends("layouts.master")

@section("title")
{{$product->name}}
@stop
@section("description")
{{$product->seo}}
@stop
@section("link")
{{'http://sitename.com'.$_SERVER['REQUEST_URI']}}
@stop
@section("content")
<section class="ct-content">
	<section class="ct-frame ct-frame--white">
        <section class="ct-foodBox">
            @if($product->image)
            <div class="ct-imageBox ct-u-marginTop5 section" id="breakfast">
                <img src="/storage/{{$product->image}}" alt="breakfast" />
            </div>
            @endif
            <h3 class="text-center text-uppercase ct-u-font1 ct-fw-600">{{$product->name}}</h3>
            <hr class="hr-custom ct-js-background" data-bg="/assets/images/hr2.png" data-bgrepeat="no-repeat">
            <ul>
                <li class="ct-foodMenu">
                    <label class="ct-u-font4">
                    	{{$product->subName}}
                    </label>
                    <div class="clearfix"></div>
                    <div class="ct-u-foodIngredients">
                    	{!!$product->description!!}
                    </div>
                </li>
            </ul>
            <div class="ct-hrContainer ct-u-paddingTop15 ct-u-paddingBottom10">
                <hr class="hr-custom ct-js-background" data-bg="/assets/images/hr2.png">
            </div>
            <a href="/contact" class="btn btn-lg btn-warning text-center center-block" data-hover="İletişime Geç"><span>İletişime Geç</span></a>
        </section>
    </section>
</section>
@stop