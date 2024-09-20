import 'package:flutter/material.dart';
import 'package:flutter_sampraia/main.dart';
import 'package:flutter_sampraia/praias.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_sampraia/telaDois.dart';
import 'package:flutter_sampraia/telaTres.dart';
import 'package:flutter_sampraia/telaQuatro.dart';
import 'package:flutter_sampraia/telaCinco.dart';
import 'package:flutter_sampraia/telaSeis.dart';
import 'package:flutter_sampraia/telaMapa.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "App",
      home: telaUm(),
    ),
  );
}
//int qtdpraia = ListView.Builder( itemCount:Praias.length());
//String qtdpraia = 'Praias[index]';

void _abrirLink1() async {
  const url = 'https://www.whatsapp.com/?lang=pt_BR';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
void _onPraiaGrandeTap(BuildContext context, String title) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const telaDois()),
  );
}
Widget onPraiaGrandetap() {
  return const telaDois(); // Replace with the actual widget
}

void _onBertiogaTap(BuildContext context, String title) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const telaTres()),
  );
}
Widget onBertiogatap() {
  return const telaDois(); // Replace with the actual widget
}
void _onItanhaemTap(BuildContext context, String title) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const telaQuatro()),
  );
}

void _onPeruibeTap(BuildContext context, String title) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const telaCinco()),
  );
}

void _onMongaguaTap(BuildContext context, String title) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const telaSeis()),
  );
}

void _onMapaTap(BuildContext context, String title) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const telaMapa()),
  );
}

/* void _searchBar(BuildContext context, String title) {

  }*/
// ignore: camel_case_types
class telaUm extends StatefulWidget {
  const telaUm({super.key});

  @override
  TelaUm createState() => TelaUm();

}

class TelaUm extends State<telaUm> {
  final ScrollController _controller = ScrollController();
    void _scrollDown() {
  _controller.animateTo(
    _controller.position.maxScrollExtent,
    duration: const Duration(seconds: 1),
    curve: Curves.fastOutSlowIn
  );
}

List<Praias> praias = [
  
  Praias(
      'Praia Grande',
      'Bastante visitada',
      'img/praiaGrande.png',
      'Ondas calmas e fáceis de pegar',
      'Praia Grande é uma das cidades mais populares do litoral sul do estado de São Paulo, Brasil. Com uma extensão de aproximadamente 23 km de litoral, é conhecida por suas praias amplas e urbanizadas, que atraem turistas durante todo o ano.',
      '#Contaminação',
      'SP'),
  Praias(
      'Bertioga',
      'Bastante visitada',
      'Ondas calma e fáceis de pegar',
      'img/bertioga.png',
      'Bertioga é uma cidade litorânea em São Paulo, famosa por suas belas praias e pelo histórico Forte São João. O turismo é a principal atividade econômica, complementada pela pesca e agricultura. A cidade valoriza a preservação ambiental e oferece diversas opções de ecoturismo',
      '#contaminação',
      'SP'),
  Praias(
      'Itanhaém',
      'Bastante visitada',
      'Ondas calma e fáceis de pegar',
      'img/itanhaem.png',
      'Itanhaém é uma cidade litorânea em São Paulo, famosa por suas praias e rica história, fundada em 1532. Atrai turistas com belezas naturais, como a Praia dos Sonhos, e pontos históricos, como a Igreja Matriz de Sant Anna. O turismo é a principal atividade econômica.',
      '#contaminação',
      'SP'),
  Praias(
      'Peruíbe',
      'Bastante visitada',
      'Ondas calma e fáceis de pegar',
      'img/peruibe.png',
      'Peruíbe é uma cidade litorânea em São Paulo, conhecida por suas praias e a Estação Ecológica da Juréia-Itatins. O turismo é a principal atividade econômica, atraindo visitantes para suas belezas naturais e áreas de preservação ambiental.',
      '#contaminação',
      'SP'),
  Praias(
      'Mongaguá',
      'Bastante visitada',
      'Ondas calma e fáceis de pegar',
      'img/Mongaguá.png',
      'Mongaguá é uma cidade litorânea em São Paulo, conhecida por suas praias e a Plataforma de Pesca. O turismo é a principal atividade econômica, atraindo visitantes para suas belezas naturais e opções de lazer.',
      '#contaminação',
      'SP'),
  Praias(
      'São Vicente',
      'Bastante visitada',
      'Ondas calma e fáceis de pegar',
      'img/Mongaguá.png',
      'Mongaguá é uma cidade litorânea em São Paulo, conhecida por suas praias e a Plataforma de Pesca. O turismo é a principal atividade econômica, atraindo visitantes para suas belezas naturais e opções de lazer.',
      '#contaminação',
      'SP'),
  Praias(
      'Guarujá',
      'Bastante visitada',
      'Ondas calma e fáceis de pegar',
      'img/Mongaguá.png',
      'Mongaguá é uma cidade litorânea em São Paulo, conhecida por suas praias e a Plataforma de Pesca. O turismo é a principal atividade econômica, atraindo visitantes para suas belezas naturais e opções de lazer.',
      '#contaminação',
      'SP'),
  Praias(
      'Ubatuba',
      'Bastante visitada',
      'Ondas calma e fáceis de pegar',
      'img/Mongaguá.png',
      'Mongaguá é uma cidade litorânea em São Paulo, conhecida por suas praias e a Plataforma de Pesca. O turismo é a principal atividade econômica, atraindo visitantes para suas belezas naturais e opções de lazer.',
      '#contaminação',
      'SP'),
  Praias(
      'Santos',
      'Bastante visitada',
      'Ondas calma e fáceis de pegar',
      'img/Mongaguá.png',
      'Mongaguá é uma cidade litorânea em São Paulo, conhecida por suas praias e a Plataforma de Pesca. O turismo é a principal atividade econômica, atraindo visitantes para suas belezas naturais e opções de lazer.',
      '#contaminação',
      'SP'),
  Praias(
      'Ilha Comprida',
      'Bastante visitada',
      'Ondas calma e fáceis de pegar',
      'img/Mongaguá.png',
      'Mongaguá é uma cidade litorânea em São Paulo, conhecida por suas praias e a Plataforma de Pesca. O turismo é a principal atividade econômica, atraindo visitantes para suas belezas naturais e opções de lazer.',
      '#contaminação',
      'SP'),
];

@override
  void initState() {
    super.initState();
    }

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromRGBO(179, 146, 85, 10),
    appBar: AppBar(
      //title: const Text('Pesquisar...'),
      backgroundColor: const Color.fromRGBO(179, 146, 85, 10),
      title: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide.none, // Remover a borda padrão
          ),
          filled: true,
          fillColor: Color.fromRGBO(244, 235, 208, 30),
          contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          icon: Icon(
            Icons.search,
          ),
          hintText: ('Pesquisar...'),
        ),
      ),
    ),
    bottomNavigationBar: BottomAppBar(
      height: 60,
      color: const Color.fromRGBO(214, 173, 96, 1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () {
              _abrirLink1();
            },
            child: Image.asset('img/whatsapp.png'),
          ),
          //futuramente irá redirecionar á um canal do whatsapp
          InkWell(
            onTap: () {
              _onMapaTap(context, 'Mapa');
            },
            child: Image.asset('img/mapa.png'), //Abrirá o mapa do app
          ),

          Image.asset('img/siteUm.png') //redirecionará para o site
        ],
      ),
    ),
    body: 
    Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Praias',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Divider(),
        Expanded(
            child: ListView(children: <Widget>[
          //const Padding(padding: EdgeInsets.only(bottom: 30),),
          const Divider(),
          Expanded(
            //inicia o construtor do list view
            child: ListView.builder(
              //define o tamanho do listview a partir do tamanho da lista
              itemCount: praias.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
              scrollDirection: Axis.vertical,

              clipBehavior: Clip.antiAlias,
              itemBuilder: (BuildContext ctx, index) {
                return Card(
                  child: ListTile( 
                    tileColor: const Color.fromARGB(255, 216, 180, 112),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(praias[index].Imagem),
                    ),
                    title: Text(praias[index].Nome),
                    subtitle: Text(praias[index].Avaliacao),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const telaDois(),
                        settings: RouteSettings(
                          arguments: praias[index],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ]
        )
        ),
      ],
    ),
  );
}
}