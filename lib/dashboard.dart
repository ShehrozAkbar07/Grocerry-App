import 'package:flutter/material.dart';
import 'package:mart_app/Complain.dart';
import 'package:mart_app/PD1,1.dart';
import 'package:mart_app/PD1,2.dart';
import 'package:mart_app/PD1,3.dart';
import 'package:mart_app/PD2,1.dart';
import 'package:mart_app/PD2,2.dart';
import 'package:mart_app/PD2,3.dart';
import 'package:mart_app/PD3,1.dart';
import 'package:mart_app/PD3,2.dart';
import 'package:mart_app/PD3,3.dart';
import 'package:mart_app/ProfilePage.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffcccccc),
        drawer: Drawer(
          backgroundColor: const Color(0xff00061a),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ListView(
              children: [
                Container(
                  height: 100,
                  child: DrawerHeader(
                      child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/72/cd/96/72cd969f8e21be3476277d12d44c791c.png'),
                        radius: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Welcome Guest',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Container(),
                        ],
                      ),
                    ],
                  )),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DashBoard()));
                    },
                    child:
                        buildMenuItem(text: 'Home', icon: Icons.home_outlined)),
                buildMenuItem(text: 'Review Cart', icon: Icons.shop_2_outlined),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
                    },
                    child: buildMenuItem(
                        text: 'My Profile', icon: Icons.person_outlined)),
                buildMenuItem(
                    text: 'Notification', icon: Icons.notifications_outlined),
                buildMenuItem(
                    text: 'Rating & Reviews', icon: Icons.star_outline),
                buildMenuItem(text: 'Wishlist', icon: Icons.favorite_outlined),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddJob()));
                  },
                  child: buildMenuItem(
                      text: 'Raise a Complaint', icon: Icons.copy_outlined),
                ),
                buildMenuItem(text: 'FAQs', icon: Icons.format_quote_outlined),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Contact Support",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Call Us       959 59595959"),
                        Text("Mail us"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        //  backgroundColor: Color(0xff202A44),
        appBar: AppBar(
          actions: const [
            CircleAvatar(
              radius: 15,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
              backgroundColor: Color(0xff202A44),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                backgroundColor: Color(0xff202A44),
                radius: 15,
                child: Icon(
                  Icons.shop,
                  color: Colors.white,
                ),
              ),
            )
          ],
          backgroundColor: const Color(0xff00061a),
          title: const Text("Grocerry App"),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://4.imimg.com/data4/RD/AO/MY-11673526/fresh-vegetables-500x500.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    height: 160,
                    // color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Fruits",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text("view all"),
                      ],
                    ),
                  ),

                  // First ROW
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        (const Productdetail_11())));
                          },
                          child: Vegetable(
                              'https://media.istockphoto.com/photos/grape-dark-grape-grapes-with-leaves-isolated-with-clipping-path-full-picture-id803721418?k=20&m=803721418&s=612x612&w=0&h=U2vUEoYYZD6xdYJc-2dhZpa1EvIxkXdiUaAlE-Kexn4=',
                              'Pomegerenate',
                              '2',
                              3),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Productdetail_12()));
                            },
                            child: Vegetable(
                                'https://images.immediate.co.uk/production/volatile/sites/30/2020/02/Kiwi-fruits-582a07b.jpg?quality=90&resize=504,458',
                                'Pomegerenate',
                                '50 Gram',
                                3)),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Productdetail_13()));
                            },
                            child: Vegetable(
                                'https://www.pngitem.com/pimgs/m/134-1343677_pomegranate-png-transparent-images-pomegranate-fruit-white-background.png',
                                'Pomegerenate',
                                '50 Gram',
                                3)),
                        const SizedBox(
                          width: 15,
                        ),
                        Vegetable(
                            'https://www.pngitem.com/pimgs/m/134-1343677_pomegranate-png-transparent-images-pomegranate-fruit-white-background.png',
                            'Pomegerenate',
                            '50 Gram',
                            3)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Vegetables",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text("view all"),
                      ],
                    ),
                  ),
                  // Second ROW
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Productdetail_21()));
                            },
                            child: Vegetable(
                                'https://d1z88p83zuviay.cloudfront.net/ProductVariantThumbnailImages/baf1fc1c-b337-493d-a3bb-2740ff1b7241_425x425.jpg',
                                'Pomegerenate',
                                '50 Gram',
                                2)),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Productdetail_22()));
                            },
                            child: Vegetable(
                                'https://freshmarket.pk/wp-content/uploads/2020/06/Red-cabbage.jpg',
                                'Pomegerenate',
                                '50 Gram',
                                2)),
                        SizedBox(width: 15),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Productdetail_23()));
                            },
                            child: Vegetable(
                                'https://media.istockphoto.com/photos/grape-dark-grape-grapes-with-leaves-isolated-with-clipping-path-full-picture-id803721418?k=20&m=803721418&s=612x612&w=0&h=U2vUEoYYZD6xdYJc-2dhZpa1EvIxkXdiUaAlE-Kexn4=',
                                'Pomegerenate',
                                '50 Gram',
                                2)),
                        const SizedBox(
                          width: 15,
                        ),
                        Vegetable(
                            'https://media.istockphoto.com/photos/ripe-pomegranate-fruit-and-one-cut-in-half-with-leaf-picture-id940118920?k=20&m=940118920&s=612x612&w=0&h=gh1yHHVTZYDdrmvTi9k9-JDd7lerBJCIwTD3BJLjU1E=',
                            'Pomegerenate',
                            '50 Gram',
                            4),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Health & House Hold",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text("view all"),
                      ],
                    ),
                  ),

                  // //3rd ROW
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Productdetail_31()));
                            },
                            child: Vegetable(
                                'https://i0.wp.com/fairo.pk/wp-content/uploads/2020/08/Surf-Excel-Matic-Top-Load.jpg?fit=1000%2C1000&ssl=1',
                                'Pomegerenate',
                                '50 Gram',
                                4)),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Productdetail_32()));
                            },
                            child: Vegetable(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBTKYG2xZ4MXPgyM5Gw9GxVdb0ymR_oKnFvKir1fn669zTP3iYn--CKe0i0x4j3PdiyJU&usqp=CAU',
                                'Pomegerenate',
                                '50 Gram',
                                3)),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Productdetail_33()));
                            },
                            child: Vegetable(
                                'https://cdnprod.mafretailproxy.com/sys-master-root/h34/h2b/16903809892382/1101_main.jpg_480Wx480H',
                                'Pomegerenate',
                                '50 Gram',
                                3)),
                        const SizedBox(
                          width: 15,
                        ),
                        Vegetable(
                            'https://media.istockphoto.com/photos/grape-dark-grape-grapes-with-leaves-isolated-with-clipping-path-full-picture-id803721418?k=20&m=803721418&s=612x612&w=0&h=U2vUEoYYZD6xdYJc-2dhZpa1EvIxkXdiUaAlE-Kexn4=',
                            'Pomegerenate',
                            '50 Gram',
                            4),
                      ],
                    ),
                  ),

                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: [
                  //       Vegetable(
                  //           'https://media.istockphoto.com/photos/grape-dark-grape-grapes-with-leaves-isolated-with-clipping-path-full-picture-id803721418?k=20&m=803721418&s=612x612&w=0&h=U2vUEoYYZD6xdYJc-2dhZpa1EvIxkXdiUaAlE-Kexn4=',
                  //           'Pomegerenate',
                  //           '50 Gram'),
                  //       const SizedBox(
                  //         width: 15,
                  //       ),
                  //       Vegetable(
                  //           'https://media.istockphoto.com/photos/grape-dark-grape-grapes-with-leaves-isolated-with-clipping-path-full-picture-id803721418?k=20&m=803721418&s=612x612&w=0&h=U2vUEoYYZD6xdYJc-2dhZpa1EvIxkXdiUaAlE-Kexn4=',
                  //           'Pomegerenate',
                  //           '50 Gram'),
                  //       const SizedBox(width: 15),
                  //       Vegetable(
                  //           'https://media.istockphoto.com/photos/grape-dark-grape-grapes-with-leaves-isolated-with-clipping-path-full-picture-id803721418?k=20&m=803721418&s=612x612&w=0&h=U2vUEoYYZD6xdYJc-2dhZpa1EvIxkXdiUaAlE-Kexn4=',
                  //           'Pomegerenate',
                  //           '50 Gram'),
                  //       const SizedBox(
                  //         width: 15,
                  //       ),
                  //       Vegetable(
                  //           'https://media.istockphoto.com/photos/grape-dark-grape-grapes-with-leaves-isolated-with-clipping-path-full-picture-id803721418?k=20&m=803721418&s=612x612&w=0&h=U2vUEoYYZD6xdYJc-2dhZpa1EvIxkXdiUaAlE-Kexn4=',
                  //           'Pomegerenate',
                  //           '50 Gram'),
                  //     ],
                  //   ),
                  // ),
                ],
              )),
        ));
  }
}
// SingleChildScrollView(
//   // scrollDirection: Axis.horizontal,
//   child: Row(
//     children: [
//       Container(
//         color: Colors.red,
//         height: 150,
//         width: 160,
//       ),
// SizedBox(
//   width: 10,
// ),
// Container(
//   color: Colors.red,
//   height: 150,
//   width: 160,
// ),
// SizedBox(
//   width: 10,
// ),
// Container(

//   color: Colors.red,
//   height: 150,
//   width: 160,
// ),
// SizedBox(
//   width: 10,
// ),
// Container(
//   color: Colors.red,
//   height: 150,
//   width: 160,
// ),

//Widgets of Dashboard Containers and text
Widget Vegetable(String imagelink, String data, String data2, int vale) {
  return Container(
    height: 220,
    width: 160,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
        flex: vale,
        child: Image.network(imagelink),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(children: const [
            Text(
              'Grapes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('50 Grams'),
          ]),
        ),
      ),

      // child: ListTile(
      //   title: Text(
      //    data,
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      //   subtitle: Text(data2),
      // ),
    ]),
  );
}

// Widgets of Drawer Icons and Text
Widget buildMenuItem({
  required String text,
  required IconData icon,
}) {
  final color = Colors.white;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
  );
}
