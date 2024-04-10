import 'package:bottom_navigation_app/presentation/views/users_view.dart';
import 'package:flutter/material.dart';

class HomesView extends StatefulWidget {
  const HomesView({super.key});

  @override
  State<HomesView> createState() => _HomesViewState();
}

class _HomesViewState extends State<HomesView> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 166, 255),
        title: Row(
          children: [
            Text(
              'Learn Cartoon',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(width: 10),
            Image.asset(
              'assets/Logo.png',
              width: 45,
              height: 45,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                width: 400,
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 300,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/Goku-A.gif',
                            height: 150,
                            width: 300,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Nos enfocamos en caracterisarnos por nuestro interes y compromiso al brindar nuestros servios con secciones cada una con niveles de dificultad como también: \n\n' +
                              ' - Juegos didacticos y divertidos. \n - Plantillas y dibujos. \n - Interacción con personajes de anime y animaciones.',
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 400,
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 300,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/Niños.gif',
                            height: 150,
                            width: 300,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'A través de plataformas digitales, videos, imagenes, juegos entre otros contenidos eduactivos. La tecnología brinda a los niños la oportunidad de explorar nuevos' +
                              'conocimientos, desarrollar habilidades y expandir su creatividad en este mundo tecnologico educativo desde cualquier lugar y momento.', // Texto para la segunda sección
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 58, 166, 255),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 35, 214, 41),
                    width: 2.0,
                  ),
                ),
              ),
              child: ListTile(
                title: Text('Registrarme'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 35, 214, 41),
                    width: 2.0,
                  ),
                ),
              ),
              child: ListTile(
                title: Text('Ver Usuarios'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UsersView()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
