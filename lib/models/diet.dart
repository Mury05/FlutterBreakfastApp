class Diet {
  final String name;
  final String iconPath;
  final String difficulty;
  final String preparationTime;
  final int calories;

  Diet({
    required this.name,
    required this.iconPath,
    required this.difficulty,
    required this.preparationTime,
    required this.calories,
  });
}

List<Diet> diets = [
  Diet(
    name: 'Honey Pancake',
    iconPath: 'assets/icons/honey-pancakes.svg',
    difficulty: 'Easy',
    preparationTime: '30mins',
    calories: 180,
  ),
  Diet(
    name: 'Canai Bread',
    iconPath: 'assets/icons/canai-bread.svg',
    difficulty: 'Easy',
    preparationTime: '20mins',
    calories: 230,
  ),
  Diet(
    name: 'Salmon Nigiri',
    iconPath: 'assets/icons/salmon-nigiri.svg',
    difficulty: 'Hard',
    preparationTime: '45mins',
    calories: 1500,
  ),
  Diet(
    name: 'Orange Snacks',
    iconPath: 'assets/icons/orange-snacks.svg',
    difficulty: 'Hard',
    preparationTime: '35mins',
    calories: 200,
  ),
  Diet(
    name: 'Blueberry Pancake',
    iconPath: 'assets/icons/blueberry-pancake.svg',
    difficulty: 'Easy',
    preparationTime: '35mins',
    calories: 2000,
  ),
  // Ajoute d'autres plats ici
];
