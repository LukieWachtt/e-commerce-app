  import 'package:flutter/material.dart';
import 'package:ui_e_commerce/widgets/categoriesWidget.dart';
import 'package:ui_e_commerce/widgets/homeappbar.dart';
import 'package:ui_e_commerce/widgets/itemsWidget.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          const HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here....",
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color.fromARGB(255, 49, 160, 251),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                
                // Categories Widget
                CategoriesWidget(),

                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: const Text(
                    'Best Selling',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),
                  ),

                ),

                ItemsWidget()
              ],
            ),
          )
        ],

    );
  }
}
