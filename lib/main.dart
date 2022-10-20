import 'package:flutter/material.dart';
import 'package:intro_udea/triangulos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Tipos Triangulos:'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String resultado="";
  String imagen="assets/images/interrogante.jpg";

  var num1=TextEditingController();
  var num2=TextEditingController();
  var num3=TextEditingController();

  void proceso() {

    setState(() {
      if(num1.text.isEmpty ||num2.text.isEmpty || num3.text.isEmpty){
        resultado="Ingrese los datos";
      }else {
        Triangulo t = Triangulo(
            int.parse(num1.text), int.parse(num2.text), int.parse(num3.text));
        t.tipoTriangulo();
        resultado = t.tipo;
        imagen=t.img;
      }
    });



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Triangulos"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('TRIANGULO',
              style: TextStyle(color: Colors.blue, fontSize: 28, fontWeight: FontWeight.bold)
            ),
            const SizedBox(
              height: 24.0,
            ),
            TextFormField(
              controller: num1,
              decoration: const InputDecoration(
                labelText: 'Lado A',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.square_foot_rounded,
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            TextFormField(
              controller: num2,
              decoration: const InputDecoration(
                labelText: 'Lado B',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.square_foot_rounded,
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            TextFormField(
              controller: num3,
              decoration: const InputDecoration(
                labelText: 'Lado C',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.square_foot_rounded,
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            ElevatedButton.icon(
                onPressed: proceso,
                icon: Icon(Icons.send),
                label: Text("CALCULAR")
            ),
            const SizedBox(
              height: 24.0,
            ),
            Text("El Triangulo es: "+resultado,
                style: const TextStyle(
                    color:  Colors.green,
                    fontSize: 18,
                    fontStyle: FontStyle.italic)
            ),
            const SizedBox(
              height: 24.0,
            ),
           Container(
             child: //Image.network("https://talently.tech/blog/wp-content/uploads/2021/11/Prueba-Tecnica.png", width: 200, height: 200),
             Image.asset(imagen, width: 200, height: 200),
             padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
             margin: const EdgeInsets.all(20),
             decoration: BoxDecoration(
               color: Colors.white54,
               border: Border.all(color: Colors.black12, width: 4),
               borderRadius: BorderRadius.circular(20)
             ),
             
           )  
          ],
        ),
      ),
      ),
    );
  }
}
