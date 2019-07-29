import 'package:flutter/material.dart';
import 'package:ryde_module/utils/themes.dart';
import 'package:ryde_module/widgets/multi_select_chip.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ReviewScreen extends StatefulWidget {
  List<String> reportList = [
    "타이어 펑크",
    "타이어 압력",
    "발판 청결상태",
    "브래이크 느슨함",
    "벨(종) 상태",
    "엑셀 상태",
    "주행중 소음",
    "기타 사항",
    "손잡이 청결상태",
    "핸들 흔들림",
    "속도/성능 문제",
  ];
  @override
  State<StatefulWidget> createState() => _ReviewScreen();
}

class _ReviewScreen extends State<ReviewScreen> {
  List<String> selectedReportList = List();
  var rating = 4.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Review"),
        centerTitle: false,
        actions: <Widget>[
          FlatButton(
            child: Text("건너뛰기"),
            onPressed: () => {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("RYDE, 어땠나요?"),
            Text(
              "평가하기",
              style: sectionTitle,
            ),
            SmoothStarRating(
                allowHalfRating: false,
                onRatingChanged: (v) {
                  rating = v;
                  setState(() {});
                },
                starCount: 5,
                rating: rating,
                size: 40.0,
                color: starColor,
                borderColor: starColor,
                spacing: 0.0),
            Text(
              "불편사항 제공",
              style: sectionTitle,
            ),
            MultiSelectChip(
              widget.reportList,
              onSelectionChanged: (selectedList) {
                setState(() {
                  selectedReportList = selectedList;
                });
              },
            ),
            Text(
              "이번 라이드에 만족하시나요?",
              style: sectionTitle,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              // hack textfield height
              padding: EdgeInsets.only(bottom: 40.0),
              child: TextField(
                maxLines: 15,
                decoration: InputDecoration(
                  hintText: "Comment!",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 64.0,
        width: 64.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.check),
          ),
        ),
      ),
    );
  }
}
