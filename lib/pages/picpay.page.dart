// pagina inicial
import 'package:flutter/material.dart';
import 'package:clone_picpay/widgets/activity_item.dart';
import 'package:clone_picpay/widgets/bottom_menu.widget.dart';
import 'package:clone_picpay/widgets/button_tab.widget.dart';
import 'package:clone_picpay/widgets/history.widget.dart';

class PicPayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //função que cira o corpo do app padrão
    return Scaffold(
      // corpo do app
      body: SafeArea(
        // desabilita o efeito que aparece quando rola tudo pra cima ou tudo pra baixo
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowGlow();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildAppBar(context),
                // espaçamneto
                SizedBox(
                  height: 10,
                ),
                // botões de sugestões / favoritos e lista horizontal
                buildHistory(),
                SizedBox(
                  height: 10,
                ),
                // card de Promoções
                buildPromotion(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        'Atividades',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      ButtonTab(
                        isSelected: false,
                        text: 'Todos',
                        color: Colors.green,
                      ),
                      ButtonTab(
                        isSelected: true,
                        text: 'Minhas',
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  // não deixa o scroll dentro do ListView
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return ActivityItem();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      // botão flutuante que fica no meio da barra de navegação inferior
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildFloatButtonBottombar(),
      // Barra de navegção inferior
      bottomNavigationBar: buildBottomBar(),
    );
  }

  // cria a appbar
  Widget buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      // Linha dos ícones
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.qr_code_outlined,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.settings_outlined,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              Spacer(), // espaçamento
              Column(
                children: [
                  Text(
                    'Meu saldo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'R\$ 00.000,00',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              Spacer(), // espaçamento
              IconButton(
                icon: Icon(
                  Icons.card_giftcard_outlined,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.mode_comment_outlined,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
            ],
          ),
          // espaçamento
          SizedBox(
            height: 10,
          ),
          // barra de pesquisa
          // detecta quando é clicado na barra de pesquisa
          GestureDetector(
            onTap: () {
              print('on tap');
            },
            // borda da barra de pesquisa
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black38,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              // conteúdo dentro da barra de pesquisa
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'O que você quer pagar?',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHistory() {
    return Column(
      children: [
        Row(
          children: [
            //flat button
            ButtonTab(
              isSelected: true,
              text: 'Sugestões',
            ),
            ButtonTab(
              isSelected: false,
              text: 'Favoritos',
            ),
          ],
        ),
        // criando a lista horizontal
        SizedBox(height: 10),
        Container(
          height: 110,
          margin: const EdgeInsets.only(left: 5),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (notification) {
              notification.disallowGlow();
              return true;
            },
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, index) {
                // Lista horizontal
                return History();
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPromotion() {
    // constrói o card de promoções
    return Card(
      elevation: 3, // da uma elevação para o card
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(
                Icons.attach_money_outlined,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Seleção Especial'),
                  Text(
                    'Promções Disponíveis',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // Spacer(),
              // o Expanded faz algo parecido ao spacer, mas ele faz com que a child use todo o espaço disponivel em branco
              Expanded(
                child: Container(),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomBar() {
    // construindo a barra de navegação inferior
    return Container(
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: BottomMenu(
                    isSelected: true,
                    icon: Icons.home_filled,
                    text: 'Início',
                  ),
                ),
                Expanded(
                  child: BottomMenu(
                    isSelected: false,
                    icon: Icons.account_balance_wallet_outlined,
                    text: 'Carteira',
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: BottomMenu(
                    isSelected: false,
                    icon: Icons.notifications_none,
                    text: 'Notificações',
                  ),
                ),
                Expanded(
                  child: BottomMenu(
                    isSelected: false,
                    icon: Icons.shopping_bag_outlined,
                    text: 'Store',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFloatButtonBottombar() {
    // constrói o botão flutuante da menu inferior
    return Container(
      height: 100,
      color: Colors.transparent,
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.attach_money,
              color: Colors.white,
            ),
          ),
          Text(
            'Pagar',
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
