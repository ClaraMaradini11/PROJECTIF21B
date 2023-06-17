import 'package:flutter/material.dart';
import 'dart:ui';

class Login1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Background Container',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: screenWidth,
                      height: screenHeight,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/images/bg1.jpeg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black45, BlendMode.darken),
                        ),
                      ),
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Container(
                            color: Colors.black.withOpacity(
                                0.5), // Warna overlay untuk efek blur
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                          ),
                          Image.asset(
                            'asset/images/tekno.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'EVENT KAMPUS',
                            style: TextStyle(
                              color: Color.fromARGB(255, 249, 199, 50),
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'UNIVERSITAS TEKNOKRAT INDONESIA',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(25),
                            width: 300,
                            height: 400,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  padding: EdgeInsets.fromLTRB(5, 10, 15, 13),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: -5),
                                      border: InputBorder.none,
                                      hintText: 'Username',
                                      prefixIcon: Icon(Icons.person_2_rounded),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 50,
                                  padding: EdgeInsets.fromLTRB(5, 10, 15, 13),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: -5),
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      prefixIcon: Icon(Icons.lock),
                                      suffixIcon: GestureDetector(
                                        onTap: () {},
                                        child: Icon(Icons.visibility),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Forget Password?',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(100, 40),
                                        primary:
                                            Color.fromARGB(255, 199, 34, 23),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              30), // Menambahkan radius
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text('LOGIN'),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('REGISTER'),
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(100, 40),
                                        primary:
                                            Color.fromARGB(255, 199, 34, 23),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              30), // Menambahkan radius
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Divider(),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Atau Login Menggunakan',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        // Tambahkan logika untuk login menggunakan akun Facebook
                                      },
                                      child: Ink(
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Image.asset(
                                            'asset/images/fb.png',
                                            width: 35,
                                            height: 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Tambahkan logika untuk login menggunakan akun Google
                                      },
                                      child: Ink(
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Image.asset(
                                            'asset/images/google.png',
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
