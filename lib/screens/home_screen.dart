import 'package:clean_ui_session/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Steps:
// - Formatting
/// - Constants
/// - Directionality
/// - Global Components: Card, TextField, Text
/// - Local components (Concept of positioning and drawing): ProductCard (With AddButton), Titles
/// - Responsive
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 32),
          SvgPicture.asset(
            'assets/svg/carrot.svg',
          ),
          const SizedBox(height: 16),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.location_on_rounded),
            Text('Mansoura, Egypt', style: TextStyle(fontSize: 18))
          ]),
          const SizedBox(height: 16),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: SizedBox(
                  height: 52,
                  child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFF2F3F2),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide.none),
                          hintText: 'Search Store',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 14),
                          prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(left: 16.0, right: 8),
                              child:
                                  Icon(Icons.search, color: Colors.black)))))),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child:
                  Image.asset('assets/images/banner.jpg', fit: BoxFit.contain)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Exclusive Offers',
                style: TextStyle(color: Colors.black, fontSize: 24)),
          ),
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16),
              children: [
                for (var i = 0; i < 6; i++)
                  Container(
                      width: 180,
                      margin: EdgeInsets.fromLTRB(0, 8, 16, 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 2)
                          ]),
                      child: Column(children: [
                        SizedBox(
                            height: 120,
                            child: Image.asset('assets/images/banana.jpg')),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Organic banana',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            )),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: Row(children: [
                            Text('\$4.99',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Spacer(),
                            Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Icon(Icons.add,
                                    color: Colors.white, size: 36))
                          ]),
                        )
                      ]))
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Best Selling',
                  style: TextStyle(color: Colors.black, fontSize: 24))),
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16),
              children: [
                for (var i = 0; i < 6; i++)
                  Container(
                      width: 180,
                      margin: EdgeInsets.fromLTRB(0, 8, 16, 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 2)
                          ]),
                      child: Column(children: [
                        SizedBox(
                            height: 120,
                            child: Image.asset('assets/images/pepper.jpg')),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Organic banana',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            )),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: Row(children: [
                            Text('\$4.99',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Spacer(),
                            Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Icon(Icons.add,
                                    color: Colors.white, size: 36))
                          ]),
                        )
                      ]))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
