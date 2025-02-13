import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_breakfast_app/models/diet.dart';

class DietScreen extends StatelessWidget {
  const DietScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            'Recommandation\n for Diet',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Défilement horizontal
            itemCount: diets.length,
            itemBuilder: (context, index) {
              final category = diets[index];
              return Container(
                width: 220, // Largeur fixe pour chaque carte
                margin: EdgeInsets.symmetric(
                    horizontal: 10), // Espacement entre les cartes
                child: Card(
                  color: index % 2 == 0
                      ? const Color.fromARGB(255, 225, 240, 255)
                      : const Color.fromARGB(255, 250, 228, 240),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          category.iconPath,
                          height: 80,
                        ),
                        Text(
                          category.name,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        Text(
                          '${category.difficulty} | ${category.preparationTime} | ${category.calories}kCal ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Colors.grey.shade600),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors
                                .transparent, // Définit la couleur de fond à transparent pour utiliser le dégradé
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30), // Arrondi des coins du bouton
                            ),
                            shadowColor: Colors
                                .transparent, // Supprime l'ombre si souhaité
                          ).copyWith(
                            elevation: ButtonStyleButton.allOrNull(
                                0), // Supprime l'élévation par défaut
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(
                                      255, 156, 201, 255), // Couleur de départ
                                  Color.fromARGB(255, 148, 172,
                                      253), // Couleur de fin (ajuste selon tes préférences)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(
                                  50), // Arrondi des coins pour le conteneur
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 35), // Padding du bouton
                            child: Text(
                              'View',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.white, // Couleur du texte
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
