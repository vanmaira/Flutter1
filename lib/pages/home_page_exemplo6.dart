import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget criaContainer(Color color) => Container(
        height: 56,
        width: 56,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SoulCode Template"),
        ),
//COLUNA
        // body: Column(
        //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   // crossAxisAlignment: CrossAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.stretch,

        //   children: [
        //     criaContainer(Colors.amber),
        //     criaContainer(Colors.pink),
        //     criaContainer(Colors.green),
        //     criaContainer(Colors.blue),
        //     criaContainer(Colors.black),
        //   ],
        // ),
//LINHA
        // body: Row(
        //     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     // crossAxisAlignment: CrossAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.stretch,

        //     children: [
        //       criaContainer(Colors.amber),
        //       criaContainer(Colors.pink),
        //       criaContainer(Colors.green),
        //       criaContainer(Colors.blue),
        //       criaContainer(Colors.black),
        //     ],
        //   ),
//OS DOIS JUNTOS
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               criaContainer(Colors.amber),
//               criaContainer(Colors.pink),
//               criaContainer(Colors.green),
//               criaContainer(Colors.blue),
//               criaContainer(Colors.black),
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               criaContainer(Colors.amber),
//               criaContainer(Colors.pink),
//               criaContainer(Colors.green),
//               criaContainer(Colors.blue),
//               criaContainer(Colors.black),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               criaContainer(Colors.amber),
//               criaContainer(Colors.pink),
//               criaContainer(Colors.green),
//               criaContainer(Colors.blue),
//               criaContainer(Colors.black),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// COM CONTAINER

        body: Container(
          color: Colors.black,
          // height: 200,
          child: Column(
            children: [
              criaContainer(Colors.orange),
              criaContainer(Colors.pink),
              criaContainer(Colors.green),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  criaContainer(Colors.lime),
                  criaContainer(Colors.indigo),
                ],
              )
            ],
          ),
        ));
  }
}
