import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class chatpage extends StatefulWidget {
  String email;
  chatpage({required this.email});
  @override
  _chatpageState createState() => _chatpageState(email: email);
}

class _chatpageState extends State<chatpage> {
  String email;
  _chatpageState({required this.email});

  final fs = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  final TextEditingController message = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Icon(Icons.account_circle),
            DrawerHeader(child: const Text("Arunkumar"),
              decoration: BoxDecoration(
                color: Colors.black,
              ),

            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage("assets/data1.png"),height: 300,width: 500,),
            ),
            SizedBox(height: 10,),
            Container(
              child:ElevatedButton(
                  child: Text("Booking",),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ram1()),
                    );
                  }
              ),
            ),
            Container(
              child: Image(image: AssetImage("assets/data3.png"),height: 300,width: 500,),
            ),
            SizedBox(height: 10,),
            Container(
              child:TextButton(
                  child: Text("Shopping ",),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const shopping()),
                    );
                  }
              ),
            ),
            Container(
              child: Image(image: AssetImage("assets/article.png"),height: 300,width: 500,),
            ),
            Container(
              child:TextButton(
                  child: Text("Article Side",),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const article()),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------
class ram1 extends StatefulWidget {
  const ram1({super.key});

  @override
  State<ram1> createState() => _ram1State();
}

class _ram1State extends State<ram1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Book Appoinment"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/harvester.png",),height: 300,width: 400,),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                    child: Text("Harvester",),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const harvester()),
                      );
                    }
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/jcb.png",),height: 300,width: 400,),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                    child: Text("Jcb",),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const jcb()),
                      );
                    }
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/spray.png"),height: 300,width: 400,),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                    child: Text("Spray",),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const spray()),
                      );
                    }
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/tractor.png"),height: 300,width: 400,),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                    child: Text("Tractor",),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const tractor()),
                      );
                    }
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/tripper.png"),height: 300,width: 400,),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                    child: Text("Tripper",),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const tripper()),
                      );
                    }
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/drone.png"),height: 300,width: 400,),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                    child: Text("Drone",),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const drone()),
                      );
                    }
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Image(image: AssetImage("assets/paddy.png"),height: 300,width: 400,),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                    child: Text("Paddy",),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const paddy()),
                      );
                    }
                ),
              )
            ],
          ),
        )

    );
  }
}
//-----------------------------------------------------
//harvester
class harvester extends StatefulWidget {
  const harvester({super.key});

  @override
  State<harvester> createState() => _harvesterState();
}

class _harvesterState extends State<harvester> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("HARVESTER"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/harvester.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:HARVESTER",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:001",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Usage:Its used to paddy harvesting",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Time:9AM-4PM",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:1hour-1000rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a Appoinment",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );

  }
}
//-------------------------------
//jcb
class jcb extends StatefulWidget {
  const jcb({super.key});

  @override
  State<jcb> createState() => _jcbState();
}

class _jcbState extends State<jcb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JCB"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/jcb.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:JCB",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:002",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Usage:Its used to multiprupose",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Time:9AM-4PM",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:1hour-1000rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a Appoinment",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//---------------------------
//spray
class spray extends StatefulWidget {
  const spray({super.key});

  @override
  State<spray> createState() => _sprayState();
}

class _sprayState extends State<spray> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SPRAY"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/spray.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:SPRAY",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:003",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Usage:Its used to spray the chemical product.",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Time:9AM-4PM",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:1hour-1000rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a Appoinment",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//----------------------------
//tractor
class tractor extends StatefulWidget {
  const tractor({super.key});

  @override
  State<tractor> createState() => _tractorState();
}

class _tractorState extends State<tractor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TRACTOR"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/tractor.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:tractor",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:004",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Usage:Its used to paddy cultivation",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Time:9AM-4PM",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:1hour-1000rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a Appoinment",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//----------------------------------------------
//tripper
class tripper extends StatefulWidget {
  const tripper({super.key});

  @override
  State<tripper> createState() => _tripperState();
}

class _tripperState extends State<tripper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TRIPPER"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/tripper.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:TRIPPER",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:005",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Usage:Its used to multiprupose",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Time:9AM-4PM",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:1hour-1000rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a Appoinment",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//---------------------------------------------------------
//drone
class drone extends StatefulWidget {
  const drone({super.key});

  @override
  State<drone> createState() => _droneState();
}

class _droneState extends State<drone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DRONE"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/drone.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:DRONE",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:006",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Usage:Its used to one type of spray chemical product.",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Time:9AM-4PM",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:1hour-1000rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a Appoinment",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//--------------------------------------------------------------------
//paddy
class paddy extends StatefulWidget {
  const paddy({super.key});

  @override
  State<paddy> createState() => _paddyState();
}

class _paddyState extends State<paddy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PADDY"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/paddy.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:PADDY",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:007",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Usage:Its used to paddy harvesting",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Time:9AM-4PM",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:1hour-1000rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a Appoinment",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//------------------------
//formsf

class forms extends StatelessWidget {
  forms({Key? key}) : super(key: key);

  var nameController = new TextEditingController();
  var ageController = new TextEditingController();
  var dlController = new TextEditingController();
  var adController = new TextEditingController();
  var phnController = new TextEditingController();
  var dateController = new TextEditingController();

  final firestore=FirebaseFirestore.instance;
  get data => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fill Details"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Appoinment details',
                        style: TextStyle(fontSize: 28),
                      ),

                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        controller: nameController,
                        maxLength: 15,
                        decoration: InputDecoration(
                            labelText: 'Name', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: ageController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Age', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: dlController,
                        maxLength: 3,
                        decoration: InputDecoration(
                            labelText: 'Product Number',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: adController,
                        decoration: InputDecoration(
                            labelText: 'Address', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: dateController,
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Date.', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: phnController,
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Phone No.', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (nameController.text.isNotEmpty &&
                              ageController.text.isNotEmpty &&
                              dlController.text.isNotEmpty &&
                              adController.text.isNotEmpty &&
                              dateController.text.isNotEmpty &&
                              phnController.text.isNotEmpty) {
                            firestore.collection("client").add({
                              "Name": nameController.text,
                              "Age": ageController.text,
                              "product number": dlController.text,
                              "Address.": adController.text,
                              "Phone No.": phnController.text,
                              "Date":dateController.text,
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  similey()),
                            );
                          }
                        },
                        child: Text(
                          "Submit Details",
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );

  }
}
//----------------------------------------------
//similey
class similey extends StatefulWidget {
  const similey({super.key});

  @override
  State<similey> createState() => _simileyState();
}

class _simileyState extends State<similey> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
                child: Image(image: AssetImage("assets/ok.png"),)
            ),
            SizedBox(height: 2,),
            Container(
              child: Text("success register",style: TextStyle(fontSize: 30),),
            )
          ],
        )

    );
  }
}
//--------------------------------------------------------------------------------
//shopping
class shopping extends StatefulWidget {
  const shopping({super.key});

  @override
  State<shopping> createState() => _shoppingState();
}

class _shoppingState extends State<shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Categories"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage("assets/fruit.png"),height: 300,width: 500,),
            ),
            Container(
              child:TextButton(
                  child: Text("Fruits",),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const fruit()),
                    );
                  }
              ),
            ),
            Container(
              child: Image(image: AssetImage("assets/vegetable.png"),height: 300,width: 500,),
            ),
            Container(
              child:TextButton(
                  child: Text("VEGETABLES",),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const vegetable()),
                    );
                  }
              ),
            ),
            Container(
              child: Image(image: AssetImage("assets/dryfruit.png"),height: 300,width: 500,),
            ),
            Container(
              child:TextButton(
                  child: Text("DRYFRUITS",),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const dryfruit()),
                    );
                  }
              ),
            ),
            Container(
              child: Image(image: AssetImage("assets/seeds.png"),height: 300,width: 500,),
            ),
            Container(
              child:TextButton(
                  child: Text("SEEDS",),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const seeds()),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//------------------------------------------------------
//fruits
class fruit extends StatefulWidget {
  const fruit({super.key});

  @override
  State<fruit> createState() => _fruitState();
}

class _fruitState extends State<fruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FRUITS"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        children: [
          Container(
            child: Image(image: AssetImage("assets/grapes.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Grapes",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const grapes()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/strawberry.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Strawberry",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const strawberry()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/apple.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("apple",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const apple()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/banana.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Banana",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const banana()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/watermelon.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("watermelon",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const watermelon()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/pineapple.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Pineapple",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const pineapple()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/orange.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Orange",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const orange()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/lemon.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Lemon",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const lemon()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/cherry.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Cherry",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const cherry()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/mango.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Mango",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const mango()),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
//-----------------------------------------------------------
//vegetables
class vegetable extends StatefulWidget {
  const vegetable({super.key});

  @override
  State<vegetable> createState() => _vegetableState();
}

class _vegetableState extends State<vegetable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VEGETABLES"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        children: [
          Container(
            child: Image(image: AssetImage("assets/tomato.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("tomato",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const tomato()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/brinjal.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Brinjal",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const brinjal()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/onion.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Onion",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const onion()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/garlic.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Garlic",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const garlic()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/redchilli.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Redchilli",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const redchilli()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/corn.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Corn",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const corn()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/carrot.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Carrot",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const carrot()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/beans.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Beans",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const beans()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/potato.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Potato",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const potato()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/Pumpkin.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Pumpkin",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const pumkin()),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
//----------------------------------------------------
//dryfruit
class dryfruit extends StatefulWidget {
  const dryfruit({super.key});

  @override
  State<dryfruit> createState() => _dryfruitState();
}

class _dryfruitState extends State<dryfruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DRYFRUITS"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        children: [
          Container(
            child: Image(image: AssetImage("assets/almonds.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Almonds",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const almonds()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/cashew.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("cashew",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const cashew()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/peanut.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Peanut",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const peanut()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/pista.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("pista",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const pista()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/fig.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Fig",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const fig()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/dates.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("dates",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const dates()),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
//-------------------------------------------
//seeds
class seeds extends StatefulWidget {
  const seeds({super.key});

  @override
  State<seeds> createState() => _seedsState();
}

class _seedsState extends State<seeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEEDS"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        children: [
          Container(
            child: Image(image: AssetImage("assets/chia.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Chia Seeds",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const chia()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/rajgira.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Rajgira Seeds",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const rajgira()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/sunflower.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Sunflower Seeds",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const sunflower()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/basil.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Basil",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const basil()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/hemp.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Hemp Seeds",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const hemp()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/seasame.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Seasame",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const seasame()),
                  );
                }
            ),
          ),
          Container(
            child: Image(image: AssetImage("assets/casaway.png"),),
          ),
          Container(
            alignment: Alignment.center,
            child:TextButton(
                child: Text("Casaway",),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const casaway()),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
//--------------------------------------------------------
// grapes
class grapes extends StatefulWidget {
  const grapes({super.key});

  @override
  State<grapes> createState() => _grapesState();
}

class _grapesState extends State<grapes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grapes"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/grapes.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:grapes",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:0001",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//-------------------------------------------------
//strawberry
class strawberry extends StatefulWidget {
  const strawberry({super.key});

  @override
  State<strawberry> createState() => _strawberryState();
}

class _strawberryState extends State<strawberry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strawberry"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/strawberry.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:strawberry",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:0002",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//--------------------------------------------------------
//watermelon
class watermelon extends StatefulWidget {
  const watermelon({super.key});

  @override
  State<watermelon> createState() => _watermelonState();
}

class _watermelonState extends State<watermelon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Watermelon"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/watermelon.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Watermelon",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:0003",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//-----------------------------------------------------------
//apple
class apple extends StatefulWidget {
  const apple({super.key});

  @override
  State<apple> createState() => _appleState();
}

class _appleState extends State<apple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apple"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/apple.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Apple",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:0004",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//-----------------------------
//banana
class banana extends StatefulWidget {
  const banana({super.key});

  @override
  State<banana> createState() => _bananaState();
}

class _bananaState extends State<banana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banana"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/banana.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Banana",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:0005",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//---------------------------------------------------
//pinapple
class pineapple extends StatefulWidget {
  const pineapple({super.key});

  @override
  State<pineapple> createState() => _pineappleState();
}

class _pineappleState extends State<pineapple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pineapple"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/pineapple.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Pineapple",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:0006",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//---------------------------------------
//orange
class orange extends StatefulWidget {
  const orange({super.key});

  @override
  State<orange> createState() => _orangeState();
}

class _orangeState extends State<orange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orange"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/orange.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Orange",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:0007",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//----------------------------------------
//lemon
class lemon extends StatefulWidget {
  const lemon({super.key});

  @override
  State<lemon> createState() => _lemonState();
}

class _lemonState extends State<lemon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lemon"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/lemon.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Lemon",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:0008",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//----------------------------------------------
//cherry
class cherry extends StatefulWidget {
  const cherry({super.key});

  @override
  State<cherry> createState() => _cherryState();
}

class _cherryState extends State<cherry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cherry"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/cherry.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Cherry",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:0009",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//-----------------------------------------
//mango
class mango extends StatefulWidget {
  const mango({super.key});

  @override
  State<mango> createState() => _mangoState();
}

class _mangoState extends State<mango> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mango"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/mango.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Mango",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00010",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//----------------------------------------------
//tomato
class tomato extends StatefulWidget {
  const tomato({super.key});

  @override
  State<tomato> createState() => _tomatoState();
}

class _tomatoState extends State<tomato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tomato"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/tomato.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Tomato",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00011",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//--------------------------------------------------
class brinjal extends StatefulWidget {
  const brinjal({super.key});

  @override
  State<brinjal> createState() => _brinjalState();
}

class _brinjalState extends State<brinjal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brinjal"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/brinjal.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Brinjal",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00012",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//----------------------------------------------------
class onion extends StatefulWidget {
  const onion({super.key});

  @override
  State<onion> createState() => _onionState();
}

class _onionState extends State<onion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onion"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/onion.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Onion",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00013",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//-------------------------------------------------------
class garlic extends StatefulWidget {
  const garlic({super.key});

  @override
  State<garlic> createState() => _garlicState();
}

class _garlicState extends State<garlic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Garlic"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/garlic.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Garlic",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00014",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//----------------------------------------------------
class redchilli extends StatefulWidget {
  const redchilli({super.key});

  @override
  State<redchilli> createState() => _redchilliState();
}

class _redchilliState extends State<redchilli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Redchilli"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/Redchilli.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:grapes",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00015",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//-----------------------------------------------
class corn extends StatefulWidget {
  const corn({super.key});

  @override
  State<corn> createState() => _cornState();
}

class _cornState extends State<corn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Corn"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/corn.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Corn",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00016",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//------------------------------------------------------
class carrot extends StatefulWidget {
  const carrot({super.key});

  @override
  State<carrot> createState() => _carrotState();
}

class _carrotState extends State<carrot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrot"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/carrot.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Carrot",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00017",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//---------------------------------------------------------------
class beans extends StatefulWidget {
  const beans({super.key});

  @override
  State<beans> createState() => _beansState();
}

class _beansState extends State<beans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beans"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/beans.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Beans",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00018",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//---------------------------------------------------------
class potato extends StatefulWidget {
  const potato({super.key});

  @override
  State<potato> createState() => _potatoState();
}

class _potatoState extends State<potato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("potato"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/potato.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Potato",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00019",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//--------------------------------------------------------
class pumkin extends StatefulWidget {
  const pumkin({super.key});

  @override
  State<pumkin> createState() => _pumkinState();
}

class _pumkinState extends State<pumkin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pumkin"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/pumkin.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Pumkin",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00020",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//--------------------------------------------
class almonds extends StatefulWidget {
  const almonds({super.key});

  @override
  State<almonds> createState() => _almondsState();
}

class _almondsState extends State<almonds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Almonds"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/almonds.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Almonds",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00021",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//------------------------------------------------
class cashew extends StatefulWidget {
  const cashew({super.key});

  @override
  State<cashew> createState() => _cashewState();
}

class _cashewState extends State<cashew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cashew"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/cashew.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:cashew",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00022",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//---------------------------------------------
class peanut extends StatefulWidget {
  const peanut({super.key});

  @override
  State<peanut> createState() => _peanutState();
}

class _peanutState extends State<peanut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("peanut"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/peanut.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:peanut",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00023",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//-------------------------------------------
class pista extends StatefulWidget {
  const pista({super.key});

  @override
  State<pista> createState() => _pistaState();
}

class _pistaState extends State<pista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pista"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/pista.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Pista",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00024",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//----------------------------------------
class fig extends StatefulWidget {
  const fig({super.key});

  @override
  State<fig> createState() => _figState();
}

class _figState extends State<fig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fig"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/fig.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Fig",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00024",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//--------------------------------------------
class dates extends StatefulWidget {
  const dates({super.key});

  @override
  State<dates> createState() => _datesState();
}

class _datesState extends State<dates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dates"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/dates.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Dates",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00025",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//----------------------------------------------------
class chia extends StatefulWidget {
  const chia({super.key});

  @override
  State<chia> createState() => _chiaState();
}

class _chiaState extends State<chia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chia seeds"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/chia.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Chia Seeds",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00026",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//---------------------------------------------------
class rajgira extends StatefulWidget {
  const rajgira({super.key});

  @override
  State<rajgira> createState() => _rajgiraState();
}

class _rajgiraState extends State<rajgira> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rajgira"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/rajgira.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:rajgira Seeds",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00027",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//--------------------------------------------------
class sunflower extends StatefulWidget {
  const sunflower({super.key});

  @override
  State<sunflower> createState() => _sunflowerState();
}

class _sunflowerState extends State<sunflower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sunflower seeds"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/Sunflower.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:sunflower Seeds",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00028",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//---------------------------------------

//-------------------------------------------------
class basil extends StatefulWidget {
  const basil({super.key});

  @override
  State<basil> createState() => _basilState();
}

class _basilState extends State<basil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basil"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/basil.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Basil",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00030",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//--------------------------------------------------
class hemp extends StatefulWidget {
  const hemp({super.key});

  @override
  State<hemp> createState() => _hempState();
}

class _hempState extends State<hemp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hemp"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/hemp.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Hemp",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00031",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//---------------------------------------------
class seasame extends StatefulWidget {
  const seasame({super.key});

  @override
  State<seasame> createState() => _seasameState();
}

class _seasameState extends State<seasame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seasame"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/seasame.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Seasame Seeds",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00032",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//-------------------------------------------
class casaway extends StatefulWidget {
  const casaway({super.key});

  @override
  State<casaway> createState() => _casawayState();
}

class _casawayState extends State<casaway> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Casaway"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(40),
                child: Image(image: AssetImage("assets/casaway.png"),height: 300,width: 400,),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Product name:Casaway Seeds",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                child: Text("product Id:00033",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("PhoneNumber:6385834162",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text('price:200rs',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Ownername:Ram",style: TextStyle(fontSize: 30)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  child: Text("Make a order",style: TextStyle(fontSize: 30),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  forms()),
                    );
                  }
              )
            ],
          )
      ),
    );
  }
}
//------------------------------------------------------
//article
class article extends StatefulWidget {
  const article({super.key});

  @override
  State<article> createState() => _articleState();
}

class _articleState extends State<article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top categories"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children:<Widget> [
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            leading: Icon(Icons.format_align_left),
            trailing:Icon(Icons.double_arrow) ,
            title: const  Text('Paddy cultivation',style: TextStyle(fontSize: 26),),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const rice()),);
            },),
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            leading: Icon(Icons.format_align_left),
            trailing:Icon(Icons.double_arrow) ,
            title: Text('Sugarcane cultivation',style: TextStyle(fontSize: 26),),onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const sugarcane()),);
          },),
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            leading: Icon(Icons.format_align_left),
            trailing:Icon(Icons.double_arrow) ,
            title: Text('Sunflower cultivation',style: TextStyle(fontSize: 26),),onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const sunflowers()),);
          },),
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            leading: Icon(Icons.format_align_left),
            trailing:Icon(Icons.double_arrow) ,
            title: Text('Banana cultivation',style: TextStyle(fontSize: 26),),onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const bananas()),);
          },),
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            leading: Icon(Icons.format_align_left),
            trailing:Icon(Icons.double_arrow) ,
            title: Text('Lemon Seeds',style: TextStyle(fontSize: 26),),onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const lemons()),);
          },),
        ],
      ),
    );
  }
}
//---------------
class rice extends StatefulWidget {
  const rice({super.key});

  @override
  State<rice> createState() => _riceState();
}

class _riceState extends State<rice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paddy cultivation"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage("assets/rice.png"),height: 300,width: 400,),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Text("1.Choose your plating location:Make sure the soil in the area you're planting consists of slightly acidic clay for the best results. You may also plant your rice seeds in plastic buckets with the same type of soil. Wherever you plant, make sure you have a reliable water source and a way to drain that water when you need to harvest.",style: TextStyle(fontSize: 27),),
            ),
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Text("2.While your seeds are soaking, plan out where and how you want to plant them. Most prefer to plant the seeds in rows to make it easier to water and weed. Consider building trenches and blocking the ends so the water stays contained and dammed (berms can be used as well). That being said, the area doesn't need to stay flooded per se, it just needs to stay wet.",style: TextStyle(fontSize: 27)),
            ),
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Text("3.If your plants are in buckets, you may want to consider moving them at night (when it gets cooler) to a warmer spot. Rice thrive in warmth, and if the temperature dips, you'll likely see stunted growth.To emphasize that flooding policies differentiate from person to person, commercial rice-producing agencies sometimes flood up to eight inches. You may wish to up the water as your plants climb to the 7 inch mark. What you practice is up to you.",style: TextStyle(fontSize: 27)),
            ),
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Text("Let them dry for 2-3 weeks. With the stalks cut, wrap them in newspaper and keep them in a dry, sunny place for 2-3 weeks. The moisture needs to fully dry out for you to get at the grains cleanly.For the record, this last bit can be quite tedious – after a handful or two, you'll be glad for modern technology. Be patient – you're doing it right, it just takes a while. When you're done, you'll be left with an amazing store of food you produced all by yourself.",style: TextStyle(fontSize: 27)),
            )
          ],
        ),
      ),
    );
  }
}
//------------------------------------------
class sugarcane extends StatefulWidget {
  const sugarcane({super.key});

  @override
  State<sugarcane> createState() => _sugarcaneState();
}

class _sugarcaneState extends State<sugarcane> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sugarcane cultivation"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage("assets/sugarcane.png"),height: 300,width: 400,),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Text("1.Sugar cane is easiest to find during the harvest season, in late summer and early fall. If you can't find sugar cane plants at your local garden center, it can often be found at roadside stands and farmer's markets. Asian groceries also often stock sugar cane plants.",style: TextStyle(fontSize: 27),),
            ),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("2.Sugar cane stems are planted horizontally on their sides, in four-inch deep furrows, or trenches. They need full sun, so choose an area that isn't shaded. Dig furrows long enough to fit each piece of cane you're planting, and space the furrows one foot apart.n the spring, usually in April or May, shoots will start to grow from the nodes of the stems. You'll see them breaking through the soil to form individual sugar cane stalks, which will grow quite tall by summer's end.",style: TextStyle(fontSize: 27),)
            ),
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Text("3.A number of pests and diseases can impact sugar cane. Pests such as borers and insects are more likely to impact a crop when they experience waterlogged conditions, while diseases can cause fungal growth and rot stocks. Check your sugar cane regularly for pests or rotting, and take preventative measures to discourage pests and diseases whenever possible.",style: TextStyle(fontSize: 27)),
            ),
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Text("4.Sugar cane plants should be left to grow for as long as possible before the first frost of the year. If they are left in the ground after the first frost, you will not be able to use your plants to make sugar syrup.",style: TextStyle(fontSize: 27)),
            )
          ],
        ),
      ),
    );
  }
}
//-----------------------------------------
class sunflowers extends StatefulWidget {
  const sunflowers({super.key});

  @override
  State<sunflowers> createState() => _sunflowersState();
}

class _sunflowersState extends State<sunflowers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sunflower cultivation"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage("assets/sunflowers.png"),height: 300,width: 400,),
            ),
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("1.here are many sunflower varieties and hybrids, but most gardeners will only need to look at a couple characteristics, usually described on the seed packet or online listing. Be sure to check the sunflower's maximum height, since this ranges from dwarf varieties under 1 foot (30 cm), to giant sunflowers 15 ft (4.6 m) or taller. Also, decide between a sunflower that produces one stalk and flower, or one that branches out into multiple stalks with several smaller blooms.",style: TextStyle(fontSize: 27))
            ),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("2. Put the damp paper towels in a plastic bag.[6] Check on them once or twice a day, and continue once the seeds have sprouted. Typically, you'll see sprouts emerge from most of the seeds within 48 hours. Once this happens, move on to planting the seeds.",style: TextStyle(fontSize: 27))
            ),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("3. Sunflowers are not too picky, and can grow in average garden soils without extra treatment. If your soil is poor, or you want to put in the extra effort to encourage growth, mix rich, loamy soil into your planting area. There is rarely any need to adjust your soil pH, but if you already own a pH kit, you may adjust it to between 6.0 and 7.2",style: TextStyle(fontSize: 27))
            ),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("4.Plant the seeds in holes or trenches one in. (2.5 cm) deep, or 2 in. (5 cm) if the soil is loose and sandy.[13] Keep seeds at least 6 in. (15 cm) from each other, to give each one enough space to grow. If you only have a few seeds and don't want to thin out the weaker plants later, plant them 1 ft. (30 cm) apart instead, or up to 1.5 ft. (46 cm) for giant varieties. Cover the seeds with soil after planting.",style: TextStyle(fontSize: 27))
            )
          ],
        ),
      ),
    );
  }
}
//-----------------------------------------
class bananas extends StatefulWidget {
  const bananas({super.key});

  @override
  State<bananas> createState() => _bananasState();
}

class _bananasState extends State<bananas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banana cultivation"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage("assets/banans.png"),height: 300,width: 400,),
            ),
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("1.While banana plants are technically herbs, they are often mistaken for trees for a reason. Some varieties and individuals can reach 7.6 m (25ft.) in height, although you should check the source of your banana plant or local banana growers for a more accurate estimate for your locale and variety",style: TextStyle(fontSize: 27))
            ),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("2.If your outdoor environment is inadequate, you'll need an indoor location with similar requirements (12 hours bright light and constant warm temperature and humidity).",style: TextStyle(fontSize: 27))
            ),
            Container(
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Text("3. If using a sucker, remove all but a few centimeters (1–2 inches) of the roots. This will limit the chance of disease. You can also remove any leaves in excess of five and/or cut the top of the plant off with a slanting cut to increase the amount of sunlight that warms the soil for root growth and rot prevention.",style: TextStyle(fontSize: 27) ),
            ),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("4.Use store bought fertilizer, compost, manure, or a mixture of these. Add fertilizer immediately after planting in an even ring around the banana plant and repeat at monthly intervals.Fertilizers are usually labeled with three numbers (N-P-K) representing the amount of Nitrogen, Phosphorus (Potash), and Potassium. Bananas require very high amounts of Potassium, but the other nutrients are important as well. You can use a balanced fertilizer (three numbers roughly equal) or a fertilizer that addresses deficiencies in your soil.",style: TextStyle(fontSize: 27))
            )
          ],
        ),
      ),
    );
  }
}
//-----------------------------------------
class lemons extends StatefulWidget {
  const lemons({super.key});

  @override
  State<lemons> createState() => _lemonsState();
}

class _lemonsState extends State<lemons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lemon"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage("assets/lemons.png"),height: 300,width: 400,),
            ),
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("1.Pour some soil into a large bucket and add water to it until it is damp. Mix the soil with your hand or a trowel until it is evenly damp. Do not allow the soil to become soggy, or the seeds will rot. You will need a well-draining soil. Lemon trees love water, but they hate to sit in it.",style: TextStyle(fontSize: 27))
            ),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("2.It may be necessary to use an organic lemon because seeds from a non-organic lemon may not sprout. Also, avoid taking any seeds that look too tiny (like a grain of rice) or that look shriveled (like a raisin). These seeds either won't sprout or won't grow into healthy seedlings",style: TextStyle(fontSize: 27))
            ),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("3. You can do this by washing the lemon seed or by sucking on it until the coating is gone. This is important. The gel-like coating contains sugars, which can cause the seed to rot.",style: TextStyle(fontSize: 27))
            ),
            Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text("4. Begin by placing a sheet of clear plastic cling wrap over the pot. Wrap a rubber band around the plastic wrap to secure it to the pot. Poke a few holes into the plastic wrap. You can use a pencil, a toothpick, or even a fork. These holes will allow the plant to breathe.The plastic wrap should trap the moisture, and the condensation should rain down onto the soil, making it damp again. In very dry environments, this may not happen. If you see the soil start to become dry, remove the plastic wrap and water the plant. Be sure to re-cover the pot with the plastic wrap when you are done watering.",style: TextStyle(fontSize: 27))
            )
          ],
        ),
      ),
    );
  }
}
