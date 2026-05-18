/// KMS quickstart -- Phase 4.5 Wave 0 end-to-end example.
///
/// Defines a `CryptoStack` that provisions a KMS key ring (`main-ring`) in
/// `asia-northeast1`. CryptoKeys land in Wave 1; this Wave 0 example covers
/// the ring on its own.
///
/// Wave 5 Batch 3 extends the stack with a `payments` crypto key under
/// the ring plus a `roles/cloudkms.cryptoKeyEncrypter` binding on the key
/// for a workload SA -- the standard envelope-encryption setup where the
/// application wraps DEKs with this KEK at write time.
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/kms.dart';
import 'package:terradart_google/provider.dart';

class CryptoStack extends Stack {
  CryptoStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final ring = GoogleKmsKeyRing(
      localName: 'main',
      name: TfArg.literal('main-ring'),
      location: TfArg.literal('asia-northeast1'),
    );
    add(ring);

    // ---- Crypto key under the ring ----------------------------------------
    //
    // Wave 5 Batch 3 -- a symmetric `payments` key with a 90-day rotation
    // period. The key is the parent for the IAM binding below; deleting
    // the binding does not delete the key itself.

    final paymentsKey = GoogleKmsCryptoKey(
      localName: 'payments',
      name: TfArg.literal('payments'),
      keyRing: TfArg.ref(ring.id),
      purpose: TfArg.literal(KmsKeyPurpose.encryptDecrypt),
      rotationPeriod: TfArg.duration(const Duration(days: 90)),
      versionTemplate: const VersionTemplate(
        algorithm: 'GOOGLE_SYMMETRIC_ENCRYPTION',
        protectionLevel: KmsProtectionLevel.software,
      ),
    );
    add(paymentsKey);

    // ---- IAM: encrypter SA on the payments key ----------------------------
    //
    // The workload SA that wraps DEKs with this KEK. Pair with
    // `roles/cloudkms.cryptoKeyDecrypter` on a different SA if read and
    // write paths run as separate identities.

    final encrypter = GoogleServiceAccount(
      localName: 'payments_encrypter',
      accountId: TfArg.literal('payments-encrypter'),
      displayName: TfArg.literal('Payments KEK encrypter'),
    );
    add(encrypter);

    add(
      GoogleKmsCryptoKeyIamMember(
        localName: 'payments_encrypter_binding',
        cryptoKeyId: TfArg.ref(paymentsKey.id),
        role: TfArg.literal('roles/cloudkms.cryptoKeyEncrypter'),
        member: TfArg.ref(encrypter.member),
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
