import 'package:flutter/material.dart';
import './card.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(name: 'Rafael', nim: '123210102'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.name, required this.nim}) : super(key: key);

  final String name, nim;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final String name, nim;

  @override
  void initState() {
    super.initState();
    name = widget.name;
    nim = widget.nim;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas-1 | Rental app'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            _welcomeText(name, nim),
            _searchButton(),
            // Ini bisa makai list view builder ambil dari db, buat class
            MyCard(
              title: 'Toyota New Rush GR Sport',
              image: 'assets/images/image.png',
              priceRental: 400000,
              star: 4.4,
              description: '...',
              location: 'Jl barbasari ...',
              press: () {},
            ),
            MyCard(
              title: 'Pajero Sport',
              image: 'assets/images/image-2.jpg',
              priceRental: 700000,
              star: 4.5,
              description: '...',
              location: 'Jl barbasari ...',
              press: () {},
            ),
            MyCard(
              title: 'Tesla Mobil Listrik',
              image: 'assets/images/image-3.png',
              priceRental: 1000000,
              star: 4.8,
              description: '...',
              location: 'Jl barbasari ...',
              press: () {},
            ),
            MyCard(
              title: 'Lamborghini Sesto Elemento',
              image: 'assets/images/image-4.png',
              priceRental: 1000000,
              star: 4.8,
              description: '...',
              location: 'Jl barbasari ...',
              press: () {},
            ),
            MyCard(
              title: 'Isuzu Elf Toyota HiAce',
              image: 'assets/images/image-5.png',
              priceRental: 500000,
              star: 4.9,
              description: '...',
              location: 'Jl barbasari ...',
              press: () {},
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget _searchButton(){
  return Material(
      child: TextFormField(
          decoration: InputDecoration(
              hintText: "Find You'r Car",
              filled: true,
              fillColor: Colors.white,
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(200.0),
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.all(1),
                child: Icon(Icons.search),
              ),
              suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 1),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(10, 10),
                        primary: Colors.white,
                      ),
                      onPressed: (){},
                      child: const Icon(Icons.filter_list_alt, color: Color.fromARGB(255, 128, 128, 128), size: 20)
                  )
              )
          )
      )
  );
}

Widget _welcomeText(String name, String nim){
  return Container(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
    child: Text("Selamat Datang ${name} - ${nim}",
        style: const TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400
        )
    ),
  );
}