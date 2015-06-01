var app = app || {};

app.BrandView = Backbone.View.extend({

  initialize: function(){
    this.listenTo(this.model,'change', this.render);
    this.listenTo(this.model,'delete', this.remove);
  },
  template: _.template('<h3><%= name %></h3><button class="select-brand">Select</button>'),
  tagName: 'li',
  className: 'brand',
  render: function(){
    this.$el.append( this.template( this.model.attributes ) );
    return this;
  },
  events:{
    'click .select-brand': 'selectbrand'
  },
  selectbrand: function(){
    $('.brand-selected').removeClass('brand-selected');
    this.$el.addClass('brand-selected');
    app.brandSelection = this.model;
  }
});
