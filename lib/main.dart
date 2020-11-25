import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter на практике (ListTile)')),
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(  // Наш ListTile
          leading: CircleAvatar(  // Тип аватара списка
            backgroundColor: Colors.red, // Цвет аватара
          ),
          title: Text('Audi'), // Основной текст (название)
          subtitle: Text('Audi - idea for Life'), // Текст описания
          trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
          onTap: () {
            Scaffold.of(context).showSnackBar(SnackBar(content: Text('Hello Audi')));
            print('Hello Audi'); // Заглушка, где необходимо указать действие после клика
          },

        ),
        ListTile(  // Второй ListTile
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
          ),
          title: Text('Toyota'),
          subtitle: Text('Toyota - freedom of mind'),
          trailing: Icon(Icons.keyboard_arrow_right), // Заменили иконку на стрелку вниз
          onTap: () {
            Scaffold.of(context).showSnackBar(SnackBar(content: Text('Hello Toyota')));
            print('Hello Toyota'); // Заглушка выводит сообщение в консоль
          },
        ),

      ],
    );
  }
}
