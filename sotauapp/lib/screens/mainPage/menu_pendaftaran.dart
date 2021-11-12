import 'package:flutter/material.dart';
import 'package:sotauapp/components/color.dart';
import 'package:sotauapp/components/custom_appbar.dart';

class MenuPendaftaran extends StatefulWidget {
  const MenuPendaftaran({Key? key}) : super(key: key);

  @override
  _MenuPendaftaranState createState() => _MenuPendaftaranState();
}

class _MenuPendaftaranState extends State<MenuPendaftaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 5,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            child: Text(
              "Data Diri",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Email",
                                ),
                                flex: 2,
                              ),
                              Flexible(
                                child: Text(
                                  " : ",
                                ),
                                flex: 1,
                              ),
                              Flexible(
                                child: Text(
                                  "dummyjhonriris@gmail.com",
                                ),
                                flex: 6,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Nama",
                                ),
                                flex: 2,
                                fit: FlexFit.loose,
                              ),
                              Flexible(
                                child: Text(
                                  " : ",
                                ),
                                flex: 1,
                                fit: FlexFit.loose,
                              ),
                              Flexible(
                                child: Text(
                                  "Dummy Jhon Riris",
                                ),
                                flex: 6,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Tempat, Tanggal Lahir",
                                ),
                                flex: 4,
                              ),
                              Flexible(
                                child: Text(
                                  " : ",
                                ),
                                flex: 1,
                              ),
                              Flexible(
                                child: Text(
                                  "Jakarta, 12 Mei 2003",
                                ),
                                flex: 6,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text(
                                  "No Handphone :",
                                ),
                              ),
                              Text(
                                "081243214321",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text(
                                  "Asal Sekolah :",
                                ),
                              ),
                              Text(
                                "SMAN 136 Jakarta",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text(
                                  "Tahun Lulus :",
                                ),
                              ),
                              Text(
                                "2021",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          MaterialButton(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            height: 52,
                            minWidth: MediaQuery.of(context).size.width,
                            color: bgBlack,
                            onPressed: () {},
                            splashColor: Colors.white,
                            child: Text(
                              "SUBMIT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
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
    );
  }
}
