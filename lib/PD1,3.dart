import 'package:flutter/material.dart';

class Productdetail_13 extends StatelessWidget {
  const Productdetail_13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.favorite_outline),
          label: ('Add To Wisht List'),
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.shop),
          label: ('Go To Cart'),
          backgroundColor: Colors.purple,
        ),
      ]),
      appBar: AppBar(
        backgroundColor: const Color(0xff00061a),
        title: const Text('Product Overview13'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              title: Text('Basil'),
              subtitle: Text('\$50'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://image.pngaaa.com/722/439722-middle.png'),
                  ),

                  // image: DecorationImage(
                  //   image: NetworkImage(
                  //       'https://i0.wp.com/post.healthline.com/wp-content/uploads/2019/05/spinach-1296x728-header.jpg?w=1155&h=1528'),
                  // ),
                ),
                height: 160,
              ),
            ),
            Container(
              // hahahahhaha
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: const Text(
                'Available Option',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[700],
                    radius: 3,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.radio_button_checked, color: Colors.green),
                  const SizedBox(
                    width: 140,
                  ),
                  const Text('50'),
                  const SizedBox(width: 70),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: const [Icon(Icons.add, size: 17), Text("ADD")],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "About This Product",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                        'A gun is a ranged weapon A large-caliber gun is also referred to as a cannon.')
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
