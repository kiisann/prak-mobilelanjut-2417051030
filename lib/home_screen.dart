import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      )
    );

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.jpeg',
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Add your widgets here
                buildStatusBar(),

                buildClockSection(),

                const Spacer(),
                buildSearchBar(),
                const SizedBox(height: 52),

                buildAppGrid(),
                const SizedBox(height: 36),

                buildPageIndicator(),
                const SizedBox(height: 36),

                buildBottomApp(),
                const SizedBox(height: 36),
              ],
            )
          )
        ],
      ),
    );
  }

  Widget buildStatusBar() {
    const statusTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      shadows: [Shadow(blurRadius: 4, color: Colors.black38)],
    );

    const tinyTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontSize: 7,
      fontWeight: FontWeight.bold,
      shadows: [Shadow(blurRadius: 4, color: Colors.black38)],
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('09.48', style: statusTextStyle),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('4G', style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 9, fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [Shadow(blurRadius: 4, color: Colors.black38)],
              )),
              const SizedBox(width: 1),

              const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Vo', style: tinyTextStyle),
                  Text('LTE', style: tinyTextStyle),
                ],
              ),
              const SizedBox(width: 3),

              const Icon(Icons.signal_cellular_alt, size: 14, color: Colors.white, 
              shadows: [Shadow(blurRadius: 4, color: Colors.black38)]
              ),
              const SizedBox(width: 3),

              const Text('4G', style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 9, fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [Shadow(blurRadius: 4, color: Colors.black38)],
              )),
              const SizedBox(width: 3),

              const Icon(Icons.signal_cellular_alt, size: 14, color: Colors.white, 
              shadows: [Shadow(blurRadius: 4, color: Colors.black38)]
              ),
              const SizedBox(width: 4),

              const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('670', style: tinyTextStyle),
                  Text('B/s', style: tinyTextStyle),
                ],
              ),
              const SizedBox(width: 6),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Colors.white, width: 1.2),
                    ),

                    child: const Text(
                      '65', 
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 9, fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.1,
                        shadows: [Shadow(blurRadius: 4, color: Colors.black38)],
                      ),
                    ),
                  ),

                  Container(
                    width: 2,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(1),
                        bottomRight: Radius.circular(1),
                      ),
                      boxShadow: const [BoxShadow(blurRadius: 4, color: Colors.black38)
                      ],
                    ),
                  )
                ],
              )
            ]
          )
        ],
      )
    );
  }

  Widget buildClockSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '09.48',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.white,
              fontSize: 70,
              fontWeight: FontWeight.w200,
              letterSpacing: 2,
              height: 1.0,
              shadows: [
                Shadow(
                  blurRadius: 10, 
                  color: Colors.black.withValues(alpha: 0.3),
                  offset: const Offset(2, 2),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 2),
          Text(
            'Min, 11 Okt',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              shadows: [
                Shadow(
                  blurRadius: 4, 
                  color: Colors.black.withValues(alpha: 0.3),
                  offset: const Offset(1, 1),
                ),
              ],
            )
          )
        ],
      )
    );
  }

  Widget buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        child: Row(
          children: [
            const SizedBox(width: 16),

            Image.asset(
              'assets/images/google_logo.png',
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),

            const Spacer(),

            Icon(Icons.search, color: Colors.grey[600], size: 24),
            const SizedBox(width: 20),

            Icon(Icons.mic_none_rounded, color: Colors.grey[600], size: 24),
            const SizedBox(width: 20),

            Icon(Icons.camera_alt_outlined, color: Colors.grey[600], size: 24),
            const SizedBox(width: 16),

          ],
        )
      )
    );
  }

  Widget buildAppGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          buildAppIcon(
            imagePath: 'assets/images/play_store_logo.png',
            label: 'Play Store',
          ),

          buildAppIcon(
            icon: Icons.calculate_rounded,
            label: 'Calculator',
            bgColor: const Color(0xF5F5F5F5),
            iconColor: Colors.black,
          ),

          buildAppIcon(
            label: 'Kalender',
            customChild: buildCalenderIcon(),
          ),

          buildAppIcon(
            icon: Icons.settings_rounded,
            label: 'Pengaturan',
            bgColor: const Color(0xF5F5F5F5),
            iconColor: Colors.grey.shade800,
          )

        ],
      )
    );
  }

  Widget buildAppIcon({
    IconData? icon,
    String? imagePath,
    required String label,
    Color bgColor = Colors.white,
    Color iconColor = Colors.black,
    Widget? customChild,
  }) {
    return SizedBox(
      width: 76,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          customChild ?? 
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),

              child: imagePath != null
                ? Center(
                    child: Image.asset(
                      imagePath,
                      width: 28,
                      height: 28,
                      fit: BoxFit.contain,
                    ),
                  )
                  : (icon != null
                    ? Icon(icon, color: iconColor, size: 28)
                    : const SizedBox.shrink()
                  ),
            ),
          const SizedBox(height: 6),

          Text(
            label,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w500,
              shadows: [Shadow(blurRadius: 6, color: Colors.black.withValues(alpha: 0.5))],
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )  
        ],
        )
      );
  }

  Widget buildCalenderIcon() {
    return Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '11',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.green,
              fontSize: 22,
              fontWeight: FontWeight.w700,
              height: 1.1,
            ),
          ),
          Text(
            'SUNDAY',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: 8,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          )
        ],
      )
    );
  }

  Widget buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        final bool isActive = index == 0;
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: isActive ? 8 : 6,
          height: isActive ? 8 : 6,
          decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.white.withValues(alpha: 0.4),
            shape: BoxShape.circle,
            boxShadow: isActive
              ? [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.2),
                  blurRadius: 4,
                )
              ]
              : null,
          ),
          );
      })
    );
  }

  Widget buildBottomApp() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildBottomIcon(
            icon: Icons.phone, 
            bgColor: const Color(0xFF4CAF50),
            iconColor: Colors.white
          ),

          buildBottomIcon(
            icon: Icons.person, 
            bgColor: const Color(0xFF4CAF50),
            iconColor: Colors.white
          ),

          buildBottomIcon(
            icon: Icons.camera_alt, 
            bgColor: Colors.white,
            iconColor: const Color(0xFF424242)
          ),

          buildBottomIcon(
            icon: Icons.chat, 
            bgColor: Colors.white, 
            iconColor: const Color(0xFF64B5F6), 
            badgeCount: '99+'
          ),

        ],
        )
    );
  }

  Widget buildBottomIcon({
    required IconData icon,
    required Color bgColor,
    Color iconColor = Colors.white,
    String? badgeCount,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Icon(icon, color: iconColor, size: 28),
        ),

        if (badgeCount != null) 
          Positioned(
            top: -4,
            right: -10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: Text(
                badgeCount,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                ),
              )
            )
          )
      ]
    );
  }
  
}