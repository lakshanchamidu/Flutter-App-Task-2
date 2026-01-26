import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:task_2_new/Theme/colors.dart';
import 'package:task_2_new/Theme/text_style.dart';
import 'package:task_2_new/provider/list_provider.dart';
import 'package:task_2_new/views/widgets/list_button.dart';
import 'package:task_2_new/views/widgets/selctor_page_scroller.dart';

class SelectorPage extends StatefulWidget {
  const SelectorPage({super.key});

  @override
  State<SelectorPage> createState() => _SelectorPageState();
}

class _SelectorPageState extends State<SelectorPage> {
  final buttonColor1 = KColors.gradientlightPink;
  final buttonColor2 = KColors.gradientPink;
  
  @override
  Widget build(BuildContext context) {
    return Consumer<MoodListProvider>(
      builder: (context, moodProviderModel, child) => 
      Scaffold(
        backgroundColor: KColors.bgColor,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/selectorImage.png'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          context.go('/home');
                        },
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 24.48,
                          height: 24.48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(color: Colors.black, width: 1.5),
                          ),
                          child: const Icon(
                            Icons.arrow_back_outlined,
                            size: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {},
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 84,
                          height: 37,
                          padding: EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.black, width: 1.5),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Save",
                            
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 21),
            Text(
              "Select your\ntoday's mood",
              textAlign: TextAlign.center,
              style: KTextStyle.splashTitle,
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 77,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        HorizontalScroller(),
                        HorizontalScroller(),
                      ],
                    ),
                  ),
                  Container(
                    width: 2,
                    height: 110,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [KColors.yellowButton, KColors.gradientPink],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 37,
                child: ListView.builder(
                  itemCount: moodProviderModel.moods.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CustomButton(
                        text: moodProviderModel.moods[index],
                        gradientColor1: buttonColor1,
                        gradientColor2: buttonColor2,
                        isSelected: moodProviderModel.selectedIndex == index,
                        onPressed: () {
                          moodProviderModel.select(index);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
