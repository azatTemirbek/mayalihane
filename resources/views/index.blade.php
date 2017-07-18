@extends("layouts.master")

@section("title")
mayalihane anasayfasina hoş geldiniz!-
@stop
@section("description")
{{$page->aciklama1}}
@stop
@section("link")
{{'http://sitename.com'.$_SERVER['REQUEST_URI']}}
@stop


@section("content")
   <section class="ct-sidebar ct-js-sidebar ct-js-background ct-u-displayNone ct-big-gallery" data-bg="assets/images/demo-content/full1-home.jpg">
        <div class="ct-js-owl " data-animations="true" data-height="100%" data-snap-ignore="true">
            <div class="item">
                <hr class="hr-custom ct-js-background animated ct-u-paddingTop60" data-fx="fadeInDown" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
                <hr class="hr-custom ct-js-background animated" data-fx="fadeInDown" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
                <h2 class="ct-u-font2 text-uppercase animated" data-fx="flipInY">Mayalı<br>Hane</h2>
                <p class="animated" data-fx="fadeIn">
                    {{$page->aciklma}}
                </p>
                <a href="hakkimizda" class="btn btn-lg btn-default animated" data-fx="fadeIn" data-hover="Hakkımizda"><span>Hakkımizda</span></a>
                <hr class="hr-custom ct-js-background animated ct-u-paddingTop60" data-fx="fadeInDown" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
            </div>
        </div>
    </section>
    <section class="ct-content">
        <div class="row ct-js-masonry">

            <div class="col-sm-6 ct-js-masonryItem">
            </div>
            @if($page->banner)
            <div class="col-sm-12 ct-js-masonryItem">
                    <a href="/products">
                <div class="ct-imageBox">
                        <img src="/storage/{{$page->banner}}" alt="menü">
                        <article class="ct-imageBox-inner">
                            <div class="ct-imageBox-innerAlign">
                                <div class="row">
                                    <div class="col-sm-6 col-sm-offset-6 text-center">
                                        <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
                                        <h5 class="ct-u-colorMotive ct-u-font3 text-uppercase">Gelin Bi Tadına Bakın</h5>
                                        <h3 class="ct-u-font2 text-uppercase">ürün listemiz</h3>
                                    </div>
                                </div>
                            </div>
                        </article>
                </div>
                    </a>
            </div>
            @endif
            <div class="col-sm-6 ct-js-masonryItem text-center ct-breakfastSection">
                <section class="ct-frame ct-frame--motive">
                    <h4 class="ct-u-font2 text-uppercase ct-u-colorWhite">Glütensiz ürunler kategorisi</h4>
                    <p>
                        {{$page->aciklma1}}
                    </p>
                    <hr class="hr-custom ct-js-background animated" data-fx="fadeInDown" data-bg="assets/images/hr1.png" data-bgrepeat="repeat">

                    <h4 class="ct-u-font2 text-uppercase ct-u-colorWhite">Düşük proteinli ürunler kategorisi</h4>
                    <p>
                        {{$page->aciklma2}}
                    </p>
                    <hr class="hr-custom ct-js-background animated" data-fx="fadeInDown" data-bg="assets/images/hr1.png" data-bgrepeat="repeat">

                    <h4 class="ct-u-font2 text-uppercase ct-u-colorWhite ">Ekşi mayali ürunler kategorisi</h4>
                    <p>
                        {{$page->aciklma3}}
                    </p>
                </section>
            </div>
            @if($product)
            @foreach($product as $pro)
            @if($pro->image)
            <div class="col-sm-6 ct-js-masonryItem ct-deliveredSection">
                    <a href="/products/{{$pro->slug}}">
                <div class="ct-imageBox">
                        <img src="/storage/{{$pro->image}}" alt="Croissant">
                        <article class="ct-imageBox-inner">
                            <div class="ct-imageBox-innerAlign">
                                <div class="row">
                                    <div class="col-sm-12 text-center">
                                        <hr class="hr-custom ct-js-background" data-bg="/assets/images/hr3.png" data-bgrepeat="no-repeat">
                                        <h5 class="ct-u-font3 text-uppercase ct-u-colorWhite"></h5>
                                        <h3 class="ct-u-font2 text-uppercase ct-u-colorWhite">{{$pro->name}}</h3>
                                    </div>
                                </div>
                            </div>
                        </article>
                </div>
                    </a>
            </div>
            @endif
            @endforeach
            @endif
            @if($galleris)
            <div class="col-sm-6 ct-js-masonryItem ct-small-gallery" data-snap-ignore="true">
                <div class="ct-js-owl ct-js-popupGallery" data-items="2" data-single="false" data-navigation="true" data-pagination="false" data-lgItems="2" data-mdItems="2" data-smItems="1">
                    <div class="item ct-u-padding10">

                     @foreach($galleris as $galleri)
                        <a href="/storage/{{$galleri->image}}" class="ct-js-popup ct-gallerySlider-image" title="{{$galleri->alt}}"><img src="/storage/{{str_replace('.','-cropped.',$galleri->image)}}" alt="thumbnail"></a>
                    @endforeach

                    </div>
                </div>
            </div>
            @endif
            @if($page->altbanner)
            <div class="col-sm-12 ct-js-masonryItem">
                    <a href="/products">
                <div class="ct-imageBox">
                        <img src="/storage/{{$page->altbanner}}" alt="Seasonal desserts">
                        <article class="ct-imageBox-inner">
                            <div class="ct-imageBox-innerAlign">
                                <div class="row">
                                    <div class="col-sm-12 text-center">
                                        <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
                                        <h5 class="ct-u-colorMotive ct-u-font3 text-uppercase">yeni ürülerümüz</h5>
                                        <h3 class="ct-u-font2 text-uppercase ct-u-colorWhite">ürünlere göz at</h3>
                                    </div>
                                </div>
                            </div>
                        </article>
                </div>
                    </a>
            </div>
            @endif
            @if($post)
            <div class="col-sm-12 ct-js-masonryItem">
                <section class="ct-frame ct-frame--white">
                    <h3 class="ct-u-font1 text-uppercase text-center">Son Haber</h3>
                    <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
                    <article class="ct-blogItem ct-formatPhoto ct-u-paddingBottom20">
                    <a href="/haber/{{$post->slug}}" class="ct-js-popup ct-frame-image" title="The Space"><img src="/storage/{{$post->image}}" alt="thumbnail"></a>
                    <div class="ct-innerMargin">
                        <div class="ct-entryMeta">
                             <div class="ct-entryDateFirst">{{$post->created_at}}</div>
                        </div>
                        <h3 class="ct-entryTitle ct-u-font2"><a href="/haber/{{$post->slug}}">
                            {{$post->title}}
                        </a></h3>
                    <p class="ct-entryDescription">
                        {{$post->excerpt}}
                    </p>
                    <div class="clearfix"></div>
                    </div>
                </article>
                </section>
            </div>
            @endif
        </div>
    </section>
@stop