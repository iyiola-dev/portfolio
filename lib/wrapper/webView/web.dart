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
        padding: EdgeInsets.all(0),
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
                      width: 300,
                      height: 700,
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
                                width: 50,
                              ),
                              Text(
                                "portfolio",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorDark),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                "Resume",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorDark),
                              ),
                              SizedBox(
                                width: 50,
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
                                  icon: model.isDark
                                      ? Icon(Icons.brightness_3)
                                      : Icon(CupertinoIcons.brightness),
                                  onPressed: () {
                                    model.toggleTheme();
                                  }),
                              SizedBox(
                                width: 50,
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
                            width: 70,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize: 34,
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
                                              fontSize: 30,
                                              color: Theme.of(context)
                                                  .primaryColor)),
                                    ),
                                    Text(
                                      " Mobile Developer",
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontSize: 30,
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
                                          fontSize: 30,
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
                            width: 150,
                          ),
                          Container(
                            height: 400,
                            width: 400,
                            child: Container(
                              padding: EdgeInsets.only(top: 20, right: 20),
                              child: Image.asset(
                                'images/profile.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
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
