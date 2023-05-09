import 'package:fluent_ui/fluent_ui.dart';

class FoodPlannerErrorView extends StatelessWidget {
  final String info;

  const FoodPlannerErrorView({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'View did not load',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                info,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
