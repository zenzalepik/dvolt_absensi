import 'package:dyvolt_employee/pages/work/work_order_detail_page.dart';
import 'package:dyvolt_employee/utils/colors.dart';
import 'package:dyvolt_employee/utils/fonts.dart';
import 'package:dyvolt_employee/utils/icons.dart';
import 'package:dyvolt_employee/widgets/appabr.dart';
import 'package:dyvolt_employee/widgets/card_activities.dart';
import 'package:dyvolt_employee/widgets/card_order.dart';
import 'package:dyvolt_employee/widgets/components/form_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 104,
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  // padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      // color: AppColors.whiteColor,
                      // borderRadius: BorderRadius.circular(16),
                      // boxShadow: const [
                      //   BoxShadow(
                      //     color: Color.fromRGBO(89, 27, 27, 0.05),
                      //     offset: Offset(0, 5),
                      //     blurRadius: 10,
                      //     spreadRadius: 0,
                      //   ),
                      // ],
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Expanded(
                          child: DropdownW(
                            labelText: 'July 2023',
                            items: ['Option 1', 'Option 2', 'Option 3'],
                            onChanged: (value) {
                              print('Selected option: $value');
                            },
                          ),
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: DropdownW(
                            labelText: 'Status',
                            items: ['Option 1', 'Option 2'],
                            onChanged: (value) {
                              print('Selected option: $value');
                            },
                          ),
                        )
                      ]),
                      SizedBox(
                        height: 12,
                      ),
                      SizedBox(height: 12),
                      CardOrderWidget(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      WorkOrderDetailPage()));
                        },
                      ),
                      SizedBox(height: 12),
                      CardOrderWidget(
                        onTap: () {},
                        bgColor: AppColors.bgGrey,
                        labelColor: AppColors.primaryColor,
                      ),
                      SizedBox(height: 12),
                      CardOrderWidget(
                        onTap: () {},
                        bgColor: AppColors.bgGreen,
                        labelColor: AppColors.labelSuccessColor,
                      ),
                      SizedBox(height: 12),
                      CardOrderWidget(
                        onTap: () {},
                        bgColor: AppColors.bgGrey,
                        labelColor: AppColors.labelInfoColor,
                      ),
                      SizedBox(height: 12),
                      CardOrderWidget(
                        onTap: () {},
                        bgColor: AppColors.bgGrey,
                        labelColor: AppColors.labelInfoColor,
                      ),
                      SizedBox(height: 12),
                      CardOrderWidget(
                        onTap: () {},
                      ),
                      SizedBox(height: 12),
                      CardOrderWidget(
                        onTap: () {},
                        bgColor: AppColors.bgGreen,
                        labelColor: AppColors.labelSuccessColor,
                      ),
                      SizedBox(height: 12),
                      CardOrderWidget(
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40 + 80)
              ],
            ),
          ),
          Positioned(top: 0, right: 0, left: 0, child: AppBarHello()),
        ],
      ),
    );
  }
}
