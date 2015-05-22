var app = app || {};

app.brands = new BrandCollection({
  model: app.BrandModel
});

app.brands.fetch();
