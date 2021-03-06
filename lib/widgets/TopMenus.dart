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
    return Container(
        height: 150,
        width: double.infinity,
        child: FutureBuilder<CategoryListResponse>(
          future: _response,
          builder: (context, projectSnap) {
            if (projectSnap.hasData) {
              return ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: projectSnap.data.data.data.length,
                itemBuilder: (context, index) {
                  DataRes project = projectSnap.data.data.data.elementAt(index);
                  return Column(
                    children: <Widget>[
                      // Widget to display the list of project
                      TopMenuTiles(
                          name: project.title,
                          imageUrl: project.icon,
                          slug: project.description)
                    ],
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        ));
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
                  width: 100,
                  height: 100,
                  child: Center(
                      child: Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: double.infinity,
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
