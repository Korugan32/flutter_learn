import 'package:flutter/material.dart';
import 'package:flutter_learn/product/language/language_items.dart';
import 'package:flutter_learn/product/welcome_counter_button.dart';

class StatefullLearnView extends StatefulWidget {
  const StatefullLearnView({super.key});

  @override
  State<StatefullLearnView> createState() => _StatefullLearnViewState();
}

class _StatefullLearnViewState extends State<StatefullLearnView> {
  int _counter = 0;
  int _welcomeCounter = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _counter++;
    } else {
      _counter--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LanguageItems.statefullLearnAppBarTitle)),
      body: Column(
        children: [
          Center(child: Text('$_counter', style: Theme.of(context).textTheme.headlineLarge)),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _welcomeCounter++;
              });
            },
            child: Text('Merhaba $_welcomeCounter'),
          ), // bu _welcome counter print metodunu calistiriken yada kisaca widget buildini her basildiginda cagirirken asagidaki ffonksiyon kendi icindeki buildi cagirir.
          WelcomeCounterButton(), // printi cagirmaz kendi widgeti icindekini build eder.
        ],
      ),
      floatingActionButton: Row(mainAxisSize: MainAxisSize.min, children: [_increaseButton(), _decreaseButton()]),
    );
  }

  FloatingActionButton _increaseButton() {
    print("Arttirma Butonu");
    /* Eger _welcomeCounter a basildiginda cagirliyorsa bu 
    _welcomeCounterin SetState() metodunun statefull widgetteki bulid metodunu cagirmasindan kaynakli 
    bunun cozumu statefull u _welcomeCountera ozgu yeni bir widget olusturmak ve aslinda parse etmek 
    bu sayade _welcomeCounter incinde gerceklesecek SetState() fonksiyonu sadece kendi 
    widgetindaki buildi cagirarak yasam dongusunu dogru yonetecek
    */
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding _decreaseButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
