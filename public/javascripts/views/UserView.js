var app = app || {};

app.userView = Backbone.View.extend({

  initialize: function(){
    this.listenTo(this.model,'change', this.render);
    this.listenTo(this.model,'delete', this.remove);
  },
  template: _.template('<h3><%= table_number %><button class="select-user">Select</button>'),
  tagName: 'li',
  className: 'user',
  render: function(){
    this.$el.append( this.template( this.model.attributes ) );
    this.renderbrandList();
    return this;
  },
  renderbrandList: function(){
    var brands = this.model.get('brands')
    var brandList = $('<ul>');
    for (var i = 0; i < brands.length; i++) {
      brandList.append( $('<li>').text( brands[i]['name'] ) );
    }
    this.$el.append(brandList);
  },
  events:{
    'click .select-user': 'selectuser'

  },
  selectuser: function(){
    $('.user-selected').removeClass('user-selected');
    this.$el.addClass('user-selected');
    app.userSelection = this.model;
  }
});
