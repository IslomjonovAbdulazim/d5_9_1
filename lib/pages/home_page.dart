import 'package:d5_9_1/pages/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ListView(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: coffees.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 25,
                  childAspectRatio: 2 / 3,
                ),
                itemBuilder: (context, index) {
                  final model = coffees[index];
                  return CupertinoButton(
                    color: Colors.white,
                    padding: EdgeInsets.all(12),
                    borderRadius: BorderRadius.circular(16),
                    onPressed: () {
                      Get.to(DetailPage());
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  model.image,
                                  fit: BoxFit.cover,
                                  width: 1000,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 60,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.4),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      bottomLeft: Radius.circular(24),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(width: 2),
                                      Text(
                                        model.rating.toString(),
                                        style: GoogleFonts.sora(
                                          fontSize: 11,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          model.name,
                          style: GoogleFonts.sora(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoffeeModel {
  late String name;
  late double price;
  late double rating;
  late String image;
  late String type;

  CoffeeModel({
    required this.name,
    required this.price,
    required this.rating,
    required this.image,
    required this.type,
  });
}

final coffees = [
  CoffeeModel(
    name: "Caffe Mocha",
    price: 4.53,
    rating: 4.8,
    image: "assets/coffee-1.jpg",
    type: "Deep Foam",
  ),
  CoffeeModel(
    name: "Cappuccino",
    price: 3.85,
    rating: 4.7,
    image: "assets/coffee-2.jpg",
    type: "Medium Foam",
  ),
  CoffeeModel(
    name: "Espresso",
    price: 2.95,
    rating: 4.9,
    image: "assets/coffee-1.jpg",
    type: "No Foam",
  ),
  CoffeeModel(
    name: "Latte",
    price: 4.25,
    rating: 4.6,
    image: "assets/coffee-2.jpg",
    type: "Light Foam",
  ),
  CoffeeModel(
    name: "Americano",
    price: 3.15,
    rating: 4.4,
    image: "assets/coffee-1.jpg",
    type: "No Foam",
  ),
  CoffeeModel(
    name: "Macchiato",
    price: 4.75,
    rating: 4.8,
    image: "assets/coffee-2.jpg",
    type: "Spotted Foam",
  ),
  CoffeeModel(
    name: "Flat White",
    price: 4.35,
    rating: 4.5,
    image: "assets/coffee-1.jpg",
    type: "Micro Foam",
  ),
  CoffeeModel(
    name: "Caramel Latte",
    price: 5.25,
    rating: 4.7,
    image: "assets/coffee-2.jpg",
    type: "Sweet Foam",
  ),
  CoffeeModel(
    name: "Iced Coffee",
    price: 3.65,
    rating: 4.3,
    image: "assets/coffee-1.jpg",
    type: "Cold Brew",
  ),
  CoffeeModel(
    name: "Frappuccino",
    price: 5.85,
    rating: 4.6,
    image: "assets/coffee-2.jpg",
    type: "Whipped Cream",
  ),
  CoffeeModel(
    name: "Turkish Coffee",
    price: 3.45,
    rating: 4.2,
    image: "assets/coffee-1.jpg",
    type: "Traditional",
  ),
  CoffeeModel(
    name: "Affogato",
    price: 4.95,
    rating: 4.9,
    image: "assets/coffee-2.jpg",
    type: "Ice Cream",
  ),
];
