import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_project/Features/home/presentation/views/widgets/container_border.dart';
import 'package:mobile_project/constants.dart';
import 'package:mobile_project/core/utils/assets.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class ListeningAzkarMorningViewBody extends StatefulWidget {
  @override
  State<ListeningAzkarMorningViewBody> createState() =>
      _ListeningAzkarMorningViewBodyState();
}

final AssetsAudioPlayer _audioPlayer = AssetsAudioPlayer();
bool isPlaying = true;
double _volume = 0.5;
bool _isMuted = false;

class _ListeningAzkarMorningViewBodyState
    extends State<ListeningAzkarMorningViewBody> {
  @override
  void initState() {
    super.initState();
    _audioPlayer.open(
      Audio("assets/audio/azkar1.mp3"),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0).r,
      child: Column(
        children: [
          ContainerBorder(
            widget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsData.listenIcon,
                  width: 250.w,
                ),
                SizedBox(height: 40.h),
                CircleAvatar(
                  backgroundColor: kSecondaryColor,
                  radius: 40.r,
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        if (isPlaying) {
                          _audioPlayer.pause();
                        } else {
                          _audioPlayer.play();
                        }
                        setState(() => isPlaying = !isPlaying);
                      },
                      icon: isPlaying
                          ? Icon(
                              Icons.pause,
                              size: 48,
                              color: kWhiteColor,
                            )
                          : Icon(
                              Icons.play_arrow,
                              size: 48,
                              color: kWhiteColor,
                            ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.volume_off,
                          size: 32,
                          color: Colors.teal,
                        ),
                        onPressed: () {
                          setState(() {
                            _isMuted = !_isMuted;
                            _audioPlayer.setVolume(0.0);
                          });
                        },
                      ),
                      Expanded(
                        child: Slider(
                          activeColor: kSecondaryColor,
                          inactiveColor: kPrimaryColor,
                          value: _volume,
                          min: 0.0,
                          max: 1.0,
                          onChanged: (newVolume) {
                            setState(() {
                              _volume = newVolume;
                              _audioPlayer.setVolume(newVolume);
                            });
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.volume_up,
                          size: 32,
                          color: Colors.teal,
                        ),
                        onPressed: () {
                          setState(() {
                            _isMuted = !_isMuted;
                            _audioPlayer.setVolume(_volume);
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
