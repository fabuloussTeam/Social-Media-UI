import 'package:flutter/material.dart';
import 'package:flutter_social_ui/models/post_model.dart';
import 'package:flutter_social_ui/data/data.dart';

class PostsCarousel extends StatelessWidget {

  final PageController pageController;
  final String title;
  final List<Post> posts;

  PostsCarousel({this.pageController, this.title, this.posts});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: new Text(
              title,
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0
              )
          ),
        ),
        new Container(
          height: 400.0,
          child: PageView.builder(
            controller: pageController,
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index){
              return _buildPost(context, index);
            },
          )
        )
      ],
    );
  }


  _buildPost(BuildContext context, int index){
    Post post = posts[index];
    return Stack(
      children: <Widget>[
        new Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
               // color: Colors.red,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2), // je descent de 2 sur l'axe y
                      blurRadius: 6.0
                  )
                ]
            ),
            child: new ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                height: 400.0,
                width: 300.0,
                image: AssetImage(post.imageUrl),
                fit: BoxFit.cover
              ),
            ),
        ),
        new Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: new Container(
              padding: EdgeInsets.all(12.0),
              height: 110.0,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0)
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                      post.title + "jshsdhjshdjshjshdjshdjshdjsdhsjd",
                    style: new TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    post.location,
                    style: new TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(width: 6.0),
                          Text(
                             post.likes.toString(),
                             style: new TextStyle(
                               fontSize: 18.0,
                             ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.comment,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(width: 6.0),
                          Text(
                              post.comments.toString(),
                              style: new TextStyle(
                                fontSize: 18.0,
                              ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
        ),

      ],
    );
  }

}