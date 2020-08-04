import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/apptheme.dart';
import 'package:portfolio/widgets/sizeConfig.dart';
import 'package:provider/provider.dart';

class Web extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var model = Provider.of<AppTheme>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28.0),
        color: Theme.of(context).backgroundColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: Row(
                      children: [
                        Text(
                          "Iyiola",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Theme.of(context).primaryColorDark,
                                  fontSize: 17)),
                        ),
                        Text(
                          ".Dev",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      FlatButton(onPressed: () {}, child: Text("portfolio")),
                      FlatButton(onPressed: () {}, child: Text("Resume")),
                      FlatButton(onPressed: () {}, child: Text("Contact Me")),
                      IconButton(
                          icon: Icon(Icons.brightness_high),
                          onPressed: () {
                            model.toggleTheme();
                          })
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: Config.yMargin(context, 30),
            ),
            Container(
              child: Padding(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "HI! \nI'M IYIOLA",
                              style: GoogleFonts.montserrat(),
                            ),
                            Text(
                              "I turn beautiful UI into interactive mobile apps",
                              style: GoogleFonts.montserrat(),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.github),
                                    onPressed: null),
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.github),
                                    onPressed: null),
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.github),
                                    onPressed: null),
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.github),
                                    onPressed: null),
                              ],
                            ),
                            FlatButton(
                                onPressed: () {}, child: Text("Contact Me!"))
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 400,
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          radius: 100,
                          child: Image.asset("images/profile.jpg"),
                        ),
                      )
                    ],
                  ),
                  padding: const EdgeInsets.all(16)),
            )
          ],
        ),
      ),
    );
  }
}
