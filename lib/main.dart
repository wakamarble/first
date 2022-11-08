import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitterもどき',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // 左側のアイコン
          leading: Icon(Icons.menu),
          // タイトルテキスト
          centerTitle: true, // 中央寄せを設定
          title: Text('twitter'),
          // 右側のアイコン一覧
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            for (var i = 0; i < 20; i++) ...[
              SizedBox(
                // 画像の高さを指定
                height: 50.0,
                child: Image.network('https://play-lh.googleusercontent.com/65gRWpXRbhKLD6ak-Eqs8A660E_NJft03eG37hFGitdYp2OyosvaxpN0ErDoz9aWfw=s96'),
              ),
              const Divider(),
            ],
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
          ],
        )
      ),
    );
  }
}