import 'package:flutter/material.dart';
import 'imagePaths.dart';
import 'package:cvsair/detail.dart';

void main(List<String> args) {
  runApp(CVSAIR());
}

// Başlangıç
class CVSAIR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CVSAIR Sipariş Takip',
      theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: Color.fromARGB(250, 247, 250, 253)),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  _AnaSayfaState createState() => _AnaSayfaState();
}

// Anasayfa inşaatı burada başlıyor
class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "CVSAIR",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 5),
            ),
            Icon(
              Icons.border_right,
              size: 29,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: DurumBox(),
    );
  }
}

class DurumBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          StatsBilgileri(),
          OrtaAlan(),
        ],
      ),
    );
  }
}

// Bu widget tasarımın üstünde ki teslim durum kutularını oluşturmaktadır.
class StatsBilgileri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // Teslim edilen kutu
        Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(14),
          child: Container(
            width: MediaQuery.of(context).size.width / 2 - 20,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage(teslimEdildi),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "89",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17),
                      child: Text(
                        "/ adet",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Teslim Edildi",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ),

        // Teslim edilmedi kutusu
        Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: MediaQuery.of(context).size.width / 2 - 20,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(250, 169, 169, 235),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage(teslimBekliyor),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "24",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17),
                      child: Text(
                        "/ adet",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Henüz teslim edilmedi",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Bu widget ortada yer alan text bilgi ve input alanını kapsar
class OrtaAlan extends StatelessWidget {
  var siparisNo = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Sipariş Takip Uygulaması",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(250, 106, 106, 142)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 10),
            width: MediaQuery.of(context).size.width - 60,
            child: Text(
              "Aşağıya bilgilerini görmek istediğiniz ürünün sipariş kodunu giriniz.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(250, 170, 170, 187),
              ),
            ),
          ),

          // input alanı
          SizedBox(
            height: 30,
          ),

          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 110,
                height: 60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(250, 173, 194, 255),
                    Color.fromARGB(250, 128, 128, 255)
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, top: 5, right: 10),
                  child: TextField(
                    maxLines: 1,
                    onChanged: (value) => siparisNo = value,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        decorationColor: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Sipariş kodu',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 0),
                child: Hero(
                  tag: siparisNo.toString(),
                  child: MaterialButton(
                    elevation: 4,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            siparisNo: siparisNo,
                          ),
                        ),
                      );
                    },
                    color: Color.fromARGB(250, 127, 128, 255),
                    textColor: Colors.white,
                    child: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    padding: EdgeInsets.all(15),
                    shape: CircleBorder(),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 70,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Ürün ekle butonu
              Column(
                children: [
                  Container(
                    child: MaterialButton(
                      elevation: 4,
                      onPressed: () {
                        print("Ürün ekle butonuna basıldı.");
                      },
                      color: Colors.white,
                      textColor: Colors.white,
                      child: Image(
                        image: AssetImage(urunEkle),
                        fit: BoxFit.contain,
                        height: 45,
                      ),
                      padding: EdgeInsets.all(20),
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Ürün ekle"),
                ],
              ),

              // Raporlar butonu
              Column(
                children: [
                  Container(
                    child: MaterialButton(
                      elevation: 4,
                      onPressed: () {
                        print("Raporlar butonuna basıldı.");
                      },
                      color: Colors.white,
                      textColor: Colors.white,
                      child: Image(
                        image: AssetImage(raporlar),
                        fit: BoxFit.contain,
                        height: 45,
                      ),
                      padding: EdgeInsets.all(20),
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Raporlar"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
