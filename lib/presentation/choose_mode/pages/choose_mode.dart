import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_with_flutter/common/basic_app_button.dart';
import 'package:spotify_with_flutter/core/configs/assets/app_images.dart';
import 'package:spotify_with_flutter/core/configs/assets/app_vectors.dart';
import 'package:spotify_with_flutter/core/configs/theme/app_color.dart';

class ChooseModePage extends StatefulWidget {
  const ChooseModePage({super.key});

  @override
  State<ChooseModePage> createState() => _ChooseModePageState();
}

class _ChooseModePageState extends State<ChooseModePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 50,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AppImages.chooseMadeBG,
                ),
              ),
            ),
            // child:
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                const Text(
                  'Choose Mode',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 87, sigmaY: 87),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.white.withOpacity(0),
                                  shape: BoxShape.circle,
                                ),
                                height: 73,
                                width: 73,
                                child: SvgPicture.asset(
                                  AppVectors.moon,
                                  fit: BoxFit.none,
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Dark Mode",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: AppColors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 87, sigmaY: 87),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white.withOpacity(0),
                                shape: BoxShape.circle,
                              ),
                              height: 73,
                              width: 73,
                              child: SvgPicture.asset(
                                AppVectors.sun,
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Light Mode",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: AppColors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ChooseModePage(),
                      ),
                    );
                  },
                  title: "Continue",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
