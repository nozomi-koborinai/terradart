/// KMS quickstart -- Phase 4.5 Wave 0 end-to-end example.
///
/// Defines a `CryptoStack` that provisions a KMS key ring (`main-ring`) in
/// `asia-northeast1`. CryptoKeys land in Wave 1; this Wave 0 example covers
/// the ring on its own.
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';

class CryptoStack extends Stack {
  CryptoStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    add(
      GoogleKmsKeyRing(
        localName: 'main',
        name: TfArg.literal('main-ring'),
        location: TfArg.literal('asia-northeast1'),
      ),
    );
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
