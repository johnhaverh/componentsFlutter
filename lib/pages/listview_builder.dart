import 'package:componentsflutter/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListviewBuilderPage extends StatefulWidget {
   

  const ListviewBuilderPage({Key key}) : super(key: key);

  @override
  _ListviewBuilderPageState createState() => _ListviewBuilderPageState();
}

class _ListviewBuilderPageState extends State<ListviewBuilderPage> {

  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      //print('${scrollController.position.pixels},  ${scrollController.position.maxScrollExtent}');
      if(scrollController.position.pixels + 500>=scrollController.position.maxScrollExtent){
        //addImages();
        fecthData();
      }
    });
  }

  Future fecthData() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    
    await Future.delayed(Duration(seconds: 3));
    addImages();
    
    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels+100 <= scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels+120, 
      duration: Duration(milliseconds: 300), 
      curve: Curves.fastOutSlowIn,
      );
  }

  void addImages(){
    final lastId = imagesIds.last;
    imagesIds.addAll(
      [1,2,3,4,5].map((e)=> lastId + e)
    );
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    final lastId=imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId+1);
    addImages();
  }

  @override
  Widget build(BuildContext context) {

    final sizeScreen = MediaQuery.of(context).size;

    return Scaffold(
      //backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context, 
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: onRefresh,
              color: AppTheme.primary,
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

            if (isLoading)
            Positioned(
              bottom: 40,
              left: (sizeScreen.width * 0.5 - 30),
              child: _LoadingIcon())
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primary)),//backgroundColor: AppTheme.primary ),
    );
  }
}