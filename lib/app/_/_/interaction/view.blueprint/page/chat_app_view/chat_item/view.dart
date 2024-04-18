import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class ChatItemView extends StatefulWidget {
  ChatItemView(
      {super.key,
      required this.name,
      required this.lastMessage,
      required this.userImage,
      required this.time,
      required this.noOfMessage});

  final String name;
  final String lastMessage;
  final String userImage;
  final String time;
  final String noOfMessage;

  @override
  State<ChatItemView> createState() => StateChild();
}

class ChatItemViewState extends State<ChatItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Center(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.userImage),
                      maxRadius: 30,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.name,
                              style: TextStyle(
                                  color: Colors.grey[100],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  widget.lastMessage,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade500),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  '.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade500),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  widget.time,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    widget.noOfMessage == "0"
                        ? SizedBox.shrink()
                        : Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.green.shade400,
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                                child: Text(
                              widget.noOfMessage,
                              style: TextStyle(color: Colors.white),
                            )),
                          )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

main() async {
  return buildApp(
      appHome: ChatItemView(
              name: "Joan Louji",
              lastMessage: "Hey whats up",
              userImage:
                  "https://i.pinimg.com/originals/99/b1/2b/99b12b4652764ce926cd908ec1947842.jpg",
              time: "Now",
              noOfMessage: '3')
          .center());
}
