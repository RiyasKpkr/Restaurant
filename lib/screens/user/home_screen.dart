
import 'package:flutter/material.dart';
import 'package:restaurants/screens/user/food_page_body.dart';
import 'package:restaurants/widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Container(
                margin: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        TextWidget(
                          text: 'India',
                        ),
                        // Text('city'),
                        Row(
                          children: [
                            TextWidget(
                              text: 'Pukayoor',
                              fontSize: 12,
                              color: Colors.black,
                            ),
                            const Icon(Icons.arrow_drop_down_rounded)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        //search Container
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: _expanded ? 300 : 50,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.teal,
                              boxShadow: kElevationToShadow[6]),
                          child: Row(
                            children: [
                              Material(
                                type: MaterialType.transparency,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _expanded = !_expanded;
                                    });
                                  },
                                  icon: Icon(
                                    _expanded ? Icons.close : Icons.search,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: _expanded
                                      ? const TextField(
                                          decoration: InputDecoration(
                                              hintText: 'Search',
                                              hintStyle: TextStyle(
                                                  color: Colors.white),
                                              border: InputBorder.none),
                                        )
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //this Container is temperary for logout function here
                        // Container(
                        //   height: 45,
                        //   width: 45,
                        //   decoration: BoxDecoration(
                        //     color: Colors.teal,
                        //     borderRadius: BorderRadius.circular(15),
                        //   ),
                        //   child: InkWell(
                        //     onTap: () {
                        //       FirebaseAuth.instance.signOut().then(
                        //         (value) {
                        //           Navigator.pushReplacement(
                        //             context,
                        //             MaterialPageRoute(
                        //               builder: (context) {
                        //                 return ScreenLogin();
                        //               },
                        //             ),
                        //           );
                        //         },
                        //       );
                        //     },
                        //     child: Icon(
                        //       Icons.logout_outlined,
                        //       color: Colors.black,
                        //     ),
                        //   ),
                        // ),
                        //>>>>>>>>>log out function
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: FoodPageBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// appBar: AppBar(
//   backgroundColor: Colors.amber,
//   title: Text(
//     'App bar title'.toUpperCase(),
//     style: GoogleFonts.pacifico(
//       fontSize: 18,
//       fontWeight: FontWeight.bold,
//       color: Colors.black,
//     ),
//   ),
//   centerTitle: true,
//   actions: [
//     InkWell(
//       onTap: () {
// FirebaseAuth.instance.signOut().then(
//   (value) {
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(
//         builder: (context) {
//           return ScreenLogin();
//         },
//       ),
//     );
//   },
// );
//       },
//       child: const Icon(
//         Icons.logout_outlined,
//         color: Colors.black,
//       ),
//     ),
//   ],
// ),
