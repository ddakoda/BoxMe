var app = app || {};

$(document).ready(function(){

  app.brands = new app.BrandCollection({
    model: app.BrandModel
  })

  app.brandListPainter = new app.GeneralListView({
    modelView: app.BrandView,
    collection: app.brands,
    el: $('#brand-list'),
  });

  app.brands.fetch();

  $(document).ready(function () {

       $('.left-off-canvas-toggle').click(offCanvasWrap);

   });

  function offCanvasWrap() {
         $('.left-off-canvas-menu fa fa-bars fa-lg').css('display', 'none');
         $('.' + $(this).data('listname')).css('display','block');

     }

  $('#place-item').on('click', function(){

    var brandId = app.brandSelection.id;
    $.ajax({
      method: 'post',
      url: '/api/items',
      data: {item: {brand_id: brandId} },
      success: function(){
        // app.users.fetch( {reset: true} );

        $('.brand-selected').removeClass('brand-selected');
      }
    });

  });


});
