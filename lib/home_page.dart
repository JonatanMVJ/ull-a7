import 'package:flutter/material.dart';
import 'package:mazuca0382/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Sounds_Music",
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Color(0xff000000)),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelColor: Colors.white,
                  unselectedLabelColor: Color(0xffbea100),
                  tabs: [
                    TabItem(title: "Login", count: 6),
                    TabItem(title: "Categoria", count: 3),
                    TabItem(title: "Información", count: 1),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("pagina Login")),
            Center(child: Text("pagina Categoria")),
            Center(child: Text("pagina Información")),
          ],
        ),
      ),
    );
  }
}
