$(document).ready(function () {
    $(".owl-carousel").owlCarousel({
        items: 2,
        loop: true,
        autoplay: true,
        animateOut: 'slideOutDown',
        animateIn: 'flipInX',
    });
    $(".btn-more a").click(function () {
        $(this).closest(".brands-content").find(".brands").toggleClass("height-auto");
    })
});
