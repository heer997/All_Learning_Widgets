import "package:flutter/material.dart";

class PageViewPractice extends StatelessWidget {
  PageViewPractice({super.key});

  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PageView Widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        controller: _pageController,
        children: [PageOne(), PageTwo(), PageThree()],
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.indigo,
      child: const Text(
        "Page 1",
        style: TextStyle(fontSize: 50.0, color: Colors.white),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: const Text(
        "Page 2",
        style: TextStyle(fontSize: 50.0, color: Colors.white),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.amber,
      child: const Text(
        "Page 3",
        style: TextStyle(fontSize: 50.0, color: Colors.white),
      ),
    );
  }
}
