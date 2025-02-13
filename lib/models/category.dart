class Category {
  final String name; 
  final String iconPath;

  Category({required this.name, required this.iconPath});
}
List<Category> categories = [
  Category(name: 'Salad', iconPath: 'assets/icons/plate.svg'),
  Category(name: 'Cake', iconPath: 'assets/icons/pancakes.svg'),
  Category(name: 'Pie', iconPath: 'assets/icons/pie.svg'),
];
