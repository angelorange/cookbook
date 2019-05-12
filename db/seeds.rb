Recipe.destroy_all

Recipe.create(title: 'Bolo de cenoura', recipe_type: 'Sobremesa',
  cuisine: 'Brasileira', difficulty: 'Médio',
  cook_time: 60,
  ingredients: 'Farinha, açucar, cenoura',
  cook_method: 'Cozinhe a cenoura, corte em pedaços pequenos, misture com o restante dos ingredientes')

Recipe.create(title: 'Feijoada', recipe_type: 'Prato Principal',
    cuisine: 'Brasileira', difficulty: 'Difícil',
    cook_time: 90)
