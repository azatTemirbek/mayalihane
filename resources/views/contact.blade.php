@extends("layouts.master")
@section("title")
İletişim Sayfasi
@stop
@section("description")
En hizli şekilde bize ulaşin. Sağlıklı yaşamiçin.
@stop
@section("link")
{{'http://sitename.com'.$_SERVER['REQUEST_URI']}}
@stop
@section("content")
<section class="ct-sidebar ct-js-sidebar">

        <div class="ct-googleMap ct-js-googleMap">
            <iframe style="" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3060.1836588812002!2d32.77056431538064!3d39.91490597942655!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMznCsDU0JzUzLjciTiAzMsKwNDYnMjEuOSJF!5e0!3m2!1sen!2s!4v1500224470426" width="700" height="700" frameborder="0" style="border:0;" allowfullscreen></iframe>
        </div>

    </section>

    <section class="ct-content text-center ct-u-OverflowHidden">
        <section class="ct-frame ct-frame--white">
            <h3 class="ct-u-font1 text-uppercase text-center ct-u-marginTop5">İletişim</h3>
            <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
            <h5 class="ct-u-colorMotive ct-u-font3 ct-u-size14 text-uppercase ct-u-marginBottom5">Konum</h5>
            <a href="http://maps.google.com/maps?q=39.914906,32.772753" class="ct-address ct-u-font2">
                {!!$info->adress!!}
            </a>
            <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
            <h5 class="ct-u-colorMotive ct-u-font3 ct-u-size14 text-uppercase ct-u-marginBottom5">Phone</h5>
            <a href="tel:{{$info->tel}}" class="ct-address ct-u-font2">
                {{$info->tel}}
            </a>
            <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
            <h5 class="ct-u-colorMotive ct-u-font3 ct-u-size14 text-uppercase ct-u-marginBottom5">
                Çalışma Saatleri
            </h5>
            <p class="ct-address ct-u-font2">
                {!!$info->workDay!!}
            </p>
            <div class="ct-hrContainer ct-u-paddingTop15 ct-u-paddingBottom30">
                <hr class="hr-custom ct-js-background" data-bg="assets/images/hr1.png">
            </div>
            <ul class="list-unstyled list-inline ct-socials--square">
                <li>
                    <a href="{{$info->facebook}}" class="btn">
                        <i class="fa fa-fw fa-facebook"></i>&nbsp; 
                    </a>
                </li>
                <li>
                    <a href="{{$info->twitter}}"  class="btn">
                        <i class="fa fa-fw fa-twitter"></i> &nbsp;
                    </a>
                </li>
                <li>
                    <a href="{{$info->google}}" class="btn">
                        <i class="fa fa-fw fa-google-plus"></i> &nbsp;
                    </a>
                </li>
            </ul>
            <!-- <div class="ct-hrContainer ct-u-paddingTop20 ct-u-paddingBottom5"> -->
                <!-- <hr class="hr-custom ct-js-background" data-bg="assets/images/hr1.png"> -->
            <!-- </div> -->
            <!-- <h3 class="ct-u-font1 text-uppercase text-center ct-u-paddingBottom25">latest tweet</h3> -->
            <!--<hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">-->
            <!--<div class="ct-twitterContent">
            <h5 class="ct-twitterContent ct-twitterTime ct-u-colorMotive ct-u-font3 ct-u-size14 text-uppercase ct-u-marginBottom5">An hour ago</h5>
               <span>Only 4% of WordPress themes on ThemeForest have earned less than $1,000 in their lifetime.</span><br>
                <span class="ct-twitterContent ct-twitterLink">
                        <a href="http://inside.envato.com/pressnomics/">http://inside.envato.com/pressnomics/</a>
                </span>
            </div>-->
            <!-- <div class="tweets_display"> -->

            <!-- </div> -->

<!-- mailto:e178551@gmail.com?subject=werwe&body=werwe -->

            <div class="clearfix"></div>
            <div class="ct-hrContainer ct-u-paddingTop20 ct-u-paddingBottom5">
                <hr class="hr-custom ct-js-background" data-bg="assets/images/hr1.png">
            </div>
            <h3 class="ct-u-font1 text-uppercase text-center">Bize mesaj brakın</h3>
            <hr class="hr-custom ct-js-background" data-bg="assets/images/hr2.png" data-bgrepeat="no-repeat">
            <form role="form" action="mailto:{{$info->mail}}?subject=MayaliHane" method="post"
            enctype="text/plain"
             class="contactForm ct-u-paddingTop10">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <input id="contact_name" placeholder="İsminiz" required type="text" 
                                name="Isim:" class="form-control input-lg">
                            </div>
                        </div>
                    </div>
                <!-- <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input id="contact_email" placeholder="Mail Adres Yazın" required type="email" name="from" class="form-control input-lg">
                        </div>
                    </div>
                </div> -->
                <div class="row">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <textarea id="contact_message" placeholder="Mesaj Yazın" class="form-control input-lg" rows="8" name="Mesaj:" required></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <input type="submit" class="btn btn-lg btn-block btn-button--dark" value="Mesaj Gönder">
                        </div>
                    </div>
                </div>
            </form>

            <div class="successMessage alert alert-success" style="display: none">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                Thank You!
            </div>
            <div class="errorMessage alert alert-danger" style="display: none">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                Ups! An error occured. Please try again later.
            </div>

        </section>
    </section>
@stop