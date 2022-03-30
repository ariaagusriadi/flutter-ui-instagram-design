import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          // appbar home
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Code write",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_box_outlined),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    ),
                  ],
                )
              ],
            ),
          ),

          // profile info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                // profile user
                Container(
                  width: 95,
                  height: 95,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.red,
                              Colors.amber,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      Container(
                        width: 87,
                        height: 87,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          image: DecorationImage(
                            image:
                                NetworkImage("https://picsum.photos/536/354"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      infoProfile(
                        title: "Post",
                        total: 50.toString(),
                      ),
                      infoProfile(
                        title: "Followers",
                        total: "15.K",
                      ),
                      infoProfile(
                        title: "Following",
                        total: 200.toString(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),

          // username
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Code Write",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 7,
          ),

          // info profile
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                  text:
                      "There are many variations of passages of Lorem Ipsum  available, but the majority have",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                  children: [
                    TextSpan(
                      text: " #hastag\n",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: " Link goes here",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ]),
            ),
          ),
          // button edit profile
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlineButton(
              onPressed: () {},
              child: Text("Edit Profile"),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          // stories
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 100,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          width: 71,
                          height: 71,
                          decoration: BoxDecoration(
                            color: Colors.grey[700],
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://picsum.photos/id/${index + 544}/500"),
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("Stroy ${index + 1}"),
                ],
              ),
            ),
          ),

          //  Row icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.grid_on),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person_pin_outlined),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // post
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            itemCount: 50,
            itemBuilder: (context, index) =>
                Image.network("https://picsum.photos/id/${2 + index}/500/500"),
          ),
        ],
      ),
    );
  }
}

class infoProfile extends StatelessWidget {
  const infoProfile({
    Key? key,
    required this.title,
    required this.total,
  }) : super(key: key);

  final String title;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          total,
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(title),
      ],
    );
  }
}
