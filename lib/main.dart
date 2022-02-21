import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:recipe_app/models/recipes.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Recipe Viewer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // var list = temp_recipe_list;

  

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 5,
        children: List.generate(temp_recipe_list.length, (idx) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    color: Colors.red,
                    image: DecorationImage(image: NetworkImage(temp_recipe_list[idx]['imageUrl']), fit: BoxFit.fill)
                  ),
                ),

                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    // image: DecorationImage(image: NetworkImage(temp_recipe_list[0]['imageUrl']))
                  ),
                ),

                Container(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 20, 30),
                    child: Text(temp_recipe_list[idx]['recipeName'],
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.access_time,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(temp_recipe_list[idx]['cookingTime'].toString(),
                            style: const TextStyle(color: Colors.white, fontSize: 9),
                          )
                        ],
                      ),
                      
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.shopping_bag,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(temp_recipe_list[idx]['amountOfIngredients'].toString(),
                            style: const TextStyle(color: Colors.white, fontSize: 9),
                          )
                        ],
                      ),

                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.help,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(temp_recipe_list[idx]['recipeDifficulty'].toString(),
                            style: const TextStyle(color: Colors.white, fontSize: 9),
                          )
                        ],
                      ),
                      
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(temp_recipe_list[idx]['recipeAuthor'],
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                ),

                Container(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                      const Icon(Icons.favorite_border,
                        color: Colors.red,
                      ),

                      Text(temp_recipe_list[idx]['totalLikes'].toString(),
                        style: const TextStyle(color: Colors.white),
                      )
                    ]),
                  ),
                )

              ],
            ),
          );
        })
      )
    );
  }
}

// GridView.count(
//         crossAxisCount: 2,
//         crossAxisSpacing: 8.0,
//         mainAxisSpacing: 16.0,
//         children: List.generate(length, (index) => null),
//       )
