import 'package:flutter/material.dart';

void main() {
  runApp(const Tabla2());
}

class Tabla2 extends StatelessWidget {
  const Tabla2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //create the controllers
  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoController = TextEditingController();
  TextEditingController apellidoMController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  TextEditingController fechaController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  TextEditingController edadController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9bd0e8),
        title: Text('Tabla de usuario'),
      ),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('nombre'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese su nombre',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('apellido'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: apellidoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'apellido paterno',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('apellido'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: apellidoMController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'apellido materno',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('domicilio'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: generoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese su domicilio',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('fecha'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese su fecha de nacimiento',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('correo'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: correoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese su correo',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('pais'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: edadController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese su pais',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(nombreController.text);
                  print(apellidoController.text);
                  print(apellidoMController.text);
                  print(generoController.text);
                  print(fechaController.text);
                  print(correoController.text);
                  print(edadController.text);
                },
                child: Text(
                  'Registrar',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
