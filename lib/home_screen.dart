import 'package:flutter/material.dart';
import 'package:flutter_learning_app/app_data_program.dart';
import 'package:flutter_learning_app/bottom%20navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEEF3FD),
        leading: IconButton(onPressed: (){},icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.messenger_outlined) ),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
        bottom: PreferredSize(preferredSize: Size(0,215), child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 300,top: 5),
              child: Text('Hello, Priya!',style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 175),
              child: Text('what do you wanna Learn today?',style: TextStyle(fontSize: 15),),
            ),
            SizedBox(
              height: 1,
            ),
            GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 2.5 / 1,
            ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF598BED), // Outline color
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: ListTile(
                        dense: true,
                        leading: Icon(Icons.book_sharp,color: Color(0xFF598BED)),
                        title: Text('Program',style: TextStyle(color: Color(0xFF598BED),fontSize: 20),
                           )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF598BED), // Outline color
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: ListTile(
                        dense: true,
                        leading: Icon(Icons.question_mark,color: Color(0xFF598BED)),
                        title: Text('Get help',style: TextStyle(color: Color(0xFF598BED),fontSize: 20),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF598BED), // Outline color
                        width: 2.0,
                      ),
                        borderRadius: BorderRadius.circular(12.0),
                  ),
                    child: ListTile(
                        dense: true,
                        leading: Icon(Icons.menu_book,color: Color(0xFF598BED)),
                        title: Text('Learn',style: TextStyle(color: Color(0xFF598BED),fontSize: 20),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF598BED), // Outline color
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: ListTile(
                        dense: true,
                        leading: Icon(Icons.gif_box_outlined,color: Color(0xFF598BED)),
                        title: Text('DD Tracker',style: TextStyle(color: Color(0xFF598BED),fontSize: 15),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),

        ),
      ),
      drawer: BottomNavigatorScreen(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5,right: 5,left: 20),
              child: SizedBox(
                child: Row(
                  children: [
                    Text('Programs for you',
                      textAlign: TextAlign.left,style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Text('view all',
                        textAlign: TextAlign.right,style: TextStyle(fontSize:20)
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 350,
                width: 400,
                child: PageView.builder(
                    controller: PageController(viewportFraction: 0.88),
                    onPageChanged: (index) {
                      setState(() {

                      });
                    },
                    itemCount: appDataLessons.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage(appDataProgram[index].programImage),fit:BoxFit.cover,
                                )
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(appDataProgram[index].programName,style: TextStyle(color: Color(0xFF598BED),fontWeight: FontWeight.bold,
                              fontSize: 15)),
                          Text(appDataProgram[index].shortDescription,style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20),),
                          SizedBox(
                            height: 5,
                          ),
                          Text(appDataProgram[index].lessons,style: TextStyle(
                              fontSize: 15)),
                        ],
                      );
                    }
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,right: 5,left: 20),
              child: SizedBox(
                child: Row(
                  children: [
                    Text('Events and  experience',
                      textAlign: TextAlign.left,style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Text('view all',
                        textAlign: TextAlign.right,style: TextStyle(fontSize:20)
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
               height: 350,
                width: 400,
                child: PageView.builder(
                    controller: PageController(viewportFraction: 0.88),
                    onPageChanged: (index) {
                      setState(() {

                      });
                    },
                    itemCount: appDataEvents.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage(appDataEvents[index].eventImage),fit:BoxFit.cover,
                                )
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(appDataEvents[index].eventName,style: TextStyle(color: Color(0xFF598BED),fontWeight: FontWeight.bold,
                      fontSize: 15)),
                          SizedBox(
                            height: 5,
                          ),
                          Text(appDataEvents[index].eventDescription,style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20),),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(appDataEvents[index].eventDay,
                                  ),
                                  SizedBox(width: 140,),
                                  ElevatedButton(onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                        color: Color(0xFF598BED),  // Outline color
                                        width: 2.0, // Outline width
                                      ),
                                    ),
                                    child:Text('Book',
                                      style: TextStyle(color: Color(0xFF598BED))), )
                                ],
                              ),
                            ],
                          )
                        ],
                      );
                    }
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,right: 5,left: 20),
              child: SizedBox(
                child: Row(
                  children: [
                    Text('Lessons for you',
                      textAlign: TextAlign.left,style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Text('view all',
                        textAlign: TextAlign.right,style: TextStyle(fontSize:20)
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 350,
                width: 400,
                child: PageView.builder(
                    controller: PageController(viewportFraction: 0.88),
                    onPageChanged: (index) {
                      setState(() {

                      });
                    },
                    itemCount: appDataLessons.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage(appDataLessons[index].lessonImage),fit:BoxFit.cover,
                                )
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(appDataLessons[index].lessonName,style: TextStyle(color: Color(0xFF598BED),fontWeight: FontWeight.bold,
                      fontSize: 15)),
                          Text(appDataLessons[index].lessonDescription,style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20),),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(appDataLessons[index].duration,
                              ),
                              Spacer(),
                             IconButton(onPressed: (){}, icon: Icon(Icons.lock))
                            ],
                          )
                        ],
                      );
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}