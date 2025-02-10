import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class Question {
  final String questionText;
  final List<Option> options;
  int selectedOptionIndex = -1;

  Question({required this.questionText, required this.options});
}

class Option {
  final String text;

  Option(this.text);
}

class QuestionSolvePage extends GetView<HomeController> {
  const QuestionSolvePage({super.key});

  @override
  Widget build(BuildContext context) {
    String currentTest = 'KPSS 2023';
    String currentSubject = 'Matematik';
    int currentQuestionIndex = 3;
    int totalQuestions = 10;

    Question question = Question(
      questionText:
          '$currentQuestionIndex. Aşağıdaki seçeneklerden hangisi doğru cevaptır?',
      options: [
        Option('A) Seçenek 1'),
        Option('B) Seçenek 2'),
        Option('C) Seçenek 3'),
        Option('D) Seçenek 4'),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('$currentTest - $currentSubject'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Soru $currentQuestionIndex / $totalQuestions',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                question.questionText,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20.h),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: question.options.length,
                itemBuilder: (context, index) {
                  return OptionTile(
                    optionText: question.options[index].text,
                    isSelected: question.selectedOptionIndex == index,
                    onSelected: () {
                      question.selectedOptionIndex = index;
                      (context as Element).markNeedsBuild();
                    },
                  );
                },
              ),
              SizedBox(height: 30.h),
              SizedBox(
                width: Get.size.width,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Doğru cevabı seçtiniz!'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                  ),
                  child: Text(
                    'Cevabı Kontrol Et',
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                      ),
                      child: Text(
                        'Önceki Soru',
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                      ),
                      child: Text(
                        'Sonraki Soru',
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  final String optionText;
  final bool isSelected;
  final VoidCallback onSelected;

  const OptionTile({
    required this.optionText,
    required this.isSelected,
    required this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).canvasColor.withOpacity(0.2)
              : Colors.grey.shade100,
          border: Border.all(
            color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children: [
            Icon(
              isSelected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                optionText,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
