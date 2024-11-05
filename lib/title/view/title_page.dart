import 'package:crystal_ball/game/game.dart';
import 'package:crystal_ball/l10n/l10n.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key});

  //FlameAudio.bgm.initialize();
  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const TitlePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: TitleView()));
  }
}

class TitleView extends StatelessWidget {
  const TitleView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Center(
      child: SizedBox(
        width: 250,
        height: 64,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement<void, void>(GamePage.route());
          },
          child: Center(child: Text(l10n.titleButtonStart)),
        ),
      ),
    );
  }
}
