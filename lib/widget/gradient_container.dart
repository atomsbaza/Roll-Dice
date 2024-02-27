import 'package:flutter/material.dart';
import 'package:roll_dice/widget/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

/* 1st method use List */
// class GradientContainer extends StatelessWidget {
//   final List<Color> colors;

//   const GradientContainer(this.colors, {Key? key}) : super(key: key);

//   const GradientContainer.purpleRed({Key? key})
//       : colors = [Colors.purple, Colors.red],
//         super(key: key);

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(
//         child: Image.asset('assets/images/dice-2.png'),
//       ),
//     );
//   }
// }

/* 2nd method */
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  const GradientContainer.purpleRed({super.key})
      : color1 = Colors.purple,
        color2 = Colors.red;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
