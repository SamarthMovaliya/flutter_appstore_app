import 'package:appstore/globals/globals.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Column(
          children: ShopIt
              .map((e) => Container(
                    child: Row(
                      children: [
                        Container(
                            height: 120,
                            width: 100,
                            child: Image(image: AssetImage(e['image']))),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                e['Name'],
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Text(
                              e['des'],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
        Column(
          children: games
              .map((e) => Container(
                    child: Row(
                      children: [
                        Container(
                            height: 120,
                            width: 100,
                            child: Image(image: AssetImage(e['image']))),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                e['Name'],
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Text(
                              e['des'],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
        Column(
          children: payment
              .map((e) => Container(
                    child: Row(
                      children: [
                        Container(
                            height: 120,
                            width: 100,
                            child: Image(image: AssetImage(e['image']))),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                e['Name'],
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Text(
                              'My Trust Depends',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ],
    ));
  }
}
