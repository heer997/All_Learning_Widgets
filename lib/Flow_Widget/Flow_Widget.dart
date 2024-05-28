import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flow Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const FlowWidgetPractice(),
    );
  }
}

class FlowWidgetPractice extends StatefulWidget {
  const FlowWidgetPractice({super.key});

  @override
  State<FlowWidgetPractice> createState() => _FlowWidgetPracticeState();
}

class _FlowWidgetPracticeState extends State<FlowWidgetPractice>
    with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastIconClicked = Icons.notifications;

  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu
  ];

  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Flow Widget"),
      body: Flow(
        delegate: FlowMenuDelegate(
          menuAnimation: menuAnimation,
        ),
        children: menuItems.map<Widget>(
          (IconData icon) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: FloatingActionButton(
                backgroundColor:
                    lastIconClicked == icon ? Colors.orangeAccent : Colors.grey,
                splashColor: Colors.orangeAccent,
                onPressed: () {
                  if (icon != Icons.menu) {
                    setState(
                      () {
                        lastIconClicked = icon;
                      },
                    );
                  }
                  menuAnimation.status == AnimationStatus.completed
                      ? menuAnimation.reverse()
                      : menuAnimation.forward();
                },
                child: Icon(icon),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  final Animation<double> menuAnimation;

  FlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(dx * menuAnimation.value, 0, 0),
      );
    }
  }
}
