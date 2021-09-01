import 'package:flutter/material.dart';
//Add carousel_slider: ^4.0.0 to your pubspec.yaml dependencies. And import it:
import 'package:carousel_slider/carousel_slider.dart';

class Produto {
  final String nome;
  final String picture;
  final double preco;

  Produto(this.nome, this.picture, this.preco);
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final produtos = <Produto>[
    Produto(
      "Bolsa",
      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
      109.95,
    ),
    Produto(
      "Camisa",
      "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
      22.3,
    ),
    Produto(
      "Jaqueta",
      "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
      55.99,
    ),
    Produto(
      "Pulseira",
      "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
      695,
    ),
    Produto(
      "HD Externo",
      "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
      64,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
      ),
      body: Center(
        child: CarouselSlider(
          items: produtos
              .map((e) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        e.picture,
                        width: 200,
                        height: 200,
                      ),
                      Text(e.nome, style: textStyles.headline4),
                      Text(
                        "R\$ ${e.preco}",
                        style: textStyles.headline5
                            ?.copyWith(color: Colors.purple),
                      ),
                    ],
                  ))
              .toList(),
          options: CarouselOptions(
            height: 800,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
