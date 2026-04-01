import 'package:flutter/material.dart';

void main() {
  runApp( 
    MaterialApp(
      home:MyApp(name: 'Teknik Informatika', year: 2026),
    )
  );
}


class MyApp extends StatelessWidget {
  //inisialisaasi
  final int year;
  final String name; 

//constructor / menerima parameter
MyApp({required this.year, required this.name, });
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Pertemmuan 4'),
      ),
      body: NumberScreen()
      );
  }
}

class NumberScreen extends StatefulWidget {
  @override
  _NumberScreenState createState() => _NumberScreenState();
}
//membuat class untuk stateful widget
class _NumberScreenState extends State<NumberScreen> {
  String name = "Iphone 17 Promax warna orange singapore 2 TB CASH";
  String photo = "https://picsum.photos/200/300";
  int qty = 0;
  int price = 27000000;
  int get total => price * qty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: Padding(
              padding:EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  flex: 20,
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontWeight: .bold, fontSize: 16),
                        ),
                      Image.network(
                        photo,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Rp. $total',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon( Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (qty > 0) {
                              qty--;
                              total - price;
                            }
                          });
                        },
                      ),
                      Text(qty.toString()),
                      IconButton(
                        icon: Icon( Icons.add),
                        onPressed: () {
                          setState(() {
                            qty++;
                          });
                        },
                      ),
                    ],
                  ), 
                )
              ],
            ),
            ),
          )
        ],
      ),
    );
  }
}