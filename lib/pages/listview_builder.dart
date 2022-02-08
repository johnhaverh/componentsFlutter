import 'package:flutter/material.dart';

class ListviewBuilderPage extends StatefulWidget {
   

  const ListviewBuilderPage({Key key}) : super(key: key);

  @override
  _ListviewBuilderPageState createState() => _ListviewBuilderPageState();
}

class _ListviewBuilderPageState extends State<ListviewBuilderPage> {

  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      //print('${scrollController.position.pixels},  ${scrollController.position.maxScrollExtent}');
      if(scrollController.position.pixels + 500>=scrollController.position.maxScrollExtent){
        addImages();
      }
    });
  }

  void addImages(){
    final lastId = imagesIds.last;
    imagesIds.addAll(
      [1,2,3,4,5].map((e)=> lastId + e)
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context, 
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: imagesIds.length,
          controller: scrollController,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/jar-loading.gif'), 
              image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}'),
            );
          },
        ),
      ),
    );
  }
}