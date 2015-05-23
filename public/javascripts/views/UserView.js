var app = app || {};

app.UserView = Backbone.View.extend({

  initialize: function(){
    this.listenTo(this.model,'change', this.render);
    this.listenTo(this.model,'delete', this.remove);
  },
  template: _.template('<h3><%= user-list %><button class="place-item">Select</button>'),
  tagName: 'li',
  className: 'user',
  render: function(){
    this.$el.append( this.template( this.model.attributes ) );
    this.renderBrandList();
    return this;
  },
  renderBrandList: function(){
    var brands = this.model.get('brands')
    var brandList = $('<ul>');
    for (var i = 0; i < brands.length; i++) {
      brandList.append( $('<li>').text( brands[i]['name'] ) );
    }
    this.$el.append(foodList);
  },
  events:{
    'click .select-user': 'selectUser'
    // 'event css-selector': 'functionToCall'
  },
  select: function(){
    $('.user-selected').removeClass('user-selected');
    this.$el.addClass('user-selected');
    app.userSelection = this.model;
  }
});
