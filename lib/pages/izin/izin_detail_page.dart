import 'package:blur/blur.dart';
import 'package:dyvolt_employee/utils/colors.dart';
import 'package:dyvolt_employee/utils/fonts.dart';
import 'package:dyvolt_employee/utils/icons.dart';
import 'package:dyvolt_employee/widgets/appabr.dart';
import 'package:dyvolt_employee/widgets/bottom_navigationbar.dart';
import 'package:dyvolt_employee/widgets/components/form_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IzinDetailContent extends StatelessWidget {
  const IzinDetailContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 104 + 36 + 9 - 104 + 32,
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                // padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
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
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: AppColors.bgCardDetail,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Stack(children: [
                                  SvgPicture.asset(
                                      'assets/images/img_ornament_splash_1.svg'),
                                  Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                'assets/icons/icon_detail_presensi.svg',
                                                height: 22,
                                                width: 22),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text('Detail Izin Kerja',
                                                style: TextStyles.text16px700())
                                          ],
                                        ),
                                        SizedBox(
                                          height: 23,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text('Tipe Izin',
                                                    style:
                                                        TextStyles.text12px600(
                                                            color: AppColors
                                                                .blackColor))),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          13, 4, 0, 0),
                                                  child: Text('Izin Sakit',
                                                      style: TextStyles
                                                          .text10px400())),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 18),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text('Tanggal Izin',
                                                    style:
                                                        TextStyles.text12px600(
                                                            color: AppColors
                                                                .blackColor))),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          13, 4, 0, 0),
                                                  child: Text('July 12, 2023',
                                                      style: TextStyles
                                                          .text10px400())),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 18),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text('Alasan Izin',
                                                    style:
                                                        TextStyles.text12px600(
                                                            color: AppColors
                                                                .blackColor))),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          13, 4, 0, 0),
                                                  child: Text(
                                                      'Izin Sakit Demam',
                                                      style: TextStyles
                                                          .text10px400())),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 18),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                                    'Nomor Yang Bisa Dihubungi',
                                                    style:
                                                        TextStyles.text12px600(
                                                            color: AppColors
                                                                .blackColor))),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          13, 4, 0, 0),
                                                  child: Text(
                                                      '+628 172 312 3246',
                                                      style: TextStyles
                                                          .text10px400())),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 18),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text('Lampiran',
                                                    style:
                                                        TextStyles.text12px600(
                                                            color: AppColors
                                                                .blackColor))),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        13, 4, 0, 0),
                                                child: Image.asset(
                                                    'assets/images/izin/sakit/img_izin_sakit_1.png',
                                                    fit: BoxFit.cover),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // SizedBox(height: 18),
                                      ],
                                    ),
                                  )
                                ]))),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: AppBarBack(
            labelText: 'Izin Kerja',
            onBack: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}

class IzinDetail extends StatefulWidget {
  const IzinDetail({super.key});

  @override
  _IzinDetailState createState() => _IzinDetailState();
}

class _IzinDetailState extends State<IzinDetail> {
  ValueNotifier<bool> visible = ValueNotifier<bool>(false);

  int _selectedIndex = 0;
  int fabOpacity = 1;
  bool fabMenuOpacity = false;
  bool animateOpacity = false;
  bool fabMenuIzinOpacity = false;

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
      fabMenuIzinOpacity = false;
    });
  }

  void _fabMenuPresensi() {
    setState(() {
      fabMenuOpacity = false;
      // animateOpacity = false;
      fabMenuIzinOpacity = true;
    });
  }

  final List<Widget> _widgetOptions = [
    const IzinDetailContent(),
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
                                  margin:
                                      const EdgeInsets.fromLTRB(24, 0, 24, 0),
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
                    visible: fabMenuIzinOpacity, //fabMenuIzinOpacity
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
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 48),
                                  margin:
                                      const EdgeInsets.fromLTRB(24, 0, 24, 0),
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
