import 'package:flutter/material.dart';
import 'package:sotauapp/components/color.dart';
import 'package:sotauapp/components/custom_appbar.dart';
import 'package:sotauapp/screens/adminPage/infoForm.dart';

class MenuInformasi extends StatefulWidget {
  const MenuInformasi({Key? key}) : super(key: key);

  @override
  _MenuInformasiState createState() => _MenuInformasiState();
}

class _MenuInformasiState extends State<MenuInformasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => InfoForm()));
        },
        child: const Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        color: cardBgColor,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {},
                          child: SizedBox(
                            child: Container(
                              margin: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sejarah TAU",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu scelerisque vitae pretium urna. Et volutpat ac pellentesque commodo sed scelerisque duis hendrerit aliquam.",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Arti Logo TAU",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/img/tau_simbol.png')
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Card(
                        color: cardBgColor,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {},
                          child: SizedBox(
                            child: Container(
                              margin: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper sed pretium, at nibh molestie id vehicula nec tincidunt. Ultricies nisl, arcu in nullam consequat dui ridiculus mi. Fusce et sapien aliquam turpis. Vitae malesuada est nibh suspendisse dictum. Est, orci, sagittis suscipit adipiscing suscipit. ",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Card(
                        color: cardBgColor,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {},
                          child: SizedBox(
                            child: Container(
                              margin: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Visi",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu scelerisque vitae pretium urna. Et volutpat ac pellentesque commodo sed scelerisque duis hendrerit aliquam.",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Card(
                        color: cardBgColor,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {},
                          child: SizedBox(
                            child: Container(
                              margin: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Misi",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu scelerisque vitae pretium urna. Et volutpat ac pellentesque commodo sed scelerisque duis hendrerit aliquam.",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu scelerisque vitae pretium urna. Et volutpat ac pellentesque commodo sed scelerisque duis hendrerit aliquam.",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu scelerisque vitae pretium urna. Et volutpat ac pellentesque commodo sed scelerisque duis hendrerit aliquam.",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
