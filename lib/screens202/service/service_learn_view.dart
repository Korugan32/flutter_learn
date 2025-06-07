import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/design_demos/blur_demo.dart';
import 'package:flutter_learn/demos/personal_demo.dart';
import 'package:flutter_learn/screens202/service/post_model.dart';
import 'package:flutter_learn/screens202/service/post_service.dart';

class ServiceLearnView extends StatefulWidget {
  const ServiceLearnView({super.key});

  @override
  State<ServiceLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServiceLearnView> {
  List<PostModel>? _items;
  bool isLoading = false;
  late final PostService _postService;

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  void initState() {
    super.initState();
    _postService = PostService();
    _fetchPostItems();
  }

  Future<void> _fetchPostItems() async {
    _changeLoading();
    _items = await _postService.getItemsFromService();
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GlassAppBar(title: ""),
      body: isLoading
          ? Center(child: CircularProgressIndicator.adaptive())
          : ListView.builder(
            itemCount: _items?.length ?? 0,
              itemBuilder: (context, index) {
                return _CardItem(model: _items?[index]);
              },
            ),
    );
  }
}

class _CardItem extends StatelessWidget {
  const _CardItem({
    PostModel? model,
  }) : _model = model;

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder:(context) => PersonalDemoView(),));
        },
        titleTextStyle: TextStyle(
          color: Colors.amber
        ),
        title: Text(_model?.title ?? " "),
        subtitle: Text(_model?.body ?? " "),
      ),
    );
  }
}
