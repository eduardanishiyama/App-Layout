import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtém a largura da tela
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Responsivo Web'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (screenWidth < 600) {
            // Layout para dispositivos móveis (smartphones)
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.blue,
                    child: Text(
                      'Tela Pequena (Mobile)',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            );
          } else if (screenWidth < 1200) {
            // Layout para tablets ou telas médias
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.green,
                    child: Text(
                      'Tela Média (Tablet)',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            );
          } else {
            // Layout para telas grandes (desktop)
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.red,
                    child: Text(
                      'Tela Grande (Desktop)',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.yellow,
                    child: Text(
                      'Outro Componente',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

