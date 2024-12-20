import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'widgets/appbar_widgets.dart';
import 'widgets/custom_subject.dart';
import 'widgets/textFielsModelsWidgets.dart';
import 'widgets/textbox_widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final List<Widget> _items = [
    TextFieldItemsWidgets(),
    TextFieldItemsWidgets(),
    TextFieldItemsWidgets(),
    TextFieldItemsWidgets(),
    TextFieldItemsWidgets(),

  ];
  List<Widget> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (_focusNode.hasFocus) {
      _filterItems();
    } else {
      setState(() {
        _filteredItems.clear();
      });
    }
  }

  void _filterItems() {
    setState(() {
      _filteredItems = _items;
    });
  }

  @override
  Widget build(BuildContext context) {
    int index = 1;
    final items = <Widget>[
      Icon(
        Icons.home_filled,
        color: AppColors.brightWhite,
        size: 26,
      ),
      Icon(
        Icons.business_center,
        color: AppColors.brightWhite,
        size: 30,
      ),
      Icon(
        Icons.bookmarks_sharp,
        color: AppColors.brightWhite,
        size: 26,
      )
    ];
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        color: Colors.blue,
        backgroundColor: Colors.transparent,
        index: index,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.darkBlue, AppColors.blue],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18.0),
                      bottomRight: Radius.circular(18.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppbarWidgets(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      "Hi user, Welcome Back!",
                      style: TextStyle(
                        color: AppColors.brightWhite,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: AppColors.brightWhite),
                    child: TextField(
                      scrollPhysics: NeverScrollableScrollPhysics(),
                      controller: _controller,
                      focusNode: _focusNode,
                      onChanged: (value) {
                        _filterItems();
                      },
                      decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Icon(Icons.search_outlined),
                        ),
                        hintText: 'Search courses',
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  if (_filteredItems.isNotEmpty && _focusNode.hasFocus)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Material(
                        elevation: 4.0,
                        child: Container(
                          height: 400,
                          padding: EdgeInsets.symmetric(horizontal: 22.0,vertical: 18),
                          // You can change the height to adjust list size
                          width: double.infinity,
                          child: ListView.builder(
                            itemCount: _filteredItems.length,
                            itemBuilder: (context, index) {
                              return _filteredItems[index];
                            },
                          ),
                        ),
                      ),
                    ),
                  TextboxWidgets(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "Continue Learning",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black),
                  ),
                  Spacer(),
                  Text(
                    "View All",
                    style: TextStyle(color: AppColors.blue),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12.0,
                    color: AppColors.blue,
                  )
                ],
              ),
            ),
            CustomSubjects(
              title: 'HTML',
              scheduleTime: 'Ch-4.3.1/08| 12 pages',
              image: "assets/icons/youtube.png",
              color: Colors.indigo,
            ),
            CustomSubjects(
              title: 'Web Development',
              scheduleTime: 'Chapter-4.3.1/08| 2:26 mins',
              image: "assets/icons/pages.png",
              color: Colors.green,
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/icons/indigo_back.jpg",
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "It takes just wo minutes to",
                    style:
                        TextStyle(color: AppColors.brightWhite, fontSize: 18),
                  ),
                  Text(
                    "Level Up Your Skills!",
                    style:
                        TextStyle(color: AppColors.brightWhite, fontSize: 26),
                  ),
                  Container(
                    height: 36,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Center(
                      child: Text(
                        "Take Flash Quiz ->",
                        style: TextStyle(color: AppColors.blue, fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
