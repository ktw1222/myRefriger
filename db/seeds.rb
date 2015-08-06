# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Refriger.destroy_all
Post.destroy_all

refriger1 = Refriger.create(person: "Kim", location: "Home Kitchen")

refriger2 = Refriger.create(person: "Mom", location: "Basement")

# food1 = Food.create(name: "Chicken Breast" , amount: "1 pack" , first_date: "July 29, 2015" , expiration_date: "Months" , status: "in frozen" )
#
# food2 = Food.create(name: "Bread" , amount: "1 pack" , first_date: "August 5, 2015" , expiration_date: "August 12, 2015" , status: "okay")
#
# food3 = Food.create(name: "Milk" , amount: "1 bottle" , first_date: "July 25, 2015" , expiration_date: "August 7, 2015" , status:"drink Soon" )
#
# food4 = Food.create(name: "Egg" , amount: "1 dozen" , first_date: "August 1, 2015" , expiration_date: "August 15, 2015", status: "good" )
#
# food5 = Food.create(name: "Beer", amount: "12 bottles" , first_date: "July 30, 2015" , expiration_date: "Whenever" , status: "cool")


post1 = Post.create(title: "Garlic Chicken", author: "John", photo_url: "http://redirect.bigoven.com/pics/grilled-chicken-breast-with-garlic--2.jpg", content: "3 tablespoons butter, 4 chicken breast, 2 teaspoons garlic powder, 1 teaspoon onion power, 1 teaspoon salt ///
 Melt butter in a large skillet over medium high heat. Add chicken and sprinkle with garlic powder, seasoning salt and onion powder. Saute about 10 to 15 minutes on each side, or until chicken is cooked through and juices run clear
")

post2 = Post.create(title: "Marinated Grilled Shrimp", author: "Joe", photo_url: "http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2012/2/27/0/0155221_Grilled-shrimp-on-skewers_s4x3.jpg.rend.snigalleryslide.jpeg", content: "3 garlic, 1/3 cup olive oil, 1/2 teaspoon salt, 2 pounds shrimp
///
In a large bowl, stir together the garlic, olive oil, tomato sauce, and red wine vinegar. Season with basil, salt, and cayenne pepper. Add shrimp to the bowl, and stir until evenly coated. Cover, and refrigerate for 30 minutes to 1 hour, stirring once or twice.
Preheat grill for medium heat. Thread shrimp onto skewers, piercing once near the tail and once near the head. Discard marinade.
Lightly oil grill grate. Cook shrimp on preheated grill for 2 to 3 minutes per side, or until opaque.")

post3 = Post.create(title: "Salmon Steak", author: "Lee", photo_url: "http://thumbs.dreamstime.com/z/closeup-grilled-salmon-fillet-green-beans-11519186.jpg", content: "1 pound salmon fillets, 1/4 teaspoon salt, 1 teaspoon onion powder, 2 tablespoon butter
///
Preheat oven to 400 degrees F (200 degrees C).
Rinse salmon, and arrange in a 9x13 inch baking dish. Sprinkle salt, pepper, onion powder, and dill over the fish. Place pieces of butter evenly over the fish.
Bake in preheated oven for 20 to 25 minutes. Salmon is done when it flakes easily with a fork.")

post4 = Post.create(title: "Aglio olio pasta", author: "Justin", photo_url: "http://theliveinkitchen.com/wp-content/uploads/2012/08/SpaghettiAglioOlioOH.jpg", content: "16 ounces/1LB/453g Dry Pasta
1 1/2 Tbs. Salt for water + 1/2 teaspoon for pasta
5 Tbs. Olive Oil
6 large garlic cloves, minced
1/2 tsp. Crushed red pepper flakes
1/3 cup  fresh parsley, minced
1/2 tsp. Ground Black Pepper
1/2 tsp. Dry parsley
///
Bring a large pot of water to a boil and add salt, then drop the pasta in the pot. Cook according to the directions on the package, cooked but still to have a bite to it. Set aside 1 cup of the pasta water before you drain the pasta.
Meanwhile, heat the olive oil over medium heat in a larger pot. Add the garlic and fry for a minute or two and do not burn. Stir frequently, until it just begins to turn golden. Add the red pepper flakes and cook for 10-20 seconds more. Carefully add the reserved pasta water to the garlic and oil and bring to a boil. Lower the heat, add 1/2 teaspoon of salt, and simmer for about 5 minutes, until the liquid is reduced.
Add the drained pasta to the garlic sauce and toss.
Take it off the heat, add the parsley, black pepper and dry parsley and toss very well. Allow the pasta to rest covered off the heat for 3-5 minutes, so the pasta could absorb the sauce.
Taste if you need more salt, toss if you do add extra seasoning and serve warm, not hot! ")

post5 = Post.create(title: "corn dog", author: "Mary", photo_url: "http://www.cookingmamas.com/wp-content/uploads/2012/03/Corn-Dogs.jpg", content: "1 1/2 cup flour
1 teaspoon salt
1 Tablespoon baking powder
Milk
3 Tablespoons sugar
1/2 cup cornmeal
Hot dogs ///

1. Mix all ingredients together and add enough milk to make a thick batter.

2. Place a skewer halfway up each hot dog, starting at one end.

3. Dip hot dogs into batter and deep fry until golden.

")

post6 = Post.create(title: "Bread Pizza", author: "Kim", photo_url: "http://www.seriouseats.com/recipes/assets_c/2013/03/20130305-french-bread-pizza-pizza-lab-28-thumb-625xauto-310206.jpg", content: "1 whole loaf French bread

1 Tbsp. extra-virgin olive oil

1/2 cup pizza sauce, divided

1 cup shredded mozzarella cheese, divided
///

Preheat oven to 400 degrees F.

Slice bread in half lengthwise and place on a large baking sheet lined with aluminum foil. Brush cut side of each loaf with a little olive oil. Bake for 5-6 minutes, or until lightly browned.

Spread 1/4 cup pizza sauce on each bread half, then top each with 1/4 cup cheese. Add desired toppings. Evenly sprinkle bread halves with remaining 1/2 cup cheese. Season with salt and pepper.

Bake for 10-12 minutes, or until cheese is melted and bread is heated through.")
