import 'package:flutter/material.dart';
import 'package:sotauapp/components/custom_appbar.dart';
import 'package:sotauapp/screens/adminPage/articleForm.dart';
import 'package:sotauapp/screens/mainPage/article/detail_article.dart';

class MenuArtikel extends StatefulWidget {
  const MenuArtikel({Key? key}) : super(key: key);

  @override
  _MenuArtikelState createState() => _MenuArtikelState();
}

class _MenuArtikelState extends State<MenuArtikel> {
  final List<String> entries = <String>[
    'STUDENT ORIENTATION 2020 “SOTAU” Batch 9',
    'Penyerangan Gengster di Steam Motor di Jaksel, 2 Orang Luka-luka',
    'Akhir Tahun Beli Rumah di Grand Wisata Bekasi Diskon Rp 100 Juta!',
    'Imbas Aksi Ribuan Buruh, Jalan Raya Sumedang Sempat Macet 2 Km',
    'Penyerangan Gengster di Steam Motor di Jaksel, 2 Orang Luka-luka',
    'Akhir Tahun Beli Rumah di Grand Wisata Bekasi Diskon Rp 100 Juta!',
  ];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 1,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ArticleForm()));
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      body: Container(
          child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailArticle()));
            },
            child: Container(
              height: 100,
              // color: Colors.amber[colorCodes[index]],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Image.asset('assets/img/img_dummy_article.jpg'),
                      flex: 1,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '${entries[index]}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Publikasi: 17 Mei 2021')
                        ],
                      ),
                      flex: 2,
                    )
                  ],
                )),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      )),
    );
  }
}
