import 'package:flutter/material.dart';

class Produto {
  final String nome;
  final String picture;
  final double preco;

  Produto(this.nome, this.picture, this.preco);
}

class Produtos extends StatefulWidget {
  @override
  _ProdutosState createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  final produtos = <Produto>[
    Produto(
      "Panquecas com frutas vermelhas",
      "https://cdn.pixabay.com/photo/2017/01/16/17/45/pancake-1984716_960_720.jpg",
      19.95,
    ),
    Produto(
      "Salmão grelhado",
      "https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_960_720.jpg",
      42.3,
    ),
    Produto(
      "Hamburguer gourmet",
      "https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg",
      35.99,
    ),
    Produto(
      "Vitela com aspargos",
      "https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305_960_720.jpg",
      40.95,
    ),
    Produto(
      "Fatia de bolo + Capuccino médio",
      "https://cdn.pixabay.com/photo/2016/11/19/12/54/cake-1839134_960_720.jpg",
      24.00,
    ),
    Produto(
      "Pizza marguerita",
      "https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062_960_720.jpg",
      44.25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('CARDÁPIO'),
        backgroundColor: Color(0xFFE6B61C),
        leading: Icon(Icons.article_outlined),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFE6B61C),
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart_outlined,
        ),
      ),
      backgroundColor: Color(0xFFF52915),
      body: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: produtos.length,
          itemBuilder: (BuildContext context, int index) {
            Produto produto = produtos[index];

            return Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              child: Column(children: [
                Image.network(produto.picture, height: 200),
                Text(produto.nome, style: textStyles.headline6),
                Text(
                  "R\$ ${produto.preco}",
                  style:
                      textStyles.headline5?.copyWith(color: Color(0xFFE3FC12)),
                ),
              ]),
            );
          }),
    );
  }
}
