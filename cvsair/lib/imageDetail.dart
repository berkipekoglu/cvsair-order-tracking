import 'package:flutter/material.dart';

class ImageDetail extends StatefulWidget {
  var imgPath;
  ImageDetail({this.imgPath});
  @override
  _ImageDetail createState() => _ImageDetail();
}

class _ImageDetail extends State<ImageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
