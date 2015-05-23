var app = app || {};

$(document).ready(function(){


  app.brands = new app.BrandCollection({
    model: app.BrandModel
  })

  app.users = new app.UserCollection({
    model: app.UserModel
  })

  app.brandListPainter = new app.GeneralListView({
    modelView: app.BrandView,
    collection: app.brands,
    el: $('#brand-list'),
  });

  app.userListPainter = new app.GeneralListView({
    modelView: app.userView,
    collection: app.users,
    el: $('#user-list'),
  });

  app.brands.fetch();
  app.users.fetch();

  // Following Andrew's lead on this one
  $('#place-item').on('click', function(){

    var brandId = app.brandSelection.get('id');
    var userId = app.userSelection.get('id');

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
