import 'package:flutter/material.dart';
import 'package:recipe_app/models/food.dart';

class ListOfRecipes with ChangeNotifier {
  final List<Recipe> _recipes = [
    Recipe(
      recipeId: 1,
      recipeCategory: 'Breakfast',
      recipeName: 'Toast',
      recipeImage:
          'https://images.pexels.com/photos/704569/pexels-photo-704569.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      prepTime: 15.0,
      cookTime: 10.0,
      recipeServing: 2,
      recipeIngredients: [
        '1/2 small avocado',
        '1/2 teaspoon fresh lemon juice',
        'salt',
        'black pepper',
        '1 slice bread'
      ],
      recipeMethod:
          'In a small bowl, combine avocado, lemon juice, salt, and pepper. Gently mash with the back of a fork. Top toasted bread with mashed avocado mixture. Drizzle with olive oil and sprinkle over desired toppings.',
      recipeReview: 45,
      isPopular: true,
    ),
    Recipe(
      recipeId: 2,
      recipeCategory: 'Breakfast',
      recipeName: 'Smoothie',
      recipeImage:
          'https://images.pexels.com/photos/5366704/pexels-photo-5366704.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      prepTime: 5.0,
      cookTime: 0.0,
      recipeServing: 2,
      recipeIngredients: [
        '1/2 cup coconut water',
        '1 banana',
        '2 cups spinach',
        '1 cup frozen mango'
      ],
      recipeMethod:
          'In a blender, add ingredients in the order they are listed. Purée ingredients until smooth.',
      recipeReview: 25,
      isPopular: false,
    ),
    Recipe(
      recipeId: 3,
      recipeCategory: 'Breakfast',
      recipeName: 'Burritos',
      recipeImage:
          'https://images.pexels.com/photos/5848051/pexels-photo-5848051.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      prepTime: 35.0,
      cookTime: 20.0,
      recipeServing: 8,
      recipeIngredients: [
        '3 tbsp vegetable oil',
        '4 cups frozen hash brown potatoes',
        '8 eggs',
        '1 can chopped green chillies',
        'salt',
        'pepper',
        '6 sausages',
        '8 tortillas'
      ],
      recipeMethod:
          'Oil and potatoes together over medium high heat. In large bowl, beat eggs, green chiles, salt and pepper until well blended. In same skillet over medium-high heat, cook sausage 2 to 3 minutes, stirring frequently, until browned. Stir in egg mixture; cook 2 to 3 minutes, stirring occasionally, until scrambled.',
      recipeReview: 155,
      isPopular: false,
    ),
    Recipe(
      recipeId: 4,
      recipeCategory: 'Breakfast',
      recipeName: 'Omelette',
      recipeImage:
          'https://images.pexels.com/photos/6294248/pexels-photo-6294248.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      prepTime: 2.0,
      cookTime: 4.0,
      recipeServing: 1,
      recipeIngredients: ['2 eggs', '20 tbsp water', 'salt', 'black pepper'],
      recipeMethod:
          'Whisk eggs, water, salt and pepper. When eggs are almost set on surface but still look moist, cover half of omelette with filling. Slip spatula under unfilled side; fold over onto filled half.',
      recipeReview: 65,
      isPopular: false,
    ),
    Recipe(
      recipeId: 5,
      recipeCategory: 'Breakfast',
      recipeName: 'Smoothie',
      recipeImage:
          'https://images.unsplash.com/photo-1534352436920-f658b50b73fe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=987&q=80',
      prepTime: 5.0,
      cookTime: 00.0,
      recipeServing: 2,
      recipeIngredients: [
        '1 banana, sliced and frozen',
        '1 cup frozen mango chunks',
        '1 cup frozen pineapple chunks',
        '1 cup almond milk'
      ],
      recipeMethod:
          'In blender, pulse banana, mango, and pineapple with almond milk until smooth but still thick, stopping and stirring occasionally.',
      recipeReview: 145,
      isPopular: false,
    ),
    Recipe(
      recipeId: 6,
      recipeCategory: 'Lunch',
      recipeName: 'Omelette',
      recipeImage:
          'https://images.unsplash.com/photo-1588580261949-f17eacb905c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      prepTime: 5.0,
      cookTime: 10.0,
      recipeServing: 1,
      recipeIngredients: [
        '2 eggs',
        '1/2 bell pepper',
        '2 slices ham',
        '1/4 cup Spinach',
        'salt',
        'pepper'
      ],
      recipeMethod:
          'Combine all ingredients in a microwaveable mug. Cook for 2-3 minutes, making sure the egg doesn’t bubble over. Stir halfway through the cooking process.',
      recipeReview: 15,
      isPopular: false,
    ),
    Recipe(
      recipeId: 7,
      recipeCategory: 'Lunch',
      recipeName: 'Tostadas',
      recipeImage:
          'https://images.unsplash.com/photo-1619019187992-b2569e321752?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80',
      prepTime: 15.0,
      cookTime: 10.0,
      recipeServing: 2,
      recipeIngredients: [
        '1 1/2 cups chopped cucumber',
        '1 cup chopped cherry tomatoes',
        '1/2 cup chopped green olives',
        '1/4 cup diced shallot',
        '1/4 cup chopped parsley',
        '1 tbsp olive oil',
        'lemon juice',
        'salt',
        'pepper',
        'tortillas',
        '1/2 cup hummus',
        'salad'
      ],
      recipeMethod:
          'Prepare the salad. Add the cucumbers, tomatoes, olives, shallots and parsley into a mixing bowl. In a separate bowl whisk together dressing ingredients and pour over the salad.',
      recipeReview: 45,
      isPopular: false,
    ),
    Recipe(
      recipeId: 8,
      recipeCategory: 'Lunch',
      recipeName: 'Naan Pizza',
      recipeImage:
          'https://images.pexels.com/photos/1260968/pexels-photo-1260968.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      prepTime: 5.0,
      cookTime: 5.0,
      recipeServing: 2,
      recipeIngredients: [
        '2 naans',
        'Tomato sauce',
        'Garlic powder',
        'Italian seasoning',
        'Sliced fresh mozzarella',
        'Fresh basil',
        'salt',
        'pepper',
        'olive oil'
      ],
      recipeMethod:
          'Place the naans on one larger or two smaller baking sheets. Spread each naan with an even layer of tomato sauce. Add a few slices of mozzarella to each naan and fill in the gaps with the basil.',
      recipeReview: 82,
      isPopular: true,
    ),
    Recipe(
      recipeId: 9,
      recipeCategory: 'Lunch',
      recipeName: 'Tuna Salad',
      recipeImage:
          'https://images.unsplash.com/photo-1604497181015-76590d828b75?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1742&q=80',
      prepTime: 10.0,
      cookTime: 10.0,
      recipeServing: 4,
      recipeIngredients: [
        '2 cans tuna in water',
        '1/4 mayonnaise',
        '2 tbsp relish',
        '2 tbsp red onion',
        'salt',
        'pepper'
      ],
      recipeMethod:
          'Place drained tuna in a medium bowl. Add the mayonnaise, relish, red onion and a little salt and pepper. Stir with a fork until everything is well combined. Taste and add more salt and pepper as needed.',
      recipeReview: 68,
      isPopular: false,
    ),
    Recipe(
      recipeId: 10,
      recipeCategory: 'Lunch',
      recipeName: 'Chicken Salad',
      recipeImage:
          'https://images.pexels.com/photos/6107787/pexels-photo-6107787.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      prepTime: 5.0,
      cookTime: 5.0,
      recipeServing: 2,
      recipeIngredients: [
        '1/2 cup mayonnaise',
        '1 tbps lemon juice',
        'salt',
        'black pepper',
        '2 cups chicken',
        '1 stalk celery',
        '1/2 cup almonds'
      ],
      recipeMethod:
          'Place almonds in a frying pan. Toast over medium-high heat, shaking frequently. Watch carefully, as they burn easily. In a medium bowl, mix together mayonnaise, lemon juice, and pepper. Toss with chicken, almonds, and celery.',
      recipeReview: 27,
      isPopular: false,
    ),
    Recipe(
      recipeId: 11,
      recipeCategory: 'Dinner',
      recipeName: 'Garlic Salmon',
      recipeImage:
          'https://images.unsplash.com/photo-1584913855963-e0b0229af61d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1335&q=80',
      prepTime: 5.0,
      cookTime: 10.0,
      recipeServing: 3,
      recipeIngredients: [
        '1 pound salmon fillet',
        '1 bunch asparagus',
        '1 tbsp butter',
        '1 tbsp olive oil',
        '2 cloves garlic',
        '1/2 lemon juice',
        'salt',
        'pepper'
      ],
      recipeMethod:
          'Heat a tablespoon of butter and a tablespoon of olive oil in a large pan. Wait until the pan is hot and the butter has fully melted. Add the salmon and asparagus, season with salt and pepper , and cook for about 3-4 minutes on one side.',
      recipeReview: 33,
      isPopular: false,
    ),
    Recipe(
      recipeId: 12,
      recipeCategory: 'Dinner',
      recipeName: 'BBQ Chicken',
      recipeImage:
          'https://images.unsplash.com/photo-1610057099443-fde8c4d50f91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      prepTime: 5.0,
      cookTime: 240.0,
      recipeServing: 6,
      recipeIngredients: [
        '2 lbs boneless',
        '1 cup BBQ sauce',
        '1/4 cup Italian dressing',
        '1/4 cup brown sugar',
        '1 tbsp Worcestershire sauce',
        'salt'
      ],
      recipeMethod:
          'Season chicken breast lightly with some sea salt and place in your crockpot. In a mixing bowl combine BBQ sauce, Italian dressing, brown sugar and Worcestershire sauce. Stir until well combined.',
      recipeReview: 245,
      isPopular: false,
    ),
    Recipe(
      recipeId: 13,
      recipeCategory: 'Dinner',
      recipeName: 'Broccoli Pasta',
      recipeImage:
          'https://images.unsplash.com/photo-1607118750694-1469a22ef45d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=987&q=80',
      prepTime: 5.0,
      cookTime: 10.0,
      recipeServing: 2,
      recipeIngredients: [
        '4 oz. pasta',
        '0.33 lb. frozen broccoli florets ',
        '1 tbsp butter',
        '1 tbsp parmesan',
        'salt',
        'pepper'
      ],
      recipeMethod:
          'Bring a pot of water to a boil, then add the pasta. Boil until the pasta is al dente (7-10 minutes). Add the frozen broccoli florets to the boiling pasta water, turn off the heat, and let sit for 1-2 minutes, or until the broccoli is tender-crisp. Drain the pasta and broccoli in a colander.',
      recipeReview: 82,
      isPopular: true,
    ),
    Recipe(
      recipeId: 14,
      recipeCategory: 'Dinner',
      recipeName: 'Carbonara',
      recipeImage:
          'https://images.unsplash.com/photo-1608756687911-aa1599ab3bd9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=987&q=80',
      prepTime: 5.0,
      cookTime: 15.0,
      recipeServing: 4,
      recipeIngredients: [
        '8 ounces spaghetti',
        '2 eggs',
        '1/2 cup parmesan',
        '4 slices bacon',
        '4 cloves garlic',
        'salt',
        'pepper',
        '2 tbsp parsley'
      ],
      recipeMethod:
          'In a small bowl, whisk together eggs and Parmesan; set aside. Heat a large skillet over medium high heat. Add bacon and cook until brown and crispy, about 6-8 minutes. Stir in garlic until fragrant, about 1 minute. Reduce heat to low.',
      recipeReview: 68,
      isPopular: false,
    ),
    Recipe(
      recipeId: 15,
      recipeCategory: 'Dinner',
      recipeName: 'Shrimp',
      recipeImage:
          'https://images.unsplash.com/photo-1605493624448-8efd97c98c91?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80',
      prepTime: 45.0,
      cookTime: 10.0,
      recipeServing: 4,
      recipeIngredients: [
        '1/3 cup hoisin sauce',
        '1/4 cup honey',
        '1/2 cup lemon juice',
        'Zest of 1 lemon',
        '2 cups chicken',
        'salt',
        'pepper',
        ' 1 1/2 pounds shrimp',
        '2 tbsp cilantro'
      ],
      recipeMethod:
          'In a medium bowl, whisk together hoisin sauce, honey, lemon juice, lemon zest, salt and pepper, to taste. In a gallon size Ziploc bag or large bowl, combine shrimp and hoisin mixture; marinate for at least 30 minutes to overnight, turning the bag occasionally. and cooked through, about 6-8 minutes.',
      recipeReview: 127,
      isPopular: false,
    ),
    Recipe(
      recipeId: 16,
      recipeCategory: 'Snack',
      recipeName: 'Cookie Balls',
      recipeImage:
          'https://images.unsplash.com/photo-1505252784141-72a7a8073787?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1351&q=80',
      prepTime: 15.0,
      cookTime: 30.0,
      recipeServing: 30,
      recipeIngredients: [
        '1/3 cup creamy peanut butter',
        '2 ripe bananas',
        '2 1/2 cups dry oats',
        '1/2 cup chocolate chips'
      ],
      recipeMethod:
          'In a medium bowl, combine peanut butter, bananas, and vanilla extract until well mixed. Mix in oats and chocolate chips. Make into small bowls, put into the fridge, and wait until they are chill.',
      recipeReview: 67,
      isPopular: false,
    ),
    Recipe(
      recipeId: 17,
      recipeCategory: 'Snack',
      recipeName: 'Apple Chips',
      recipeImage:
          'https://images.pexels.com/photos/8963959/pexels-photo-8963959.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      prepTime: 15.0,
      cookTime: 180.0,
      recipeServing: 4,
      recipeIngredients: [
        '2 apples',
        '1/4 cup Italian dressing',
        '1/2 teaspoon ground cinnamon',
        '1 1/2 teaspoon sugar'
      ],
      recipeMethod:
          'Place the apple slices flat on a baking sheet, being careful not to overlap them. Sprinkle with cinnamon and sugar. Bake for 1 hour, flip the pieces over, bake for 1 more hour. Let cool in the oven for 1 hour.',
      recipeReview: 15,
      isPopular: true,
    ),
    Recipe(
      recipeId: 18,
      recipeCategory: 'Snack',
      recipeName: 'Pancakes',
      recipeImage:
          'https://images.pexels.com/photos/357573/pexels-photo-357573.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      prepTime: 5.0,
      cookTime: 10.0,
      recipeServing: 6,
      recipeIngredients: ['1 banana', '2 eggs'],
      recipeMethod:
          'Using a fork, mash the banana in a bowl. Mix 2 eggs into the mashed banana and whisk together. Pour the batter into a lightly oiled pan.',
      recipeReview: 142,
      isPopular: false,
    ),
    Recipe(
      recipeId: 19,
      recipeCategory: 'Snack',
      recipeName: 'Smoothie',
      recipeImage:
          'https://images.pexels.com/photos/434295/pexels-photo-434295.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      prepTime: 2.0,
      cookTime: 2.0,
      recipeServing: 1,
      recipeIngredients: [
        '1 frozen banana',
        '1 cup blueberries',
        '1 cup almond milk'
      ],
      recipeMethod: 'Pour all ingredients into blender. Blend for 1 minute.',
      recipeReview: 102,
      isPopular: false,
    ),
    Recipe(
      recipeId: 20,
      recipeCategory: 'Snack',
      recipeName: 'Energy Balls',
      recipeImage:
          'https://images.unsplash.com/photo-1592875206599-efd4e1fe6b40?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=987&q=80',
      prepTime: 3.0,
      cookTime: 0.0,
      recipeServing: 8,
      recipeIngredients: [
        '1/4 cup dark or semi-sweet chocolate',
        '1 cup almonds',
        '1 cup dates',
        'salt',
        '1 tbsp vanilla extract'
      ],
      recipeMethod:
          'Combine all ingredients in a food processor or high tech blender. Mix well until the mixture forms a giant, evenly mixed balls. You may have to stop mixing and scrape down the blender once or twice.',
      recipeReview: 47,
      isPopular: false,
    ),
    Recipe(
      recipeId: 21,
      recipeCategory: 'Desert',
      recipeName: 'Mousse',
      recipeImage:
          'https://images.pexels.com/photos/1707920/pexels-photo-1707920.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      prepTime: 20.0,
      cookTime: 0.0,
      recipeServing: 2,
      recipeIngredients: [
        '1/4 cup chocolate chips',
        '1 tbsp water',
        '1 large egg yolk',
        '1/2 tbsp vanilla extract',
        '1/2 whipping cream',
        '1 tbsp sugar'
      ],
      recipeMethod:
          'In a small saucepan, melt chocolate chips with water; stir until smooth. Stir a small amount of hot chocolate mixture into egg yolk; return all to the pan, stirring constantly. Cook and stir for 2 minutes or until slightly thickened. Remove from the heat; stir in vanilla. Quickly transfer to a small bowl. Stir occasionally until completely cooled. In a small bowl, beat whipping cream until it begins to thicken. Add sugar; beat until soft peaks form. Fold into cooled chocolate mixture. Cover and refrigerate for at least 2 hours.',
      recipeReview: 84,
      isPopular: true,
    ),
    Recipe(
      recipeId: 22,
      recipeCategory: 'Desert',
      recipeName: 'Fried Apples',
      recipeImage:
          'https://images.unsplash.com/photo-1635876021223-bc7717e2b11e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=987&q=80',
      prepTime: 15.0,
      cookTime: 30.0,
      recipeServing: 8,
      recipeIngredients: [
        '1/2 cup butter',
        '6 unpeeled tart red apples',
        '3/4 cup sugar',
        '3/4 teaspoon cinnamon'
      ],
      recipeMethod:
          'Melt butter in a large cast-iron or other ovenproof skillet. Add apples and 1/2 cup sugar; stir to mix well. Cover and cook over low heat for 20 minutes or until apples are tender, stirring frequently.',
      recipeReview: 215,
      isPopular: false,
    ),
    Recipe(
      recipeId: 23,
      recipeCategory: 'Desert',
      recipeName: 'Sorbet',
      recipeImage:
          'https://images.pexels.com/photos/5060453/pexels-photo-5060453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      prepTime: 5.0,
      cookTime: 0.0,
      recipeServing: 2,
      recipeIngredients: [
        '1 package frozen mango chunks',
        '1/2 cup passion fruit juice',
        '2 tbsp sugar'
      ],
      recipeMethod:
          'Place all ingredients in a blender; cover and process until smooth. Serve immediately. If desired, for a firmer texture, cover and freeze at least 3 hours.',
      recipeReview: 242,
      isPopular: false,
    ),
    Recipe(
      recipeId: 24,
      recipeCategory: 'Desert',
      recipeName: 'Cream Cake',
      recipeImage:
          'https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      prepTime: 360.0,
      cookTime: 0.0,
      recipeServing: 8,
      recipeIngredients: [
        '600ml thickened cream',
        '1/3 cup drinking chocolate',
        '250g packet Arnott\'s biscuits',
        'White chocolate curls'
      ],
      recipeMethod:
          'Mix cream and chocolate together. Spread 2 tbsp cream mixture along a plate. Sandwich biscuits together with half the remaining cream mixture. Assemble biscuits upright on prepared plate to form a log. Spread remaining cream mixture over top and sides of log. Cover and refrigerate overnight',
      recipeReview: 102,
      isPopular: false,
    ),
    Recipe(
      recipeId: 25,
      recipeCategory: 'Desert',
      recipeName: 'Cheesecake',
      recipeImage:
          'https://images.unsplash.com/photo-1609355109553-3bb67c76b1f7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=987&q=80',
      prepTime: 60.0,
      cookTime: 0.0,
      recipeServing: 4,
      recipeIngredients: [
        '75g plain chocolate biscuits',
        '1 orange',
        '250g cream cheese',
        '60ml condensed milk'
      ],
      recipeMethod:
          'Add biscuits to food processor. Finely grate the rind of half the orange. Use a zester to zest the remaining orange half. Juice the orange. Process the cream cheese, condensed milk, finely grated orange rind and 2 tablespoons of orange juice in the food processor until smooth.',
      recipeReview: 47,
      isPopular: false,
    ),
    Recipe(
      recipeId: 26,
      recipeCategory: 'Beverage',
      recipeName: 'Smoothie',
      recipeImage:
          'https://images.pexels.com/photos/5946628/pexels-photo-5946628.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      prepTime: 5.0,
      cookTime: 0.0,
      recipeServing: 1,
      recipeIngredients: ['1 cup milk', '1 1/2 bananas', '1 gr packets sugar'],
      recipeMethod:
          'Blend milk, bananas, and sugar substitute in a blender or food processor until smooth.',
      recipeReview: 24,
      isPopular: false,
    ),
    Recipe(
      recipeId: 27,
      recipeCategory: 'Beverage',
      recipeName: 'Zinger Juice',
      recipeImage:
          'https://images.unsplash.com/photo-1506802913710-40e2e66339c9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=987&q=80',
      prepTime: 5.0,
      cookTime: 5.0,
      recipeServing: 2,
      recipeIngredients: ['2 lemons', '2 carrots', '2 apples', '2 beets'],
      recipeMethod:
          'Press lemons, carrots, apples, and beets through a juicer and into a large glass.',
      recipeReview: 115,
      isPopular: false,
    ),
    Recipe(
      recipeId: 28,
      recipeCategory: 'Beverage',
      recipeName: 'Lemonade',
      recipeImage:
          'https://images.unsplash.com/photo-1621263764928-df1444c5e859?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=987&q=80',
      prepTime: 5.0,
      cookTime: 0.0,
      recipeServing: 6,
      recipeIngredients: [
        '1 cup granulated sugar',
        '6 cups water, divided',
        '1 lb. strawberries',
        '1 cup lemon juice',
        'ice',
        'mint leaves'
      ],
      recipeMethod:
          'In a small saucepan over medium heat, combine sugar and 1 cup of water. Bring to a simmer and stir until dissolved. Let cool. In a blender, combine strawberries and 1 cup water. Blend until pureed. Using a fine mesh strainer, strain puree and discard solids.',
      recipeReview: 193,
      isPopular: false,
    ),
    Recipe(
      recipeId: 29,
      recipeCategory: 'Beverage',
      recipeName: 'Dalgona',
      recipeImage:
          'https://images.unsplash.com/photo-1588857756087-281f8cceb865?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=984&q=80',
      prepTime: 5.0,
      cookTime: 0.0,
      recipeServing: 2,
      recipeIngredients: [
        '2 tbsp granulated sugar',
        '2 tbsp. instant coffee ',
        '2 tbsp. cold water,',
        'ice'
      ],
      recipeMethod:
          'In a medium bowl, combine sugar, coffee, and water. Using a hand mixer or a whisk, vigorously whisk until mixture turns silky smooth and shiny, then continue whisking until it thickens and holds its lofty, foamy shape. Fill a glass most of the way full with ice and milk, then dollop and swirl the whipped coffee mixture on top',
      recipeReview: 202,
      isPopular: false,
    ),
    Recipe(
        recipeId: 30,
        recipeCategory: 'Beverage',
        recipeName: 'Iced Tea',
        recipeImage:
            'https://images.pexels.com/photos/40594/lemon-tea-cold-beverages-summer-offerings-40594.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        prepTime: 5.0,
        cookTime: 180.0,
        recipeServing: 4,
        recipeIngredients: [
          '4 cups water',
          '1 orange',
          '1/2 cups Thai tea mix ',
          '1/2 cup granulated sugar',
          'ice',
          'sweet condensed milk'
        ],
        recipeMethod:
            'Bring water to a boil. In a large pitcher, combine boiling water, Thai tea mix, and sugar. Let steep 15 minutes. Chill until cold, at least 2 hours.',
        recipeReview: 147,
        isPopular: false),
  ];

  List<Recipe> get getRecipes {
    return _recipes;
  }

  Recipe findById(double id) {
    return _recipes.firstWhere((i) => i.recipeId == id);
  }

  List<dynamic> findByCategory(String categoryName) {
    List _categoryList = _recipes
        .where((element) => element.recipeCategory
            .toLowerCase()
            .contains(categoryName.toLowerCase()))
        .toList();
    return _categoryList;
  }

  List<Recipe> get popularRecipes {
    return _recipes.where((element) => element.isPopular).toList();
  }

  List<dynamic> searchRecipe(String searchText) {
    List _searchList = _recipes
        .where((element) =>
            element.recipeName.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
    return _searchList;
  }
}
