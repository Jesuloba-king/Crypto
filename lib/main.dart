import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Crypto Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.white,
        elevation: 0,
        leading: Image.asset("assets/images/arrow.png",),
        actions: [
          Image.asset("assets/images/person.png", height: 40, width: 40,),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: CupertinoColors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/crypto.png"),
              // In Shack Now category
              const SizedBox(height: 14,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.all(5)),
                  Image.asset("assets/images/Line 5.png", width: 100,),
                  SizedBox(height: 20, width: 180,
                  child: Text('In Shack Now',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                  ),),
                  Image.asset("assets/images/Line 5.png", width: 100,),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 100,
                width: double.infinity,
                // color: Colors.blueGrey,
                child: GridView(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                  children: [
                    Image.asset("assets/images/Ellipse.png"),
                    Image.asset("assets/images/Ellipse 9.png"),
                    Image.asset("assets/images/Ellipse 10.png"),
                    Image.asset("assets/images/Ellipse 11.png"),
                    Image.asset("assets/images/Ellipse 12.png"),
                    Image.asset("assets/images/Ellipse 13.png"),
                    Image.asset("assets/images/Ellipse.png"),
                    Image.asset("assets/images/Ellipse 13.png"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 130,
                    height: 140,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage("assets/images/cup.png"),
                        fit: BoxFit.fitHeight,
                        ),
                      ), alignment: Alignment.center,
                      child: Text('COFFEE & TEA',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),),
                    ),

                  Container(
                    width: 130,
                    height: 140,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage("assets/images/cup2.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ), alignment: Alignment.center,
                    child: Text('BREAKFAST',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),),
                  ),

                  Container(
                    width: 130,
                    height: 140,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage("assets/images/cup2.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ), alignment: Alignment.center,
                    child: Text('COFFEE & TEA',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),),
                  ),
                ],
              ),

              // Send token category
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 3, right: 5)),
                  Image.asset("assets/images/Line 5.png", width: 100,),
                  SizedBox(height: 20, width: 180,
                    child: Text('Send a token of gratitude',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                  ),),
                  Image.asset("assets/images/Line 5.png", width: 100,),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/TOKEN.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ), alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 100,
                    width: 280,
                    child: Text("We believe in helping others as much as we can, as well as recognizing those that help the community."
                        "Tokens help recognize the people who go above and beyond. Send your first token",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),),
                  ),
                ],
              ),

              // Latest News category
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 3, right: 5)),
                  Image.asset("assets/images/Line 5.png", width: 100,),
                  SizedBox(height: 20, width: 180,
                    child: Text('Latest News',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),
                    ),),
                  Image.asset("assets/images/Line 5.png", width: 100,),
                ],
              ),

              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/coffee.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ), alignment: Alignment.center,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("New Opening Hours",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.black,
                            fontStyle: FontStyle.normal),),
                       SizedBox(height: 80, width: 220,
                           child: Text("We are now open until 8pm on Mondays starting next week",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black,
                            fontStyle: FontStyle.normal),),),
                    ],
                  ),
                  const Icon(Icons.arrow_forward_ios_sharp, size: 40,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/coffee.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ), alignment: Alignment.center,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Spring Cocktails!",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.black,
                            fontStyle: FontStyle.normal),),
                      SizedBox(height: 80, width: 220,
                        child: Text("Spring is upon us and now we have a new menu. Try our spritz and new selection of non alcoholics.",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),),),
                    ],
                  ),
                  const Icon(Icons.arrow_forward_ios_sharp, size: 40,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/coffee.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ), alignment: Alignment.center,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Spring Cocktails!",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.black,
                            fontStyle: FontStyle.normal),),
                      SizedBox(height: 80, width: 220,
                        child: Text("Spring is upon us and now we have a new menu. Try our spritz and new selection of non alcoholics.",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),),),
                    ],
                  ),
                  const Icon(Icons.arrow_forward_ios_sharp, size: 40,),
                ],
              ),

              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 3, right: 5)),
                  Image.asset("assets/images/Line 5.png", width: 100,),
                  SizedBox(height: 20, width: 180,
                    child: Text('Rooms Available Now',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),
                    ),),
                  Image.asset("assets/images/Line 5.png", width: 100,),
                  const SizedBox(height: 10,),
                ],
              ),
              //Round black container
              SizedBox(
                height: 100,
                width: double.infinity,
                child: GridView(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  children: [
                    Container(
                      height: 100,
                      decoration: const BoxDecoration(
                          color: CupertinoColors.black,
                          shape: BoxShape.circle
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '001',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: CupertinoColors.black,
                          shape: BoxShape.circle
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '003',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        color: CupertinoColors.black,
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '006',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: CupertinoColors.black,
                          shape: BoxShape.circle
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '012',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: CupertinoColors.black,
                          shape: BoxShape.circle
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '013',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: CupertinoColors.black,
                          shape: BoxShape.circle
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '014',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: CupertinoColors.black,
                          shape: BoxShape.circle
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '015',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: CupertinoColors.black,
                          shape: BoxShape.circle
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '016',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: CupertinoColors.black,
                          shape: BoxShape.circle
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '017',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              //Seats.......
              SizedBox(
                height: 40,
                width: double.infinity,
                child:  GridView(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    childAspectRatio: 1/2,
                    // crossAxisSpacing: 5,
                    ),
                children:  const [
                  SizedBox(
                    child: Text("Seats 6",
                      style: TextStyle(fontSize: 20, color: Colors.black),),
                  ),
                  SizedBox(
                    child: Text("Seats 12",
                      style: TextStyle(fontSize: 20, color: Colors.black),),
                  ),
                  SizedBox(
                    child: Text("Seats 4",
                      style: TextStyle(fontSize: 20, color: Colors.black),),
                  ),
                  SizedBox(
                    child: Text("Seats 12",
                      style: TextStyle(fontSize: 20, color: Colors.black),),
                  ),
                  SizedBox(
                    child: Text("Seats 12",
                      style: TextStyle(fontSize: 20, color: Colors.black),),
                  ),
                  SizedBox(
                    child: Text("Seats 6",
                      style: TextStyle(fontSize: 20, color: Colors.black),),
                  ),
                  SizedBox(
                    child: Text("Seats 6",
                      style: TextStyle(fontSize: 20, color: Colors.black),),
                  ),
                  SizedBox(
                    child: Text("Seats 12",
                      style: TextStyle(fontSize: 20, color: Colors.black),),
                  ),
                ],
              ),
                ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/images/Line 7.png",),
                ],
              ),
              BottomNavigationBar(
                currentIndex: _currentIndex,
                  // type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.white,
                  iconSize: 30,
                  // selectedFontSize: 10,
                  // unselectedFontSize: 10,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.news_solid),
                    label: "NEWS",
                      backgroundColor: Colors.lightGreen,),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.event_note_sharp),
                      label: "EVENTS",
                      backgroundColor: Colors.redAccent,),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.fastfood_sharp),
                      label: "FOOD & DRINK & TOKENS",
                      backgroundColor: Colors.orangeAccent,),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.bed_double_fill),
                      label: "ROOMS",
                      backgroundColor: Colors.purpleAccent),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.group_solid),
                      label: "COMMUNITY",
                      backgroundColor: Colors.indigo),
                  ],
                onTap: (index){

                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
