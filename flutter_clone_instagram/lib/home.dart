import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/src/components/avatar_widget.dart';
import 'package:flutter_clone_instagram/src/components/image_data.dart';
import 'package:flutter_clone_instagram/src/components/post_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _myStory() {
    return Stack(
      children: [
        AvatarWidget(
          type: AvatarType.TYPE2,
          thumbPath:
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/59acf3d1-9e52-4ef0-bb6b-c2a1a7b3ec10/df9mgtm-4e1cf63b-2887-47bd-b104-e4def4756d0f.png/v1/fill/w_868,h_921/marceline__render__1__by_psychovert_df9mgtm-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NDM0NCIsInBhdGgiOiJcL2ZcLzU5YWNmM2QxLTllNTItNGVmMC1iYjZiLWMyYTFhN2IzZWMxMFwvZGY5bWd0bS00ZTFjZjYzYi0yODg3LTQ3YmQtYjEwNC1lNGRlZjQ3NTZkMGYucG5nIiwid2lkdGgiOiI8PTQwOTYifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.hSM34Jc4Bq4IiYyQDleWzpf3GgKQ9AZVEYvWk3ieZ6U',
          size: 70,
        ),
        Positioned(
          right: 5,
          bottom: 0,
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: const Center(
              child: Text('+', style: TextStyle(color: Colors.white, fontSize: 20,height: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        const SizedBox(
          width: 20,
        ),
        _myStory(),
        const SizedBox(
          width: 5,
        ),
        ...List.generate(
          100,
          (index) => AvatarWidget(
              type: AvatarType.TYPE1,
              thumbPath:
                  'https://static.wikia.nocookie.net/kirby/images/c/c6/Kirby_RtDDX.png/revision/latest?cb=20230726032205&path-prefix=en'),
        ),
      ]),
    );
  }

  Widget _postList(){
    return Column(
      children: List.generate(50, (index) => PostWidget()).toList(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ImageData(
          IconPath.logo,
          width: 270,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ImageData(
                IconPath.directMessage,
                width: 50,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          _storyBoardList(),
          _postList(),
        ],
      ),
    );
  }
}
