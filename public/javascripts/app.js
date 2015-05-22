var app = app || {};

$(document).ready(function(){


  app.brands = new app.brandCollection({
    model: app.brandModel
  })

  app.users = new app.userCollection({
    model: app.userModel
  })

  app.brandListPainter = new app.GeneralListView({
    modelView: app.BrandView,
    collection: app.brands,
    el: $('#menu-list'),
  });

  app.userListPainter = new app.GeneralListView({
    modelView: app.userView,
    collection: app.users,
    el: $('#user-list'),
  });

  app.users.fetch();
  app.brands.fetch();

  // Following Andrew's lead on this one
  $('#place-item').on('click', function(){

    var userId = app.userSelection.get('id');
    var brandId = app.brandselection.get('id');

    $.ajax({
      method: 'post',
      url: '/api/items',
      data: {item: {user_id: userId, brand_id: brandId} },
      success: function(){
        app.users.fetch( {reset: true} );

        $('.brand-selected').removeClass('brand-selected');
        $('.user-selected').removeClass('user-selected');
      }
    });

  });


});
