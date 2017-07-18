@extends("layouts.master")

@section("title")
Galeri
@stop
@section("description")
tatli resimler ve galeri
@stop
@section("link")
{{'http://sitename.com'.$_SERVER['REQUEST_URI']}}
@stop


@section("content")
    <div class="ct-content">
        <section class="ct-gallery ct-gallery--col4 ct-gallery--withSpacing ct-js-popupGallery">
        	@foreach($galeries as $galeri)
		<!-- <img src="/storage/{{$galeri->image}}">
		<img src="/storage/{{str_replace('.','-small.',$galeri->image)}}"> -->
                <div class="ct-gallery-item ct-gallery-item--masonry hidden">
                    <div class="ct-gallery-itemInner">
                        <a href="/storage/{{$galeri->image}}" class="ct-js-popup"><img src="/storage/{{str_replace('.','-small.',$galeri->image)}}" class="ct-galleryShaddow" alt="Charlotte" /></a>
                    </div>
                </div>
	       @endforeach
        </section>
    </div>
@stop