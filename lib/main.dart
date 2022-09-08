import 'package:flutter/material.dart';
main()=>runApp(const GridViewTask());

class GridViewTask extends StatelessWidget {
  const GridViewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  Home(),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      elevation: 0,
      centerTitle: true,
      title: const Text(
          "Gallery",
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
    backgroundColor: Colors.white,
    ),
    body: GridView.count(
        crossAxisCount:2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        childAspectRatio: .8,
        // scrollDirection: Axis.horizontal,
        children: List.generate(100, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              decoration: BoxDecoration(
              color: Colors.red,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(
                  "item $index",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          );
        }
                  ),
    ),



  );
}

