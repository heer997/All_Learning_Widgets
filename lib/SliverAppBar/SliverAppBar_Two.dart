import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/Assets/assets_images.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SliverAppBar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: SliverAppBarSecondTutorial(),
    );
  }
}

class SliverAppBarSecondTutorial extends StatefulWidget {
  SliverAppBarSecondTutorial({super.key});

  @override
  State<SliverAppBarSecondTutorial> createState() =>
      _SliverAppBarSecondTutorialState();
}

class _SliverAppBarSecondTutorialState
    extends State<SliverAppBarSecondTutorial> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController textController = TextEditingController();

  final List<String> _nameList = ["test"];

  Widget _buildNameField() {
    return TextFormField(
      controller: textController,
      decoration: const InputDecoration(labelText: "Name"),
      validator: (String? value) {
        if (value!.isNotEmpty) {
          return "";
        }
        return null;
      },
      onSaved: (String? value) {
        setState(
          () {
            _nameList.add(value!);
            textController.clear();
          },
        );
      },
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
  }

  Widget _buildListWidget(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 48.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print(_nameList.toString());

    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              pinned: true,
              title: const Text(
                "Coding with AppBar",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background:
                    Image.asset(AssetsProperty.lordhanuman, fit: BoxFit.cover),
              ),
            ),
            const CurrySliverHeader(Colors.purple, "Header 1"),
            const CurrySliverHeader(Colors.deepPurple, "Header 2"),
            SliverFixedExtentList(
              itemExtent: 100.0,
              delegate: SliverChildListDelegate(
                [
                  _buildListWidget(Colors.purple, "Curry"),
                  _buildListWidget(Colors.blue, "Rice"),
                  _buildListWidget(Colors.purple, "Pizza"),
                  _buildListWidget(Colors.blue, "Hamburger"),
                  _buildListWidget(Colors.purple, "Noodles"),
                  _buildListWidget(Colors.blue, "Eggs"),
                  _buildListWidget(Colors.purple, "Salad"),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: const EdgeInsets.all(24.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "Add Name",
                            style: TextStyle(fontSize: 22.0),
                          ),
                          _buildNameField(),
                          const SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: _submit,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.deepPurple,
                    child: Center(
                      child: Text(
                        _nameList[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  );
                },
                childCount: _nameList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurrySliverHeader extends StatelessWidget {
  final Color backgroundColor;
  final String headerTitle;

  const CurrySliverHeader(this.backgroundColor, this.headerTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: false,
      delegate: Delegate(backgroundColor, headerTitle),
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final String headerTitle;

  Delegate(this.backgroundColor, this.headerTitle);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Text(
          headerTitle,
          style: const TextStyle(color: Colors.white, fontSize: 36.0),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 150.0;

  @override
  double get minExtent => 60.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
