import 'package:fluent_ui/fluent_ui.dart';

class KhLoadingView extends StatelessWidget {
  final String info;

  const KhLoadingView({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child:  Center(
                child: ProgressBar(),
                //LoadingAnimationWidget.staggeredDotsWave(color: Colors.white, size: 50,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
