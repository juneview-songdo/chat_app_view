import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../chat_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],

        elevation: 0,
        title: Row(
          children: [
            Text(
              'Messages',
              style: TextStyle(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              width: 7,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey[300],
            )
          ],
        ),
        actions: [
          Container(
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.search,
                color: Colors.grey[300],
              ))
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 16),
        // physics: NeverScrollableScrollPhysics(),
        children: [
          ChatItemView(
              name: "Joan Louji",
              lastMessage: "Hey whats up",
              userImage:
              "https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/0/0a/Nick_Fury_Textless_AoU_Poster.jpg/revision/latest/top-crop/width/360/height/360?cb=20161119163035",
              time: "Now",
              noOfMessage: '3'),
          ChatItemView(
              name: "Racheal",
              lastMessage: "How are you?",
              userImage:
              "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
              time: "3 hrs ago",
              noOfMessage: '1'),
          ChatItemView(
              name: "Louji",
              lastMessage: "I  am your bug fan",
              userImage:
              "https://ae01.alicdn.com/kf/HTB19Z8zMpXXXXaFaXXXq6xXFXXXf/Marvel-Avengers-Characters-Captain-America-Thor-Action-Figure-Figma-Models-Movie-Fan-Collection-Adult-Gift-Plastic.jpg",
              time: "08.23",
              noOfMessage: '2'),
          ChatItemView(
              name: "Shiny",
              lastMessage: "I want to learn flutter. ",
              userImage:
              "https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80",
              time: "yesterday",
              noOfMessage: '0'),
          ChatItemView(
              name: "Joshua",
              lastMessage: "Hey Joan, How do you do?",
              userImage:
                  "https://static2.srcdn.com/wordpress/wp-content/uploads/2019/08/Tony-Stark-and-Bruce-Banner-in-The-Avengers-1.jpg?q=50&fit=crop&w=960&h=500",
              time: "yesterday",
              noOfMessage: '0'),
          ChatItemView(
              name: "Tony",
              lastMessage: "Flutter Demo",
              userImage:
                  "https://img1.looper.com/img/gallery/the-avenger-who-could-have-singlehandedly-defeated-thanos/intro-1564425786.jpg",
              time: "yesterday",
              noOfMessage: '4'),
          ChatItemView(
              name: "Stark",
              lastMessage: "Love you",
              userImage:
                  "https://i.insider.com/57bf2e72b6fa0217008b4611?width=1100&format=jpeg&auto=webp",
              time: "08/01/2019",
              noOfMessage: '0'),
          ChatItemView(
              name: "Hias",
              lastMessage: "Hello What is your name",
              userImage:
                  "https://images.theconversation.com/files/120476/original/image-20160428-30950-6acgv9.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop",
              time: "08/01/2019",
              noOfMessage: '0'),
          ChatItemView(
              name: "Rion",
              lastMessage: "Job offer",
              userImage:
                  "https://i.insider.com/5dcecef7e94e86049649291a?width=1136&format=jpeg",
              time: "03/12/2019",
              noOfMessage: '0'),
          ChatItemView(
              name: "Louji",
              lastMessage: "Most Dislikes",
              userImage:
              "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
              time: "23/3/2019",
              noOfMessage: '7'),
          ChatItemView(
              name: "Rion Louji",
              lastMessage: "Trending Tweet",
              userImage:
                  "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp",
              time: "02/02/2012",
              noOfMessage: '0'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}
