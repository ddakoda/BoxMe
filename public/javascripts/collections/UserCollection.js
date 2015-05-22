var app = app || {};

app.UserCollection = Backbone.Collection.extend({
  url: '/api/users'
});
