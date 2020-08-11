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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).backgroundColor,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //the left flutter image

                    Image.asset(
                      'images/bg.png',
                      fit: BoxFit.contain,
                    ),
//the right flutter image
                    Container(
                      color: Theme.of(context).cardColor,
                      width: Config.xMargin(context, 21),
                      height: Config.yMargin(context, 100),
                    )
                    /*  Image.asset(
                      'images/rect.png',
                      fit: BoxFit.contain,
                    ) */
                  ],
                ),
              ),

              // the second container on top of the images
              Container(
                padding: const EdgeInsets.only(top: 28, left: 18, right: 16),
                //the big column for the body
                child: Column(
                  children: [
                    //the row for the first appBar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //the container for the first image
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'Iyiola',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Theme.of(context).primaryColorDark),
                              ),
                              Text(
                                '.dev',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Theme.of(context).primaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        //the container for the buttons
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                "Home",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorDark),
                              ),
                              SizedBox(
                                width: Config.xMargin(context, 4),
                              ),
                              Text(
                                "portfolio",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorDark),
                              ),
                              SizedBox(
                                width: Config.xMargin(context, 4),
                              ),
                              Text(
                                "Resume",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorDark),
                              ),
                              SizedBox(
                                width: Config.xMargin(context, 4),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: Config.xMargin(context, 8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          Config.xMargin(context, 8)),
                                      color: Theme.of(context).primaryColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Contact Me",
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .primaryColorLight),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                color: Theme.of(context).primaryColorDark,
                                  icon: model.isDark
                                      ? Icon(CupertinoIcons.brightness) // if dark, show a sun icon
                                      : Icon(Icons.brightness_3), // if light, show a moon icon
                                  onPressed: () {
                                    model.toggleTheme();
                                  }),
                              SizedBox(
                                width: Config.xMargin(context, 4),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          SizedBox(
                            width: Config.xMargin(context, 5.6),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: Config.textSize(context, 3),
                                          color:
                                              Theme.of(context).accentColor)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "I'm Iyiola,",
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontSize:
                                                  Config.textSize(context, 3),
                                              color: Theme.of(context)
                                                  .primaryColor)),
                                    ),
                                    Text(
                                      " Mobile Developer",
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontSize:
                                                  Config.textSize(context, 3),
                                              color: Theme.of(context)
                                                  .accentColor)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'I Turn Beautiful UI Into Mobile Apps',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: Config.textSize(context, 3),
                                          color: Theme.of(context)
                                              .primaryColorDark)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Theme.of(context).primaryColor),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Hire Me",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .primaryColorLight),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Config.xMargin(context, 4),
                          ),
                          Container(
                            height: Config.yMargin(context, 50),
                            width: Config.xMargin(context, 22),
                            color: Theme.of(context).cursorColor,
                            padding: EdgeInsets.only(bottom: 30, right: 10),
                            child: Container(
                              child: Image.asset(
                                'images/profile.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                FontAwesomeIcons.github,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Icon(
                                FontAwesomeIcons.twitter,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Icon(
                                FontAwesomeIcons.linkedin,
                                color: Theme.of(context).primaryColorDark,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
