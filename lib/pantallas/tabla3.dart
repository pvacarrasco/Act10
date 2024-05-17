import 'package:flutter/material.dart';

void main() {
  runApp(const Tabla3());
}

class Tabla3 extends StatelessWidget {
  const Tabla3({super.key});

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
  TextEditingController fechaController = TextEditingController();
  TextEditingController puestoController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController domicilioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9bd0e8),
        title: Text('Tabla de empleado'),
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
                  hintText: 'ingreso su apellido',
                ),
              ),
              //some space between email and mobile
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
              const Text('puesto'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: puestoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese el puesto en el que estas',
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
              const Text('telefono'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: telefonoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese su numero de telefono',
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
                controller: domicilioController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese su domicilio',
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
                  print(fechaController.text);
                  print(puestoController.text);
                  print(correoController.text);
                  print(telefonoController.text);
                  print(domicilioController.text);
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
