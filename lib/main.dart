import 'package:flutter/material.dart';
main()=>runApp(const GridViewTask());

class GridViewTask extends StatelessWidget {
  const GridViewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home:   Home(),
  );
}

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
final List <String>images=["img/img1.jpg","img/img2.jpg","img/img3.jpg","img/img1.jpg","img/img2.jpg","img/img3.jpg","img/img1.jpg","img/img2.jpg","img/img3.jpg",];
  @override
  Widget build(BuildContext context) => Scaffold(
    // backgroundColor: Colors.red,

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
        children: List.generate(images.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(

              decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,
                      image: AssetImage(images[index])
                  ),
              color: Colors.blue,
                borderRadius: BorderRadius.circular(30)
              ),

            ),
          );
        }
                  ),
    ),



  );
}

