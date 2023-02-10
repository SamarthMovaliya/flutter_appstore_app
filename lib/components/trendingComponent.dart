import 'package:appstore/globals/globals.dart';
import 'package:appstore/screens/app.dart';
import 'package:flutter/material.dart';

class trendingComponent extends StatefulWidget {
  const trendingComponent({Key? key}) : super(key: key);

  @override
  State<trendingComponent> createState() => _trendingComponentState();
}

class _trendingComponentState extends State<trendingComponent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(children: [
          (ios)
              ? SizedBox(
                  height: 100,
                )
              : SizedBox(),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Social Media',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey.shade700),
                )),
          ),
          (ios)
              ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: socialapp
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'newPage',
                                    arguments: e);
                              },
                              child: Container(
                                height: 130,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          offset: Offset(2, 3),
                                          blurRadius: 7)
                                    ]),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset('${e['image']}'),
                                      ),
                                    ),
                                    Text(
                                      '${e['Name']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('${e['Rating']} ★'),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: socialapp
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'newPage',
                                    arguments: e);
                              },
                              child: Container(
                                height: 130,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          offset: Offset(2, 3),
                                          blurRadius: 7)
                                    ]),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset('${e['image']}'),
                                      ),
                                    ),
                                    Text(
                                      '${e['Name']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('${e['Rating']} ★'),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Payment',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey.shade700),
                )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: payment
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'newPage', arguments: e);
                        },
                        child: Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    offset: Offset(2, 3),
                                    blurRadius: 7)
                              ]),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  child: Image.asset('${e['image']}'),
                                ),
                              ),
                              Text(
                                '${e['Name']}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('${e['Rating']} ★'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          (ios)?Column(
            children: [Padding(
              padding: const EdgeInsets.all(14),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'New',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey.shade700),
                  )),
            ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: whatsnew
                      .map(
                        (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'newPage', arguments: e);
                        },
                        child: Container(
                          height: 220,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    offset: Offset(2, 3),
                                    blurRadius: 7)
                              ]),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 200,
                                  width: 250,
                                  child: Image.asset('${e['image']}'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                      .toList(),
                ),
              ),],
          ):SizedBox(),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Shoppings',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey.shade700),
                )),
          ),
          (ios)
              ? SingleChildScrollView(
                  child: Column(
                    children: ShopIt.map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'newPage',
                                arguments: e);
                          },
                          child: Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      offset: Offset(2, 3),
                                      blurRadius: 7)
                                ]),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 80,
                                    width: 100,
                                    child: Image.asset('${e['image']}'),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '${e['Name']}',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('${e['Rating']} ★'),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ).toList(),
                  ),
                )
              : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ShopIt.map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'newPage',
                                arguments: e);
                          },
                          child: Container(
                            height: 140,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      offset: Offset(2, 3),
                                      blurRadius: 7)
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    child: Image.asset('${e['image']}'),
                                  ),
                                ),
                                Text(
                                  '${e['Name']}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('${e['Rating']} ★'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ).toList(),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Games',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey.shade700),
                )),
          ),
          (ios)
              ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: games
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'newPage',
                                    arguments: e);
                              },
                              child: Container(
                                height: 200,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          offset: Offset(2, 3),
                                          blurRadius: 7)
                                    ]),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 120,
                                        width: 120,
                                        child: Image.asset('${e['image']}'),
                                      ),
                                    ),
                                    Text(
                                      '${e['Name']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('${e['Rating']} ★'),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: games
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'newPage',
                                    arguments: e);
                              },
                              child: Container(
                                height: 200,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          offset: Offset(2, 3),
                                          blurRadius: 7)
                                    ]),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 120,
                                        width: 120,
                                        child: Image.asset('${e['image']}'),
                                      ),
                                    ),
                                    Text(
                                      '${e['Name']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('${e['Rating']} ★'),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
        ]),
      ),
    );
  }
}
