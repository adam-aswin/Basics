import 'package:flutter/material.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({super.key});

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();
  List _items = [];
  int count = 0;

  void addItem() {
    setState(() {
      _items.insert(0, "Item: ${count++}");
      _key.currentState?.insertItem(0, duration: Duration(milliseconds: 400));
    });
    print(_items);
  }

  void _deleteItem(index) {
    final String removeItem = _items.removeAt(index);
    _key.currentState?.removeItem(
      index,
      (context, animaton) {
        return SizeTransition(
          sizeFactor: animaton,
          axisAlignment: 0,
          child: ListTile(
            title: Text("Item Removed"),
          ),
        );
      },
      duration: Duration(milliseconds: 400),
    );
    print(removeItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated List"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: addItem,
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: AnimatedList(
        key: _key,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: ListTile(
              title: Text(_items[index].toString()),
              trailing: IconButton(
                onPressed: () {
                  _deleteItem(index);
                },
                icon: Icon(Icons.delete),
              ),
            ),
          );
        },
      ),
    );
  }
}
