import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    title: 'Navegación con rutas nombradas',
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
      '/third': (context) => ThirdScreen(),
    },
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute(
          builder: (BuildContext builder) => ErrorPage());
    },
  ));
}

//primera pantalla
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera pantalla'),
      ),
      body: Column(
        children: [
          Center(
            child: RaisedButton(
              child: Text('Lanzar pantalla 2'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text('Lanzar pantalla 3'),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text('Lanzar pantalla errónea'),
              onPressed: () {
                Navigator.pushNamed(context, '/fourth');
              },
            ),
          ),
        ],
      ),
    );
  }

}

// segunda pantalla
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda pantalla"),
      ),
      body: Column(
        children: [
          Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Lanzar pantalla 1'),
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text('Lanzar pantalla 3'),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text('Lanzar pantalla anterior'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// tercera pantalla
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tercera pantalla"),
      ),
      body: Column(
        children: [
          Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Lanzar pantalla 1'),
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text('Lanzar pantalla 2'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text('Lanzar pantalla anterior'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Pantalla de Error
class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla de error"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text('A la primera pantalla'),
        ),
      ),
    );
  }
}