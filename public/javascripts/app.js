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

  $('.left-off-canvas-menu').hide();

  $('.left-off-canvas-toggle').on("click", function(evt){evt.preventDefault();

    $('.left-off-canvas-menu').slideToggle("slow");});


  $('#place-item').on('click', function(){

    var brandId = app.brandSelection.id;
    $.ajax({
      method: 'post',
      url: '/api/items',
      data: {item: {brand_id: brandId} },
      success: function(){

        $('.brand-selected').removeClass('brand-selected');
      }
    });

  });


});
