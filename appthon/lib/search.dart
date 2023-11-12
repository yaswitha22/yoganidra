import 'package:flutter/material.dart';
class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Search Bar')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),
          Expanded(
            child: _buildSearchResults(),
          ),
        ],
      ),
    );
  }
  Widget _buildSearchResults() {
    // Replace this with your actual search logic and result display
    List<String> data = ["Result 1", "Result 2", "Result 3"];

    if (_searchQuery.isEmpty) {
      return Center(
        child: Text('Enter a search query'),
      );
    } else {
      List<String> results = data
          .where((element) =>
          element.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();

      if (results.isEmpty) {
        return Center(
          child: Text('No results found'),
        );
      } else {
        return ListView.builder(
          itemCount: results.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(results[index]),
            );
          },
        );
      }
    }
  }
}


