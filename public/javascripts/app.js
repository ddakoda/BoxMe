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

  // Following Andrew's lead on this one
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
