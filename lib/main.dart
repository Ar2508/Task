import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstPage());
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //     BottomNavigationBarItem(icon: Icon(Icons.data_object), label: 'My Plant'),
        //     BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner), label: '')
        //   ],
        // ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                      ),
                      child: Image.asset('assets/images/user.png'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset('assets/images/search.png'),
                    ),
                  ),
                ],
              ),
              // Row(
              //   mainAxisSize: MainAxisSize.min,
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Expanded(
              //       child: SearchBar(
              //         leading: Icon(Icons.search),
              //         hintText: 'Search a Plant',
              //       ),
              //     ),
              //     Icon(Icons.list),
              //   ],
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore plants',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=> DetailsPage()));}, child:  Text(
                    'View All ->',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ), )

                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/cact.png'),
                      Image.asset('assets/images/flower.png'),
                      // ReusableCard(text: 'Succulents & Cacti'),
                      // ReusableCard(text: 'Flowering Plants'),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/plant.png'),
                      Image.asset('assets/images/tree.png'),
                      //   ReusableCard(text: 'Foliage Plants'),
                      //   ReusableCard(text: 'Trees'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Image.asset('assets/images/group.png'),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.grey,
              //     borderRadius: BorderRadius.circular(15),
              //   ),
              //   child: Column(
              //     children: [
              //       Text('Invite Your Plant loving Friends!'),
              //       ElevatedButton(onPressed: () {}, child: Text('Invite Now')),
              //     ],
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Article',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: Text(
                      'View All ->',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/images/P1.png'),
                  Image.asset('assets/images/P1.png'),
                ],
              ),
              Image.asset('assets/images/bottom.png'),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Expanded(
              //       flex: 1,
              //       child: Column(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.all(10),
              //             child: Container(
              //               width: 100,
              //               height: 100,
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(15),
              //               ),
              //               child: Placeholder(),
              //             ),
              //           ),
              //           Text('How often should you really water your plants?'),
              //         ],
              //       ),
              //     ),
              //     Expanded(
              //       flex: 1,
              //       child: Column(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.all(10),
              //             child: Container(
              //               height: 100,
              //               width: 100,
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(15),
              //               ),
              //               child: Placeholder(),
              //             ),
              //           ),
              //           Text('How often should you really water your plants?'),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ReusableCard extends StatelessWidget {
//   ReusableCard({super.key, required this.text});
//   String text = 'Text';
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 90,
//       height: 80,
//       decoration: BoxDecoration(
//         color: Colors.grey,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Text(text),
//     );
//   }
// }

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_sharp),
          ),
          title: Text('Details Page'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/detail.png'),
              Image.asset('assets/images/list.png'),
              Image.asset('assets/images/bottom2.png'),
            ],
          ),
        ),
      ),
    );
  }
}
