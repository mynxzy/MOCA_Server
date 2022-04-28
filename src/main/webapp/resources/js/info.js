/**
 * 
 */
$(document).ready(function(){

    $(".t1").on("click", function(){
        if($('.tt1').css('display') == 'none'){
            $(".tt1").show();
        } else{
            $(".tt1").hide();
        }
    })
    $(".t2").on("click", function(){
        if($('.tt2').css('display') == 'none'){
            $(".tt2").show();
        } else{
            $(".tt2").hide();
        }
    })
    $(".t3").on("click", function(){
        if($('.tt3').css('display') == 'none'){
            $(".tt3").show();
        } else{
            $(".tt3").hide();
        }
    })
    $(".t4").on("click", function(){
        if($('.tt4').css('display') == 'none'){
            $(".tt4").show();
        } else{
            $(".tt4").hide();
        }
    })
})