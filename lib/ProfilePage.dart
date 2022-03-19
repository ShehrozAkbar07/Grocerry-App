import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mart_app/Sign.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff00061a),
          title: const Text(
            'My Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 110,
                    color: const Color(0xff00061a),
                  ),
                  Container(
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 250,
                                height: 80,
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Shehroz Akbar",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Shehroz@gmail.com",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.shop_outlined,
                              color: Colors.white,
                            ),
                            title: Text(
                              'My Orders',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            title: Text(
                              'My Delivery Address',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.person_outlined,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Reffer A Friend',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.file_copy_outlined,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Terms & Condition',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.policy_outlined,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.add_chart,
                              color: Colors.white,
                            ),
                            title: Text(
                              'My Orders',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignIn()));
                            },
                            child: const ListTile(
                              leading: Icon(
                                Icons.exit_to_app_outlined,
                                color: Colors.white,
                              ),
                              title: Text(
                                'Log Out',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      height: 590,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(
                      color: Color(0xff202A44)
                      // borderRadius: const BorderRadius.only(
                      //   topLeft: Radius.circular(30),
                      //   topRight: Radius.circular(30),

                      //)),
                      ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 60),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/originals/72/cd/96/72cd969f8e21be3476277d12d44c791c.png'),
                  radius: 50,
                ),
              )
            ],
          ),
        ));
  }
}
