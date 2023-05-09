import 'package:flutter/material.dart';

class CustomSegmentController extends StatefulWidget {
  final List<String> titles;
  final ValueChanged<int> onChange;
  const CustomSegmentController({
    Key? key,
    required this.titles,
    required this.onChange,
  }) : super(key: key);

  @override
  State<CustomSegmentController> createState() =>
      _CustomSegmentControllerState();
}

class _CustomSegmentControllerState extends State<CustomSegmentController> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          widget.titles.length,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  widget.onChange(currentIndex);
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: currentIndex == index ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    widget.titles[index],
                    style: TextStyle(
                        color:
                            currentIndex == index ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
