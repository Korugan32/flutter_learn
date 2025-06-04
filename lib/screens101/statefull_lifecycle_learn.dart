import 'package:flutter/material.dart';

class StatefullLifecycleLearnView extends StatefulWidget {
  const StatefullLifecycleLearnView({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifecycleLearnView> createState() => _StatefullLifecycleLearnViewState();
}

class _StatefullLifecycleLearnViewState extends State<StatefullLifecycleLearnView> {
  late var _message = "";
  late final isOdd;
  // Çalışma Zamanı Widget oluşturulduğunda, yalnızca bir kez.
  @override
  void initState() {
    super.initState();
    _message = widget.message;
    isOdd = widget.message.length.isOdd;
    if(isOdd){
      _message += " Tek";
    }else{
      _message += " Cift";
    }
    /* 
    API çağrısı başlatılır
    Controller (örneğin AnimationController, TextEditingController) başlatılır
    Timer, stream, listener eklenir
    */
  }

  // Çalışma Zamanı State korunur ama widget parametreleri değişirse
  // Ust classtan gelen parametre degisirse bu life cycle calisir
  @override
  void didUpdateWidget(covariant oldWidget) {
    super.didUpdateWidget(oldWidget);
    /** Önceki ve yeni parametre karşılaştırması yapılabilir
     * if(oldWidget.message != widget.message){
     *  // Logic
     * }
     */
  }

  // Çalısma Zamanı Widget yok edilirken
  @override
  void dispose() {
    super.dispose();
    _message = ""; // State degerli set edilir memory leak icin onemli!!
    /* 
     * Temizlik yapılır: controller, listener, stream, timer kapatılır
     * Bellek sızıntılarını (memory leak) önlemek için çok önemlidir 
     */
  }

  // Çalışma Zamanı initState()’ten hemen sonra Veya InheritedWidget (mesela Theme, MediaQuery) değiştiğinde
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // BuildContext gereken işlemler burada güvenli şekilde yapılabilir
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: Column(children: [
          
        ],
      ),
    );
  }
}
