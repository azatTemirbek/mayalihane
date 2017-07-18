@extends("layouts.master")

@section("title")
Hakkımızda
@stop
@section("description")
Hakkımızda
@stop
@section("link")
{{'http://sitename.com'.$_SERVER['REQUEST_URI']}}
@stop


@section("content")
    <section class="ct-sidebar ct-js-sidebar ct-js-background ct-u-displayTable ct-u-hideAnimateBg" data-bg="assets/images/demo-content/full3-about.jpg">
        <div class="ct-sidebar-inner">
            <div class="item">
                <hr class="hr-custom ct-js-background animated" data-fx="fadeInDown" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
                <h2 class="ct-u-font2 text-uppercase animated " data-fx="flipInY">Mayalihane<br>hakiında</h2>
                <p class="animated" data-fx="fadeIn">
                    {!!$hakimizda->description!!}
                </p>
                <hr class="hr-custom ct-js-background ct-u-paddingTop15 animated" data-fx="fadeInDown" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
            </div>
        </div>
    </section>

    <section class="ct-content">
        <section class="ct-frame ct-frame--white">
            {!!$hakimizda->body!!}
        </section>
    </section>
@stop