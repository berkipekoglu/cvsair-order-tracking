import 'package:flutter/material.dart';
import 'package:cvsair/imageDetail.dart';

class DetailPage extends StatefulWidget {
  var imgPath;
  var siparisNo;
  DetailPage({this.siparisNo});
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 20,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        titleSpacing: -10,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Color.fromARGB(250, 41, 41, 99),
        ),
        elevation: 0,
        title: Text(
          "Geri",
          style: TextStyle(
              color: Color.fromARGB(250, 41, 41, 99),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Hero(
            tag: widget.siparisNo,
            child: Column(
              children: [
                // üst başlık alanı
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 35, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sipariş Bilgileri",
                        style: TextStyle(
                            color: Color.fromARGB(250, 104, 118, 167),
                            fontSize: 23,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Sipariş bilgileri aşağıya getirildi.",
                        style: TextStyle(
                            color: Color.fromARGB(250, 132, 134, 145),
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                // değişiklik bildirim alanı
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Material(
                      borderRadius: BorderRadius.circular(15),
                      type: MaterialType.card,
                      color: Color.fromARGB(250, 115, 122, 177),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, bottom: 10, right: 10),
                        child: Column(
                          children: [
                            /* 
                            içe içe Column kullanıyorum çünkü her tarihte değişen şeyleri
                            tarihin altında tek tek belirtmek için.
                            */
                            Column(
                              children: [
                                // 1.güncelleme
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      // tarih başlığı
                                      Text(
                                        "02.07.2020 tarihinde güncelleme yapılmış.",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                        ),
                                      ),
                                      // belirtilen tarihte yapılan değişiklikler
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding:
                                            EdgeInsets.only(left: 30, top: 7),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "+ Fiyat değiştirilmiş.",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    250, 248, 248, 255),
                                              ),
                                            ),
                                            Text(
                                              "+ Teslim tarihi değiştirilmiş.",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    250, 248, 248, 255),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Divider(
                                  color: Colors.white60,
                                ),
                                // 2.güncelleme
                                Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Column(
                                    children: [
                                      // tarih başlığı
                                      Text(
                                        "19.06.2020 tarihinde güncelleme yapılmış.",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                        ),
                                      ),
                                      // belirtilen tarihte yapılan değişiklikler
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding:
                                            EdgeInsets.only(left: 30, top: 7),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "+ Proje adı değiştirilmiş.",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    250, 248, 248, 255),
                                              ),
                                            ),
                                            Text(
                                              "+ Yeni not eklenmiş.",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    250, 248, 248, 255),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),

                // Sipariş bilgileri alanı

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Material(
                    type: MaterialType.card,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    elevation: 4,
                    child: Column(
                      children: [
                        // Sipariş No
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 30),
                                child: Text(
                                  "Sipariş No",
                                  style: TextStyle(
                                    color: Color.fromARGB(250, 146, 150, 165),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(right: 20, left: 0),
                                  child: TextField(
                                    onChanged: null,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        decorationColor: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              150, 212, 214, 217),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(100, 41, 41, 99),
                                        ),
                                      ),
                                      enabled: false,
                                      hintMaxLines: 10,
                                      hintText: widget.siparisNo,
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Proje Adı
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 30),
                                child: Text(
                                  "Proje Adı",
                                  style: TextStyle(
                                    color: Color.fromARGB(250, 146, 150, 165),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(right: 20, left: 4),
                                  child: TextField(
                                    onChanged: (null),
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        decorationColor: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              150, 212, 214, 217),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(100, 41, 41, 99),
                                        ),
                                      ),
                                      enabled: false,
                                      hintMaxLines: 10,
                                      hintText: 'Radyal Jet Fan',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Müşteri
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 30),
                                child: Text(
                                  "Müşteri",
                                  style: TextStyle(
                                    color: Color.fromARGB(250, 146, 150, 165),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(right: 20, left: 18),
                                  child: TextField(
                                    onChanged: null,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        decorationColor: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white,
                                            style: BorderStyle.solid,
                                            width: 50),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              150, 212, 214, 217),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(100, 41, 41, 99),
                                        ),
                                      ),
                                      enabled: false,
                                      hintMaxLines: 10,
                                      hintText: 'Queen Central Park Bomonti',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Tutar
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 32),
                                child: Text(
                                  "Tutar",
                                  style: TextStyle(
                                    color: Color.fromARGB(250, 146, 150, 165),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(right: 20, left: 37),
                                  child: TextField(
                                    onChanged: null,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        decorationColor: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              150, 212, 214, 217),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(100, 41, 41, 99),
                                        ),
                                      ),
                                      enabled: false,
                                      hintMaxLines: 10,
                                      hintText: '56.000.00 TL',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Ödeme Şekli
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 30),
                                child: Text(
                                  "Ödeme \n Şekli",
                                  textAlign: TextAlign.justify,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Color.fromARGB(250, 146, 150, 165),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(right: 20, left: 13),
                                  child: TextField(
                                    onChanged: null,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        decorationColor: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              150, 212, 214, 217),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(100, 41, 41, 99),
                                        ),
                                      ),
                                      enabled: false,
                                      hintMaxLines: 10,
                                      hintText: 'Çek',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Teslim Tarihi
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 30),
                                child: Text(
                                  "Teslim \n Tarihi",
                                  textAlign: TextAlign.justify,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Color.fromARGB(250, 146, 150, 165),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(right: 20, left: 24),
                                  child: TextField(
                                    onChanged: null,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        decorationColor: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              150, 212, 214, 217),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(100, 41, 41, 99),
                                        ),
                                      ),
                                      enabled: false,
                                      hintMaxLines: 10,
                                      hintText: '26.08.2020',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(250, 63, 74, 110),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Notlar
                        Container(
                          padding: EdgeInsets.only(top: 25, bottom: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 30),
                                    child: Text(
                                      "Notlar",
                                      textAlign: TextAlign.center,
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Color.fromARGB(250, 240, 85, 69),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20, top: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            child: Text(
                                              "Kargo ücreti alıcıya aittir.",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      250, 63, 74, 110),
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            child: Text(
                                              "Sevkiyat, tarihinden önce ulaşmalıdır.",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      250, 63, 74, 110),
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    type: MaterialType.card,
                    borderRadius: BorderRadius.circular(20),
                    elevation: 4,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "Siparişe ait fotoğraflar",
                              style: TextStyle(
                                  color: Color.fromARGB(250, 126, 128, 135),
                                  fontSize: 16),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ImageDetail(
                                    imgPath: 'assets/images/urun1.png',
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/urun1.png'),
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ImageDetail(
                                    imgPath: 'assets/images/urun2.png',
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/urun2.png'),
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
