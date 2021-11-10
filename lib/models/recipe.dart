
class Recipe {
  final String image;
  final String source;
  final String url;
  final String label;
  final List healthLabels;
  final List ingredientLines;
  final List dietLabels;

  Recipe({
    required this.image,
    required this.source,
    required this.url,
    required this.label,
    required this.healthLabels,
    required this.ingredientLines,
    required this.dietLabels,
  });
}
