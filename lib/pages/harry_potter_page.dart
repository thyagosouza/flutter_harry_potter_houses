import 'package:flutter/material.dart';
import 'package:harry_potter_houses_starting/core/core.dart';
import 'package:harry_potter_houses_starting/helper.dart';
import 'package:harry_potter_houses_starting/pages/splash_page.dart';

class HarryPotterPage extends StatefulWidget {
  _HarryPotterPageState createState() => _HarryPotterPageState();
}

class _HarryPotterPageState extends State<HarryPotterPage> {
  //VideoPlayerController _videoPlayerController;

  //!não é mais usado
  //Helper helper = Helper();
  var helper = Helper();

  @override
  void initState() {
    helper.getQuestionNumber();

    super.initState();
  }

  @override
  void dispose() {
    //  _videoPlayerController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                // height: _videoPlayerController?.value?.size?.height ?? 0,
                // width: _videoPlayerController?.value?.size?.height ?? 0,
                child: Container(),
                //VideoPlayer(_videoPlayerController),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/harrypotter_${helper.getQuestionNumber()}.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
            constraints: BoxConstraints.expand(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: Expanded(
                      flex: helper.getFlexTotal(),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: helper.colorBackgroundQuestion(),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                width: 2,
                                color: AppColors.backCorvinalBorder,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                helper.getQuestion(),
                                textAlign: TextAlign.center,
                                style: AppTextStyles.questionText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: helper.getFlexButton(),
                    child: ChoiceButtonWidget(
                      backgroundColor: helper.getBackgroundColor(),
                      label: helper.getChoice1(),
                      onPressed: () {
                        setState(() {
                          helper.getQuestionNumber();
                          helper.nextQuestion(1);
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Visibility(
                      visible: helper.buttonShouldBeVisible(),
                      child: ChoiceButtonWidget(
                        backgroundColor: AppColors.purple,
                        label: helper.getChoice2(),
                        onPressed: () {
                          setState(() {
                            helper.getQuestionNumber();
                            helper.nextQuestion(2);
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
