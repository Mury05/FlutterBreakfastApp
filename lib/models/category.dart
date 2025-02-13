class Categorie {
  final String name;
  final String iconPath;

  Categorie({required this.name, required this.iconPath});
}

List<Categorie> categories = [
  Categorie(name: 'Salad', iconPath: 'assets/icons/plate.svg'),
  Categorie(name: 'Cake', iconPath: 'assets/icons/pancakes.svg'),
  Categorie(name: 'Pie', iconPath: 'assets/icons/pie.svg'),
  Categorie(name: 'Snacks', iconPath: 'assets/icons/orange-snacks.svg'),
];
