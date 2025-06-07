import 'package:flutter/material.dart';
import 'package:flutter_learn/screens202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: "a");
  @override
  void initState() {
    super.initState();
    final user1 = PostModel1()
    ..id = 32         
    ..userID = 1                    // Eşitlemeyi ..userID = 0 gibi yapabiliriz
    ..body = "Deneme";             // eğer istersek user1.title = 'Deneme'
    user1.title = "PostModel1";   // tarzı klasik yöntemlerle de yapmak mümkün
    final user2 = PostModel2(0, 0, "PostModel2", "Deneme2");
    user2.body = "32";
    final user3 = PostModel3(1, 1, "PostModel3", "Deneme3");
    // user3.body = "deneme3"; kısmı hata verir çünkü PostModel3 değerleri final olarak atanmış
    final user4 = PostModel4(userID: 0, id: 2, title: "PostModel4", body: "Deneme4");
    // yine aynı şekilde user4.body ataması yapılamaz çünkü final.
    final user5 = PostModel5(userID: 1, id: 3, title: "PostModel5", body: "Deneme5"); 
    // user5.body veya user5._body yapamayız çünkü private atadık.
    final user6 = PostModel6(userID: 1, id: 4, title: "PostModel6", body: "Deneme6");
    final user7 = PostModel7();
    // user7 yani PostModel7 default değerler ile tanımlandığı için vermemize gerek yok 
    // fakat user7.body yazarak erişemeyiz çünkü private.

    // Service 
    final user8 = PostModel8(body: "a");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user9.title ?? "Null Deger Dondurdu"),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          //  user9 = PostModel8(title: "Title Null Degil");
           user9 = user9.copyWith(title: "Title Null Degil");
        });
      }),
      body: Center(child: Text(user9.body ?? "Body null"),),
    );
  }
}