import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List product = [
    {
      "name": "Air Presto",
      "price": 20.99,
      "rating": 4.5,
      "location": "East Cost",
    },
    {
      "name": "Air Max 97",
      "price": 20.99,
      "rating": 4.5,
      "location": "South North 43",
    },
    {
      "name": "React Presto",
      "price": 25.99,
      "rating": 4.5,
      "location": "North Gate 755",
    },
    {"name": "KD13 EP", "price": 22.99, "rating": 4.5, "location": "Ecma 1213"},
    {
      "name": "Air Max 97",
      "price": 20.99,
      "rating": 4.5,
      "location": "South North 43",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: TextField(
                    style: TextStyle(fontSize: 12, color: Color(0xFF858891)),
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF858891),
                      ),

                      suffixIcon: Icon(Icons.search_rounded, size: 15),
                      suffixIconColor: Colors.black,
                      filled: true,
                      fillColor: Color(0xFFF5F5F5),

                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "${product.length} Product Found",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 15),
                ListView.builder(
                  itemCount: product.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 15),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE6E6E6)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/${product[index]['name']}.png",
                            height: 128,
                          ),
                          SizedBox(width: 18),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product[index]['name'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "\$${product[index]['price']}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    size: 16,
                                    color: Color(0xFFF95400),
                                  ),
                                  SizedBox(),
                                  Text(
                                    "${product[index]['rating']} | ${product[index]['location']}",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
      ),
    );
  }
}
