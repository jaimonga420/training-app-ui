import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/videoplayer_provider.dart';

class VideosList extends StatefulWidget {
  const VideosList({Key? key}) : super(key: key);

  @override
  State<VideosList> createState() => _VideosListState();
}

class _VideosListState extends State<VideosList> {
  var _videosList = [];

  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString('json/videoinfo.json')
        .then((value) {
      setState(() {
        _videosList = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    _initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: _videosList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                debugPrint(index.toString());
                Provider.of<VideoPlayerProvider>(context, listen: false)
                    .loadPlayer();
                Provider.of<VideoPlayerProvider>(context, listen: false)
                    .onTapVideo(index, _videosList);
              },
              child: Container(
                height: 135,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                _videosList[index]["thumbnail"],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_videosList[index]["title"],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                _videosList[index]["time"],
                                style: TextStyle(color: Colors.grey[500]),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                                color: const Color(0xFFeaeefc),
                                borderRadius: BorderRadius.circular(25)),
                            child: const Center(
                              child: Text(
                                '15s rest',
                                style: TextStyle(color: Color(0xff839fed)),
                              ),
                            ),
                          ),
                          // ignore: sized_box_for_whitespace
                          Container(
                            width: 220,
                            height: 20,
                            child: const Center(
                                child: Text(
                              '.................................................................',
                              style: TextStyle(color: Color(0xff839fed)),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
