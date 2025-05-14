
import 'package:flutter/material.dart';
import 'package:listas/Contato.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Contacts';

    return MaterialApp(
      title: title,
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: contatos.length, 
          itemBuilder: (context, int index){
              return ListTile(
                leading: CircleAvatar(
                  child: Text(contatos[index].nomeCompleto.substring(0,1)),
                ),
                title: Text(contatos[index].nomeCompleto),
                subtitle: Text(contatos[index].email),
              );
          },
          )
      ),
    );
  }
}

List<Contato> contatos = [
    Contato(nomeCompleto: 'Humberto Gutierres', email: 'humberto@gmail.com'),
    Contato(nomeCompleto: 'Felipe TIROU', email: 'TIROU@gmail.com'),
    Contato(nomeCompleto: 'CHAMITO', email: 'GUSTAVO@CHAMITO.com'),
];