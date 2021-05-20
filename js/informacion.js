$(document).ready(function () {
    $('main .contenedor a:first').addClass('activo');

    $('main .contenedor a').click(function() {
        $('main .contenedor a').removeClass('activo');
        $(this).addClass('activo');
    })
});