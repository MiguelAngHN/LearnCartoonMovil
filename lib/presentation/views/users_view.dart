import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UsersView extends StatefulWidget {
  const UsersView({super.key});

  @override
  State<UsersView> createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 166, 255),
        title: Row(
          children: [
            Text(
              'Lista Usuarios',
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
      body: const UserList(),
    );
  }
}

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          if (snapshot.data != null) {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                final userData = snapshot.data![index];
                return ListTile(
      
                  title:Text('Nombre: ${userData['nombre_usuario'] ?? ''}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email: ${userData['email'] ?? ''}'),
                      Text('Password: ${userData['password'] ?? ''}'),
                      
                    ],
                  ),
                );
              },
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        }
      },
    );
  }

  Future<List<dynamic>> fetchData() async {
    try {
      final response =
          await http.get(Uri.parse('http://127.0.0.1:8000/v1/users'));
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        print('Error en la solicitud HTTP: ${response.statusCode}');
        return []; // Devuelve una lista vacía en caso de error
      }
    } catch (e) {
      print('Error al realizar la solicitud HTTP: $e');
      return []; // Devuelve una lista vacía en caso de error
    }
  }
}
