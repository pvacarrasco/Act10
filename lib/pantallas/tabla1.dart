import 'package:flutter/material.dart';

void main() {
  runApp(const Tabla1());
}

class Tabla1 extends StatelessWidget {
  const Tabla1({super.key});

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
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController editorialController = TextEditingController();
  TextEditingController fechaController = TextEditingController();
  TextEditingController precioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9bd0e8),
        title: Text('Tabla examen de vista'),
      ),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('nombre del usuario'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese el nombre',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('edad'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese la edad',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('sexo'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: mobileController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese su sexo',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('tiempo sin hacerlo'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese el tiempo',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('examen completo o basico'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: editorialController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese su opcion',
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
                  hintText: 'ingrese la fecha',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('precio'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: precioController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ingrese el precio',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(nameController.text);
                  print(emailController.text);
                  print(mobileController.text);
                  print(addressController.text);
                  print(editorialController.text);
                  print(fechaController.text);
                  print(precioController.text);
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
