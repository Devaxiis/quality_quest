import '../../../../library.dart';

class CategoryButtonView extends StatelessWidget {
  final String name;
  final Function onTap;
  final Color? color;

  const CategoryButtonView(
      {super.key, required this.name, required this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color ?? CustomColors.oxFFFFFFFF,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          border: Border.all(
            color: CustomColors.oxFF6949FF,
            width: 2,
          ),
        ),
        child: Text(
          name,
          style: TextStyle(
            color: color != null
                ? CustomColors.oxFFFFFFFF
                : CustomColors.oxFF6949FF,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
