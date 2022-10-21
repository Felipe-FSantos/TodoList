import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _todoList = [];

  //Controlador para textField Nova Tarefa
  final _todoController = TextEditingController();

  //Metodo para abrir arquivo JSON

  Future<File> _abreArquivo() async {
    //Recebe o diretório do documento da aplicação
    final diretorio = await getApplicationDocumentsDirectory();
    return File('${diretorio.path}/todoList.json');
  }

  Future<String?> _lerDados() async {
    try {
      final file = await _abreArquivo();
      return file.readAsString();
    } catch (e) {
      return null;
    }
  }

  Future<File> _salvarDados() async{
    String data = json.encode(_todoList);
    final file = await _abreArquivo();
    return file.writeAsString(data);
  }

  //Acrescenta tarefa na todoList
  void _adicionaTarefa(){
    //Mapeia formato JSON
    Map<String, dynamic> novoTodo = {};
    novoTodo['titulo'] = ''; //Vamos pegar do campo onde o usuário digita
    novoTodo['status'] = false;
    //Limpar o campo de texto onde o usuário digitou o tarefa
    _todoList.add(novoTodo);
    _salvarDados();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo List'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child:Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _todoController,
                    maxLength: 90,
                    decoration: const InputDecoration(labelText: 'Nova Tarefa'),
                  )
                ),
                SizedBox(
                  height: 45,
                    width: 45,
                  child: FloatingActionButton(
                    child: const Icon(Icons.save),
                    onPressed: (){},
                  )
                )
              ],
            ),
          )
        ],
      ),
    );

  }
}
