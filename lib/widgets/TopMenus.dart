import 'package:flutter/material.dart';

class TopMenus extends StatefulWidget {
  @override
  _TopMenusState createState() => _TopMenusState();
}

class _TopMenusState extends State<TopMenus> {
  Future<CategoryListResponse> _response;

  void initState() {
    super.initState();
    getData();
  }

  void getData() {
    setState(() {
      CategoryListApi newApi = new CategoryListApi(page: '1', perPage: '10');
      _response = createCategoryListApi(newApi.toGETUrl(), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CategoryListResponse>(
      future: _response,
      builder: (context, projectSnap) {
        if (projectSnap.hasData) {
          return ListView.builder(
            itemCount: projectSnap.data.data.listX.length,
            itemBuilder: (context, index) {
              CategoryListData project = projectSnap.data.data.listX[index];
              return Column(
                children: <Widget>[
                  // Widget to display the list of project
                  TopMenuTiles(
                      name: project.title, imageUrl: project.icon, slug: "")
                ],
              );
            },
          );
        }
        return CircularProgressIndicator();
      },
    );

//    return Container(
//      height: 100,
//      child: ListView(
//        scrollDirection: Axis.horizontal,
//        children: <Widget>[
//          TopMenuTiles(name: "Burger", imageUrl: "ic_burger", slug: ""),
//          TopMenuTiles(name: "Sushi", imageUrl: "ic_sushi", slug: ""),
//          TopMenuTiles(name: "Pizza", imageUrl: "ic_pizza", slug: ""),
//          TopMenuTiles(name: "Cake", imageUrl: "ic_cake", slug: ""),
//          TopMenuTiles(name: "Ice Cream", imageUrl: "ic_ice_cream", slug: ""),
//          TopMenuTiles(name: "Soft Drink", imageUrl: "ic_soft_drink", slug: ""),
//          TopMenuTiles(name: "Burger", imageUrl: "ic_burger", slug: ""),
//          TopMenuTiles(name: "Sushi", imageUrl: "ic_sushi", slug: ""),
//        ],
//      ),
//    );
  }
}

class TopMenuTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String slug;

  TopMenuTiles(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      @required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: new BoxDecoration(boxShadow: [
              new BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 25.0,
                offset: Offset(0.0, 0.75),
              ),
            ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(3.0),
                  ),
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Center(
                      child: Image.network(
                    imageUrl,
                    width: 24,
                    height: 24,
                  )),
                )),
          ),
          Text(name,
              style: TextStyle(
                  color: Color(0xFF6e6e71),
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
