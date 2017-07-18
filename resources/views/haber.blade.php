@extends("layouts.master")

@section("title")
Haberler
@stop
@section("link")
{{'http://sitename.com'.$_SERVER['REQUEST_URI']}}
@stop
@section("description")
Haberler
@stop

@section("content")
    <section class="ct-sidebar ct-js-sidebar ct-js-background ct-u-displayTable ct-u-hideAnimateBg" data-bg="assets/images/demo-content/full4-blog.jpg">
        <div class="ct-sidebar-inner">
            <hr class="hr-custom ct-js-background animated" data-fx="fadeInDown" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
            <h2 class="ct-u-font2 text-uppercase animated " data-fx="flipInY">Haberler</h2>
            <section class="widget">
                <img src="/assets/images/demo-content/blog.jpeg" alt="logo" class="img-responsive">

            </section>
            <hr class="hr-custom ct-js-background animated ct-u-paddingTop30" data-fx="fadeInDown" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
            {!!$posts->links()!!}
        </div>

    </section>
        <section class="ct-content">
    @foreach($posts as $post)
            <section class="ct-frame ct-frame--white">
                <article class="ct-blogItem">
                   <div class="ct-blogItem ct-blogThumbnail">
                       <img src="/storage/{{$post->image}}" alt="Post Image" />
                   </div>
                   <div class="ct-blogItem ct-innerMargin">
                       <div class="ct-blogItem ct-entryMeta">
                           <span class="ct-blogItem ct-entryDate">{{$post->created_at}}</span>
                           <span class="ct-blogItem ct-catLinks">♦ <a href="#"> haber</a></span>
                       </div>
                       <h3 class="ct-blogItem ct-entryTitle ct-u-font2"><a href="haber/{{$post->slug}}">
                            {{$post->title}}
                       </a></h3>
                       <p class="ct-blogItem ct-entryDescription">
                            {{$post->excerpt}}
                       </p>
                       <div class="ct-u-paddingBottom10"><a href="haber/{{$post->slug}}" class="btn btn-lg btn-button--brown">daha fazla</a></div>
                   </div>
               </article>
            </section>
    @endforeach
        </section>
@stop