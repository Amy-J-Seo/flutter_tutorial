import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/src/components/avatar_widget.dart';
import 'package:flutter_clone_instagram/src/components/image_data.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
              type: AvatarType.TYPE3,
              nickname: 'Test',
              size: 40,
              thumbPath:
                  'https://static.wikia.nocookie.net/kirby/images/c/c6/Kirby_RtDDX.png/revision/latest?cb=20230726032205&path-prefix=en'),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconPath.postMoreIcon,
                width: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
        imageUrl:
            'https://i.natgeofe.com/n/bd48279e-be5a-4f28-9551-5cb917c6766e/GettyImages-103455489cropped.jpg');
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageData(
                IconPath.likeOffIcon,
                width: 65,
              ),
              SizedBox(
                width: 15,
              ),
              ImageData(
                IconPath.replyIcon,
                width: 60,
              ),
              SizedBox(
                width: 15,
              ),
              ImageData(
                IconPath.directMessage,
                width: 50,
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          ImageData(
            IconPath.bookMarkOffIcon,
            width: 50,
          )
        ],
      ),
    );
  }

  Widget _infoDescription() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Like 150',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          ExpandableText(
            'Content no.1\n Content no.1\nContent no.1\nContent no.1\nContent no.1\nContent no.1\nddddddd',
            prefixText: 'nickname goes here',
            onPrefixTap: () {
              print('move to the user page');
            },
            prefixStyle: TextStyle(fontWeight: FontWeight.bold),
            expandText: 'More',
            collapseText: 'Close',
            maxLines: 3,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            linkColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          'Comments 199, see all',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ),
    );
  }
  Widget _dateAgo() {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 15),
    child: Text('1 Day ago',
      style: TextStyle(color: Colors.grey, fontSize: 11),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          SizedBox(height: 15),
          _image(),
          SizedBox(height: 15),
          _infoCount(),
          SizedBox(height: 5),
          _infoDescription(),
          SizedBox(height: 5),
          _replyTextBtn(), SizedBox(height: 5),
          _dateAgo(),
        ],
      ),
    );
  }
}
