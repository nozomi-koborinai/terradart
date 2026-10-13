import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import 'validate_engine.dart';

void main() {
  Map<String, dynamic> stack(Map<String, String> sources) => {
    'terraform': {
      'required_providers': {
        for (final MapEntry(:key, :value) in sources.entries)
          key: {'source': value},
      },
    },
  };

  test('a provider the OpenTofu registry lacks picks terraform', () {
    expect(
      providersNotOnOpenTofu(
        stack({'appwrite': 'appwrite/appwrite', 'time': 'hashicorp/time'}),
      ),
      {'appwrite/appwrite'},
    );
    expect(
      providersNotOnOpenTofu(
        stack({'appwrite': 'registry.terraform.io/Appwrite/appwrite'}),
      ),
      {'appwrite/appwrite'},
    );
  });

  test('every other provider validates with OpenTofu', () {
    expect(
      providersNotOnOpenTofu(
        stack({
          'google': 'hashicorp/google',
          'cloudflare': 'cloudflare/cloudflare',
        }),
      ),
      isEmpty,
    );
    expect(providersNotOnOpenTofu({'resource': <String, dynamic>{}}), isEmpty);
  });

  test('every listed source is required by some quickstart', () {
    final required = <String>{};
    for (final dir in Directory('examples').listSync().whereType<Directory>()) {
      final main = File('${dir.path}/tf-out/main.tf.json');
      if (!main.existsSync()) continue;
      required.addAll(
        providersNotOnOpenTofu(
          jsonDecode(main.readAsStringSync()) as Map<String, dynamic>,
        ),
      );
    }
    if (required.isEmpty) {
      markTestSkipped('no quickstart synthesized (tf-out is gitignored)');
      return;
    }
    expect(required, kNotOnOpenTofuRegistry);
  });

  test('the CI Validate step runs kValidateLeg', () {
    final ci = File('.github/workflows/ci.yml').readAsStringSync();
    final step = RegExp(
      r'- name: Validate\n(?:.*\n)*?\s+run: \|\n((?:\s{10}.*\n)+)',
    ).firstMatch(ci);
    expect(step, isNotNull, reason: 'ci.yml has no Validate step');
    final commands = [
      for (final line in step![1]!.split('\n'))
        if (RegExp(r'^\s*"\$ENGINE" (.+)$').firstMatch(line) case final m?)
          if (m[1] != 'version') m[1]!.split(' '),
    ];
    expect(commands, kValidateLeg);
  });
}
