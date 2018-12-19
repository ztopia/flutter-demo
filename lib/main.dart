import 'package:flutter/material.dart';

// void main() => runApp(
//     DynamicList(items: new List<String>.generate(20, (i) => "Item $i")));
void main() => runApp(PicList());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: MyHomePage(title: 'Flutter Demo Home Page ztopia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I am Ztopia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('It is Flutter!!!'),
        ),
        body: Center(
          // child: Text(
          //   'Hello World!Hello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello World',
          //   textAlign: TextAlign.center,
          //   maxLines: 1,
          //   overflow: TextOverflow.ellipsis, //fade
          //   style: TextStyle(
          //     fontSize: 25.0,
          //     color: Color.fromARGB(255, 255, 150, 150),
          //     decoration: TextDecoration.underline,
          //     decorationStyle: TextDecorationStyle.wavy,
          //   ),
          // ),
          child: Container(
            // child: new Text(
            //   'Hello wiTness',
            //   style: TextStyle(fontSize: 40.0),
            // ),

            child: new Image.network(
              'http://jspang.com/static/myimg/blogtouxiang.jpg',
              scale: 1.0,
              fit: BoxFit.cover,
              color: Colors.orangeAccent,
              colorBlendMode: BlendMode.darken,
              //repeat: ImageRepeat.repeat,
            ),

            //alignment: Alignment.topCenter, //针对的是Container内child的对齐方式,与Image的fit,repeat冲突
            width: 500.0,
            height: 500.0,
            // color: Colors.lightBlue, //与decoration冲突
            decoration: new BoxDecoration(
              gradient:
                  const LinearGradient(colors: [Colors.purple, Colors.orange]),
              border: Border.all(
                  width: 2.0, color: Colors.pinkAccent), //borderRadius
            ),
            padding: const EdgeInsets.all(
                20.0), //fromLTRB(value1,value2,value3,value4)
            margin: const EdgeInsets.all(
                10.0), //fromLTRB(value1,value2,value3,value4)
          ),
        ),
      ),
    );
  }
}

class ListShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSPang Flutter Demo',
      home: Scaffold(
        appBar: new AppBar(title: new Text('ListView Widget')),
        body: new ListView(children: <Widget>[
          new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text('access_time')),
          new ListTile(
              leading: new Icon(Icons.account_balance),
              title: new Text('account_balance')),
          new Image.network(
              'http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg'),
          new Image.network(
              'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'),
          new Image.network(
              'http://jspang.com/static/myimg/typescript_banner.jpg'),
          new Image.network('http://jspang.com/static/myimg/smile-vue.jpg'),
        ]),
      ),
    );
  }
}

class HorizontalScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text widget',
      home: Scaffold(
        body: Center(
          child: Container(
              height: 200.0,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  new Container(
                    width: 180.0,
                    color: Colors.lightBlue,
                  ),
                  new Container(
                    width: 180.0,
                    color: Colors.amber,
                  ),
                  new Container(
                    width: 180.0,
                    color: Colors.deepOrange,
                  ),
                  new Container(
                    width: 180.0,
                    color: Colors.deepPurpleAccent,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class DynamicList extends StatelessWidget {
  final List<String> items;
  DynamicList({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
          body: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return new ListTile(
                  title: new Text('${items[index]}'),
                );
              })),
    );
  }
}

class GridViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
        body: GridView.count(
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 3,
          children: <Widget>[
            const Text('I am 我喜欢玩'),
            const Text('I love Web'),
            const Text('jspang.com'),
            const Text('我喜欢玩游戏'),
            const Text('我喜欢看书'),
            const Text('我喜欢吃火锅')
          ],
        ),
      ),
    );
  }
}

class PicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
          appBar: new AppBar(title: new Text('Grid List')),
          body: GridView(
            padding: const EdgeInsets.all(5.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                childAspectRatio: 0.7),
            children: <Widget>[
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
                  fit: BoxFit.cover),
              new Image.network(
                  'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
                  fit: BoxFit.cover),
            ],
          )),
    );
  }
}
