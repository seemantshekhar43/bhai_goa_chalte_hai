import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: [
          DrawerHeader(
            child: Center(child: Text("Aur btao",style: TextStyle(fontSize: 20),)),
          ),
          DrawerListTile(
            title: "Bakchodi",
            svgSrc: "assets/icons/menu_dashbord.svg",

            press: () {},
          ),
          DrawerListTile(
            title: "TODO",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "OmicronKMKB",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Travel",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(

      onTap: press,
      horizontalTitleGap: 0.0,
      // leading: SvgPicture.asset(
      //   svgSrc,
      //   color: Colors.white54,
      //   height: 16,
      // ),
      title: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Text(
          title,
          style:TextStyle(fontFamily: "Montserrat-Bold"),
        ),
      ),
    );
  }
}