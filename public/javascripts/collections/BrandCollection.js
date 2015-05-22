var app = app || {};

app.BrandCollection = Backbone.Collection.extend({
  url: '/api/brands'
});
