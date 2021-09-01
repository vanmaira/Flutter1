import 'package:flutter/material.dart';

class Produtos extends StatefulWidget {
  @override
  _ProdutosState createState() => _ProdutosState();
}

class Produto {
  final String nome;
  final String picture;
  final double preco;
  final double heightPicture;

  Produto(this.nome, this.picture, this.preco, this.heightPicture);
}

class _ProdutosState extends State<Produtos> {
  final produtos = <Produto>[
    Produto(
      "Bolsa",
      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
      109.95,
      170.00,
    ),
    Produto(
      "Camisa",
      "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
      22.3,
      180.00,
    ),
    Produto(
      "Jaqueta",
      "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
      55.99,
      170.00,
    ),
    Produto(
      "Pulseira",
      "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
      695,
      150.00,
    ),
    Produto(
      "HD Externo",
      "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
      64,
      160.00,
    ),
    Produto(
      "Blusa",
      "https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg",
      38,
      170.00,
    ),
    Produto(
      "SSD",
      "https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg",
      120,
      120.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Lojinha do Beguinha'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: produtos.length,
          itemBuilder: (BuildContext context, int index) {
            Produto produto = produtos[index];

            if (index.isOdd) {
              return Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.network(produto.picture,
                                height: produto.heightPicture),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(produto.nome,
                                        style: textStyles.headline4
                                            ?.copyWith(color: Colors.black)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "R\$ ${produto.preco}",
                                      style: textStyles.headline5
                                          ?.copyWith(color: Colors.purple),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ]),
                    ),
                  ],
                ),
              );
            } else {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(produto.nome,
                                      style: textStyles.headline4
                                          ?.copyWith(color: Colors.black)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "R\$ ${produto.preco}",
                                    style: textStyles.headline5
                                        ?.copyWith(color: Colors.purple),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.network(produto.picture,
                              height: produto.heightPicture),
                        ]),
                  ),
                ],
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}
