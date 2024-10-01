import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<secondPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: DefaultTabController(
        length: 4,
        child:Container(child:  Column(
          children: [
            Container(
              child: Scrollbar(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    color: const Color(0xFF1F2033),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18),
                                child: Image.asset("assets/images/img_2.png"),
                              ),
                              const Text(
                                "Premium Reports",
                                style: TextStyle(color: Colors.white),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Image.asset("assets/images/img.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Image.asset("assets/images/img_1.png"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 23),
                          child: const Text(
                            "Browse our Premium Reports",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 60,
                          child: Card(
                            color: Colors.white30,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Image.asset("assets/images/search.png"),
                                ),
                                Expanded(
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    controller: _controller,
                                    decoration: InputDecoration(
                                      labelText: 'Search Marriage, Career, etc.',
                                      labelStyle: TextStyle(color: Colors.white54),
                                      fillColor: Colors.transparent,
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const TabBar(
                          tabs: [
                            Tab(text: 'Marriage'),
                            Tab(text: 'Career'),
                            Tab(text: 'Family'),
                            Tab(text: 'Health'),
                          ],
                          dividerColor: Colors.transparent,
                          unselectedLabelColor: Colors.white54,
                          labelColor: Colors.white,
                          indicatorColor: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(child: Container(
              color: Color(0xFF1F2033),
              child: TabBarView(
                children: [
                  Scrollbar(child:SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      color: Color(0xFF1F2033),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(margin:EdgeInsets.only(left: 15,top: 10),child:Text("Marriage",style: TextStyle(color: Colors.white,fontSize: 21),),),
                    Scrollbar(thumbVisibility:false,child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                      child:Container(child: Row(children: [
                        marriageWidget(),
                        marriageWidget(),
                        marriageWidget(),
                        marriageWidget(),
                        marriageWidget(),
                      ],),)
                    ),
              ),
                        Container(margin:EdgeInsets.only(left: 15,top: 10),child:Text("Career",style: TextStyle(color: Colors.white,fontSize: 21),),),
                        Scrollbar(child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                            child:Container(child: Row(children: [
                              careerWidget(),
                              careerWidget(),
                              careerWidget(),
                              careerWidget(),
                              careerWidget(),
                            ],),)
                        ),
                        ),
              ],
                  ),),
                  ),
                  ),
                  const Center(child: Text('Career Section')),
                  const Center(child: Text('Family Section')),
                  const Center(child: Text('Health Section')),
                ],
              ),
            ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

class marriageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7),
      height: 410,
      width: 260,
      color: Color(0xFF1F2033),
      child:Column(children: [Card(
          color: Colors.white24,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5,left: 5,right: 5),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          width: 230,
                          height: 130,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/img_4.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("₹999.00",style: TextStyle(color: Colors.white,fontSize: 18),),
                      Spacer(),
                      Container(child: Image.asset("assets/images/star.png"),),
                      Text(" 4.95/5",style: TextStyle(color: Color(0xFFFFC700),),),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 10),
                  child:Text("Marriage Time Prediction",style: TextStyle(color: Colors.white),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child:Text("Discover the perfect timing for your marriage through the guidance of vedic Astrology and an advanced AI-ML model.",style: TextStyle(color: Colors.white54,),),
                ),
                Padding(padding: EdgeInsets.only(bottom: 3),child:Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Container(margin: EdgeInsets.only(bottom: 10),child: Row(
                    children: [
                      Container(
                        height: 37,
                        width: 70,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 1), // White outline
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text(
                              "View",
                              style: TextStyle(color: Colors.white),
                            ),
                              Container(
                                width: 25,
                                height: 25,
                                child: Image.asset("assets/images/infobutton.png",color: Colors.white,),
                              )

                            ],

                          ),
                        ),
                      ),

                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.bottomRight,
                        height: 37,
                        width: 120,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF7495E8), Color(0xFF0C359E)],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 45,
                              width: 120,
                              alignment: Alignment.center,
                              child: Row(children: [Text(
                                "Purchase",
                                style: TextStyle(color: Colors.white),
                              ),
                                Container(
                                  width: 25,
                                  height: 25,
                                  child: Image.asset("assets/images/onlineshopping.png",color: Colors.white,),
                                ),
                              ],
                              ),
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                  ),
                ),
                ),
              ],

            ),

          )

      ),
      ],
      ),
    );
  }

}

class careerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7),
      height: 410,
      width: 260,
      color: Color(0xFF1F2033),
      child:Column(children: [Card(
          color: Colors.white24,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5,left: 5,right: 5),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          width: 230,
                          height: 130,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/img_4.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("₹999.00",style: TextStyle(color: Colors.white,fontSize: 18),),
                      Spacer(),
                      Container(child: Image.asset("assets/images/star.png"),),
                      Text(" 4.95/5",style: TextStyle(color: Color(0xFFFFC700),),),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 10),
                  child:Text("Marriage Time Prediction",style: TextStyle(color: Colors.white),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child:Text("Discover the perfect timing for your marriage through the guidance of vedic Astrology and an advanced AI-ML model.",style: TextStyle(color: Colors.white54,),),
                ),
                Padding(padding: EdgeInsets.only(bottom: 3),child:Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Container(margin: EdgeInsets.only(bottom: 10),child: Row(
                    children: [
                      Container(
                        height: 37,
                        width: 70,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text(
                            "View",
                            style: TextStyle(color: Colors.white),
                          ),
                            Container(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/images/infobutton.png",color: Colors.white,),
                            )

                          ],

                          ),
                        ),
                      ),

                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.bottomRight,
                        height: 37,
                        width: 120,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF7495E8), Color(0xFF0C359E)],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 45,
                              width: 120,
                              alignment: Alignment.center,
                              child: Row(children: [Text(
                                "Purchase",
                                style: TextStyle(color: Colors.white),
                              ),
                                Container(
                                  width: 25,
                                  height: 25,
                                  child: Image.asset("assets/images/onlineshopping.png",color: Colors.white,),
                                ),
                              ],
                            ),
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
                ),
                ),
              ],

            ),

          )

      ),
      ],
      ),
    );
  }

}