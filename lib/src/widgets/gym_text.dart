import 'package:flutter/material.dart';
import 'package:gym_ui/src/shared/app_colors.dart';
import 'package:gym_ui/src/shared/styles.dart';

class GymText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const GymText.title1(this.text, {Key? key})
      : style = title1Style,
        super(key: key);
  const GymText.title2(this.text, {Key? key})
      : style = title2Style,
        super(key: key);
  const GymText.title3(this.text, {Key? key})
      : style = title3Style,
        super(key: key);
  const GymText.headline(this.text, {Key? key})
      : style = headlineStyle,
        super(key: key);
  const GymText.subheadline(this.text, {Key? key})
      : style = subheadlineStyle,
        super(key: key);
  const GymText.bodybold(this.text, {Key? key})
      : style = bodyBoldStyle,
        super(key: key);
  const GymText.bodysmall(this.text, {Key? key})
      : style = bodySmallBoldStyle,
        super(key: key);
  const GymText.caption(this.text, {Key? key})
      : style = captionStyle,
        super(key: key);
  const GymText.buttonlarge(this.text, {Key? key})
      : style = buttonLargeStyle,
        super(key: key);
  const GymText.buttonmedium(this.text, {Key? key})
      : style = buttonMediumStyle,
        super(key: key);
  const GymText.buttonsmall(this.text, {Key? key})
      : style = buttonSmallStyle,
        super(key: key);
  const GymText.bodysmallbold(this.text, {Key? key})
      : style = bodySmallBoldStyle,
        super(key: key);

  GymText.body(this.text, {Key? key, Color color = kcMediumGreyColor})
      : style = bodyStyle.copyWith(color: color),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
