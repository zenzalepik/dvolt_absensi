
import 'package:blur/blur.dart';
import 'package:dyvolt_employee/pages/performa/performa_mekanik_content_page.dart';
import 'package:dyvolt_employee/utils/colors.dart';
import 'package:dyvolt_employee/utils/fonts.dart';
import 'package:dyvolt_employee/utils/icons.dart';
import 'package:dyvolt_employee/widgets/bottom_navigationbar.dart';
import 'package:dyvolt_employee/widgets/components/form_components.dart';
import 'package:flutter/material.dart';

class PerformaMekanikPage extends StatefulWidget {
  const PerformaMekanikPage({super.key});

  @override
  _PerformaMekanikPageState createState() => _PerformaMekanikPageState();
}

class _PerformaMekanikPageState extends State<PerformaMekanikPage> {
  ValueNotifier<bool> visible = ValueNotifier<bool>(false);

  int _selectedIndex = 0;
  int fabOpacity = 1;
  bool fabMenuOpacity = false;
  bool animateOpacity = false;
  bool fabMenuPresensiOpacity = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onTapFAB() {
    setState(() {
      fabOpacity = 0;
      fabMenuOpacity = true;
      animateOpacity = true;
    });
  }

  void _showFAB() {
    setState(() {
      fabOpacity = 1;
      fabMenuOpacity = false;
      animateOpacity = false;
      fabMenuPresensiOpacity = false;
    });
  }

  void _fabMenuPresensi() {
    setState(() {
      fabMenuOpacity = false;
      // animateOpacity = false;
      fabMenuPresensiOpacity = true;
    });
  }

  final List<Widget> _widgetOptions = [
    const PerformaMekanik(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Bottom Navigation Bar')),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                fabOpacity == 0
                    ? SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Blur(
                          blur: 20,
                          blurColor: AppColors.blackColor,
                          child: _widgetOptions.elementAt(_selectedIndex),
                        ),
                      )
                    : _widgetOptions.elementAt(_selectedIndex),
                AnimatedOpacity(
                  // If the widget is visible, animate to 0.0 (invisible).
                  // If the widget is hidden, animate to 1.0 (fully visible).
                  opacity: animateOpacity ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 500),
                  child: Visibility(
                    visible: fabMenuOpacity,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 38 + 44),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(30),
                                  margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextButtonCustom(
                                                labelText: 'Presensi Kehadiran',
                                                onPressed: () {
                                                  _fabMenuPresensi();
                                                }),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 40),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextButtonCustom(
                                              labelText: 'Perizinan kerja',
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 40),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextButtonCustom(
                                                labelText: 'Reimburs',
                                                onPressed: () {}),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 40),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextButtonCustom(
                                              labelText: 'Lembur',
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 38),
                          GestureDetector(
                            onTap: () {
                              _showFAB();
                            },
                            child: Container(
                              height: 52,
                              width: 52,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: AppColors.greyD9Color,
                                borderRadius: BorderRadius.circular(26),
                              ),
                              child: const SizedBox(
                                height: 32,
                                width: 32,
                                child: CustomIcon(
                                  iconName: 'icon_close',
                                  size: 32,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                AnimatedOpacity(
                  // If the widget is visible, animate to 0.0 (invisible).
                  // If the widget is hidden, animate to 1.0 (fully visible).
                  opacity: animateOpacity ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 500),
                  child: Visibility(
                    visible: fabMenuPresensiOpacity, //fabMenuPresensiOpacity
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 38 + 44),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 48),
                                  margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              color: AppColors.bgClick,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical:
                                                                      16.0),
                                                          child:
                                                              TextButtonCustom(
                                                            labelText:
                                                                'Check In',
                                                            onPressed: () {},
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 32,
                                                        width: 3,
                                                        color: AppColors
                                                            .whiteColor,
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical:
                                                                      16.0),
                                                          child:
                                                              TextButtonCustom(
                                                            labelText:
                                                                'Check Out',
                                                            onPressed: () {},
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      32, 20, 32, 0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text('Current o’clock',
                                                          style: TextStyles
                                                              .text12px600()),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('07 : 00 AM',
                                                          style: TextStyles
                                                              .textClock()),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                            'Jl. Parikesit Raya No.35, RT.08/RW.15, Bantarjati, Kec. Bogor Utara, Kota Bogor, Jawa Barat 16153',
                                                            style: TextStyles
                                                                .text12px400(
                                                                    color: AppColors
                                                                        .description)),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 22),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: ButtonMedium(
                                                          labelText: 'Check In',
                                                          onPressed: () {},
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 38),
                          GestureDetector(
                            onTap: () {
                              _showFAB();
                            },
                            child: Container(
                              height: 52,
                              width: 52,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: AppColors.greyD9Color,
                                borderRadius: BorderRadius.circular(26),
                              ),
                              child: const SizedBox(
                                height: 32,
                                width: 32,
                                child: CustomIcon(
                                  iconName: 'icon_close',
                                  size: 32,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   width: double.infinity,
          //   height: double.infinity,
          //   color: AppColors.blackColor,
          // ),
          const Positioned(
              bottom: 0, right: 0, left: 0, child: BottomNavigationWidget()),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Opacity(
        opacity: fabOpacity.toDouble(),
        child: Container(
          height: 44,
          width: 44,
          margin: const EdgeInsets.only(bottom: 28),
          child: FloatingActionButton(
            backgroundColor: AppColors.primaryColor,
            child: const Icon(Icons.add, color: AppColors.whiteColor, size: 32),
            onPressed: () {
              fabOpacity == 1 ? _onTapFAB() : _showFAB();
            },
          ),
        ),
      ),
    );
  }
}
