import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicación',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _paginaActual = 0;

  final List<Widget> _paginas = [Pag01(), Pag02(), Pag03()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _paginaActual = index;
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music_outlined), label: "Biblioteca"),
        ],
      ),
    );
  }
}

class Pag01 extends StatelessWidget {
  const Pag01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: Image.asset(
              "images/album.jpg",
              height: 400,
              width: 500,
            )),
            const SizedBox(
              height: 20,
            ),
            _userTextField(),
            _cantante(),
            const SizedBox(
              height: 50,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              izquierda(),
              play(),
              derecha(),
            ]),
          ],
        ),
      ),
    );
  }
}

class Pag02 extends StatelessWidget {
  Pag02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: 'Escriba la cancion',
              hintStyle: TextStyle(color: Colors.white), //labelText: 'Usuario',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 180,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset("images/album.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset("images/uno.jpg"),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 180,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset("images/dos.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset("images/tres.jpg"),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 180,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset("images/cuatro.jfif"),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset("images/cinco.jpg"),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _myListView(String cancion, String cantante) {
  return new ListTile(
    title: new Text(
      cancion,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
    subtitle: new Text(
      cantante,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
    leading: new Icon(
      Icons.map,
      color: Colors.white,
    ),
  );
}

class Pag03 extends StatelessWidget {
  const Pag03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.search),
                hintText: 'Escriba la cancion',
                //labelText: 'Usuario',
              ),
            ),
            _myListView("Hustlers", "Natos&Waor (ft. Fernando Costa)"),
            _myListView("Carretera", "Natos&Waor"),
            _myListView("Loopings", "Natos&Waor"),
            _myListView(
                "Recuperando el tiempo perdido", "Natos&Waor (ft. Cool)"),
            _myListView("Calavera no chilla", "Natos&Waor (ft. Nic)"),
            _myListView("Dispuestos a morir",
                "Natos&Waor (ft. C.R.O, Homer el Mero Mero)"),
            _myListView("Cicatrices", "Natos&Waor"),
            _myListView("Carretera", "Natos&Waor (ft. Recycled J)"),
            _myListView("Botella para dos", "Natos&Waor"),
          ],
        ));
  }
}

Widget play() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      color: Colors.white,
      child: Icon(Icons.play_arrow, color: Colors.black),
    );
  });
}

Widget derecha() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      color: Colors.white,
      child: Icon(Icons.skip_next_sharp, color: Colors.black),
    );
  });
}

Widget izquierda() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      color: Colors.white,
      child: Icon(Icons.skip_previous_sharp, color: Colors.black),
    );
  });
}

Widget _userTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text("Carretera"),
      color: Colors.white,
    );
  });
}

Widget _cantante() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text("Natos & Waor y Recycled J"),
      color: Colors.white,
    );
  });
}

Widget canciones(String cancion) {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(cancion),
      color: Colors.white,
    );
  });
}
