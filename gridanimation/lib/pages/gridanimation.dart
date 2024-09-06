import 'package:flutter/material.dart';

class GridanimationExample extends StatefulWidget {
  const GridanimationExample({super.key});

  @override
  State<GridanimationExample> createState() => _GridanimationExampleState();
}

class _GridanimationExampleState extends State<GridanimationExample> {
  List<int> ls = [];
  final GlobalKey<AnimatedGridState> _globalKey =
      GlobalKey<AnimatedGridState>();
  int count = 0;

  void _addItem() {
    setState(() {
      ls.insert(0, count++);
      _globalKey.currentState?.insertItem(
        0,
        duration: Duration(milliseconds: 1500),
      );
    });
  }

  void _removeItem(index) {
    ls.remove(index);
    _globalKey.currentState?.removeItem(
      index,
      (context, animaton) {
        return ScaleTransition(
          scale: CurvedAnimation(
              parent: animaton, curve: Curves.easeInOutCubicEmphasized),
          child: Card(
            child: Center(
              child: Text("Item Removed"),
            ),
          ),
        );
      },
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Animation"),
        centerTitle: true,
      ),
      body: AnimatedGrid(
        key: _globalKey,
        itemBuilder: (context, index, animation) {
          return FadeTransition(
            opacity: animation,
            child: Card(
              child: ListTile(
                title: Text(
                  ls[index].toString(),
                ),
                trailing: IconButton(
                  onPressed: () {
                    _removeItem(index);
                  },
                  icon: Icon(Icons.delete),
                ),
              ),
            ),
          );
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
      ),
    );
  }
}
