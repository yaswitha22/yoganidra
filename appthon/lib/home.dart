import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final List<Category> categories = [
    Category("Engineering", Colors.blue),
    Category("Commerce", Colors.green),
    Category("Arts", Colors.orange),
    Category("Science", Colors.purple),
    Category("Medical", Colors.red),
    Category("Business", Colors.teal),
    Category("Legal Studies", Colors.indigo),
    Category("Hospitality and Tourism", Colors.yellow),
    Category("Social Sciences", Colors.brown),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Center(child: Text("STREAMS",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
        flexibleSpace: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.topRight,
        colors: [Colors.blueGrey, Colors.black])),),),
        body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
        return Card(
        color: categories[index].color,
        child: InkWell(
        onTap: () {
        // Add your onTap logic here
        print('Category tapped: ${categories[index].name}');
        },
        child: Center(
        child: Text(
        categories[index].name,
        style: TextStyle(
        color: Colors.black,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
        ),
        ),
        ),
        );
        },
        ),
        );
  }
}
class Category {
  final String name;
  final Color color;

  Category(this.name, this.color);
}
