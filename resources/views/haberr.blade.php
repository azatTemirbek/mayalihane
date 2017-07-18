@extends("layouts.master")

@section("title")
{{$post->title}}
@stop
@section("description")
{{$post->meta_description}}
@stop
@section("link")
{{'http://sitename.com'.$_SERVER['REQUEST_URI']}}
@stop

@section("content")
    <section class="ct-content">
        <section class="ct-frame ct-frame--white">
            <article class="ct-blogItem">
                <div class="ct-blogThumbnail">
                    <img src="/storage/{{$post->image}}" alt="Post Image" />
                </div>
                <div class="ct-blogItem ct-innerMargin">
                    <div class="ct-blogItem ct-entryMeta">
                        <span class="ct-blogItem ct-entryDate">{{$post->created_at}}</span>
                        <span class="ct-blogItem ct-catLinks">♦ <a href="#"> haberler</a></span>
                    </div>
                    <h3 class="ct-blogItem ct-entryTitle ct-u-font2 text-uppercase">
                    {{$post->title}}
                    </h3>
                    <p>
                    	{!!$post->body!!}
                    </p>
                    </div>
                    </article>

                    <div class="ct-hrContainer ct-u-paddingTop20 ct-u-paddingBottom20">
                        <hr class="hr-custom ct-js-background" data-bg="assets/images/hr1.png">
                    </div>
                    

           
        </section>

    </section>
    <a href="#" id="toTop"><i class="fa fa-angle-up"></i></a>
</div>
@stop