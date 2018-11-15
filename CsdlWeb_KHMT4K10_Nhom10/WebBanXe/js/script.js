$(document).ready(function () {
    $(".owl-carousel").owlCarousel({
        items: 2,
        loop: true,
        autoplay: true,
        animateOut: 'slideOutDown',
        animateIn: 'flipInX',
    });
    function convert_gia(gia){
        var str_gia = "";
        var num_gia = gia.split('');
        var trieu = "";
        var ty = "";
        for(var i = 0 ; i < num_gia.length; i++)
        {
            if (i <= num_gia.length-4)
            {
                ty += num_gia[i];
            }else
            {
                trieu += num_gia[i];
            }
        }
        if(ty != "")
            str_gia = ty + " tỷ " + trieu + " triệu";
        else
            str_gia = trieu + " triệu";
        return str_gia;
    }
    function convert() {
        $.each($(".price"), function (index, value) {
            var gia = convert_gia($(this).text());
            $(this).text(gia);
        });
    }
    convert();
});
