class Recipe {
  final int recipeId;
  final String recipeCategory;
  final String recipeName;
  final String recipeImage;
  final double prepTime;
  final double cookTime;
  final double recipeReview;
  final int recipeServing;
  final List recipeIngredients;
  final String recipeMethod;
  final bool isPopular;

  Recipe({
    required this.recipeId,
    required this.recipeCategory,
    required this.recipeName,
    required this.recipeImage,
    required this.prepTime,
    required this.cookTime,
    required this.recipeServing,
    required this.recipeIngredients,
    required this.recipeMethod,
    required this.recipeReview,
    required this.isPopular,
  });
}
