import 'package:flutter/material.dart';

class CodeResumeLoadingView extends StatelessWidget {
  final String info;

  const CodeResumeLoadingView({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Center(
              child: CircularProgressIndicator(),
              //LoadingAnimationWidget.staggeredDotsWave(color: Colors.white, size: 50,),
            ),
          ),
        ],
      ),
    );
  }
}
