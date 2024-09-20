import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "App4",
    home: telaMapa(),
  ));
}


// ignore: camel_case_types
class telaMapa extends StatelessWidget {
  const telaMapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(179, 146, 85, 10),
      appBar: AppBar(
        title: Image.asset(
          'img/logo2.png',
        ),
        backgroundColor: const Color.fromRGBO(214, 173, 96, 1),
      ),
      bottomNavigationBar: BottomAppBar(height: 60, color: const Color.fromRGBO(214, 173, 96, 1) ,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         
          children: <Widget>[
        InkWell(
          child: Image.asset('img/whatsapp.png'),
        ),
        //futuramente irá redirecionar á um canal do whatsapp
        Image.asset('img/mapa.png'), //Abrirá o mapa do app
        Image.asset('img/siteUm.png') //redirecionará para o site
      ],),),

      body: const SingleChildScrollView(
        
        child: Column(
          children: 
        <Widget>[
          Padding(padding: EdgeInsets.only(top: 10, bottom: 20)),
            Text('Mapa Litorâneo',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 255, 255, 1)
            )),
            Divider(),
            Padding(padding: EdgeInsets.only(top:10)),
           Image(image: AssetImage('img/mapaUm.png'),),
           Padding(padding: EdgeInsets.only(top: 40, left: 10),),
        ]
      ),
    ),
    );
  }
}
