import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto-kilometers - Flutter',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //controllers used in insert operation UI
  TextEditingController brandController = TextEditingController();
  TextEditingController licenseController = TextEditingController();
  TextEditingController kmController = TextEditingController();

  //controllers used in update operation UI
  TextEditingController licenseUpdateController = TextEditingController();
  TextEditingController brandUpdateController = TextEditingController();
  TextEditingController kmUpdateController = TextEditingController();

  //controllers used in delete operation UI
  TextEditingController licenseDeleteController = TextEditingController();

  //controllers used in query operation UI
  TextEditingController queryController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Nieuw",
              ),
              Tab(
                text: "Lijst",
              ),
              Tab(
                text: "Zoek",
              ),
              Tab(
                text: "Wijzig",
              ),
              Tab(
                text: "Wis",
              ),
            ],
          ),
          title: Text('Autokilometers - Flutter SQLite Tutorial'),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: licenseController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Kenteken',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: brandController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Merk',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: kmController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Kilometers',
                      ),
                    ),
                  ),
                  TextButton(
                    child: Text('Toevoegen'),
                    onPressed: () {
                      //TODO: Insert car
                    },
                  ),
                ],
              ),
            ),
            Container(
                //TODO: Add listview for all cars
                child: Text('Alle auto\'s')),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: queryController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Merk',
                      ),
                      onChanged: (text) {
                        if (text.length >= 2) {
                          setState(() {
                            //TODO:
                          });
                        } else {
                          setState(() {
                            //TODO://
                          });
                        }
                      },
                    ),
                    height: 100,
                  ),
                  Container(
                    height: 300,
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: licenseUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Kenteken',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: brandUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Merk',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: kmUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Kilometers',
                      ),
                    ),
                  ),
                  TextButton(
                    child: Text('Auto gegevens wijzigen'),
                    onPressed: () {
                      //TODO: Wijzigingen opslaan
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: licenseDeleteController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Kenteken',
                      ),
                    ),
                  ),
                  TextButton(
                    child: Text('Wis'),
                    onPressed: () {
                      int id = int.parse(licenseDeleteController.text);
                      //TODO: Verwijderen
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
