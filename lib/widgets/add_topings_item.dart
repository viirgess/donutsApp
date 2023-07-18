import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';

class AddToppingsItem extends StatefulWidget {
  const AddToppingsItem({super.key});

  @override
  State<AddToppingsItem> createState() => _AddToppingsItemState();
}

class _AddToppingsItemState extends State<AddToppingsItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorSourceApp.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       // mainAxisAlignment: MainAxisAlignment.start,

        children: [
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
            child: Text(
              'ADD TOPPINGS',
              style: TextStyleApp.height24.copyWith(
                color: ColorSourceApp.black,
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                ),
                Text(
                  'Sprinkles',
                  style: TextStyleApp.lato.copyWith(
                    color: ColorSourceApp.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const Spacer(),
                const Text('+ \$3.99'),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                ),
                Text(
                  'Chocolate chips',
                  style: TextStyleApp.lato.copyWith(
                    color: ColorSourceApp.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const Spacer(),
                const Text('+ \$2.99'),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                ),
                Text(
                  'Crushed nuts',
                  style: TextStyleApp.lato.copyWith(
                    color: ColorSourceApp.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const Spacer(),
                const Text('+ \$5.49'),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                ),
                Text(
                  'Fruity drizzles',
                  style: TextStyleApp.lato.copyWith(
                    color: ColorSourceApp.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const Spacer(),
                const Text('+ \$6.50'),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                ),
                Text(
                  'Coconut flakes',
                  style: TextStyleApp.lato.copyWith(
                    color: ColorSourceApp.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const Spacer(),
                const Text('+ \$1.99'),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
