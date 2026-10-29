import 'package:terradart_codegen/src/codegen/exactly_one_derivation.dart';
import 'package:terradart_codegen/src/codegen/hand_sealed_groups.dart';
import 'package:terradart_codegen/src/codegen/provider_enums.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/nested_block.dart';
import 'package:terradart_codegen/src/ir/provider_schema_ir.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

const _backendPrelude = '''
sealed class Backend {
  const Backend();
}

final class BackendCloudSql extends Backend {
  const BackendCloudSql({required this.database, required this.credential});
  final TfArg<String> database;
  final Credential credential;
  @override
  String get blockKey => 'cloud_sql';
  Map<String, Object?> toArgMap() => {
    'database': database.toTfJson(),
    'credential': [credential.toArgMap()],
  };
}

final class BackendAws extends Backend {
  const BackendAws({required this.role});
  final TfArg<String> role;
  @override
  String get blockKey => 'aws';
  Map<String, Object?> toArgMap() => {'role': role.toTfJson()};
}

class Credential {
  const Credential({required this.username, required this.password});
  final TfArg<String> username;
  final Password password;
  Map<String, Object?> toArgMap() => {
    'username': username.toTfJson(),
    ...password.encode(),
  };
}

sealed class Password {
  const Password();
}

final class PlaintextPassword extends Password {
  const PlaintextPassword(this.password);
  final TfArg<String> password;
  @override
  String get blockKey => 'password';
  Map<String, Object?> encode() => {'password': password.toTfJson()};
}

final class WriteOnlyPassword extends Password {
  const WriteOnlyPassword({required this.passwordWo, this.passwordWoVersion});
  final TfArg<String> passwordWo;
  final TfArg<String>? passwordWoVersion;
  @override
  String get blockKey => 'password_wo';
  Map<String, Object?> encode() => {
    'password_wo': passwordWo.toTfJson(),
    'password_wo_version': ?passwordWoVersion?.toTfJson(),
  };
}
''';

const _backendSlot = CustomSlot(
  paramDeclaration: 'required Backend backend',
  argMapEntry: 'backend.blockKey: TfArg.literal([backend.toArgMap()]),',
);

const _connection = WrapperOverride(
  outputDir: 'bigquery',
  deriveExactlyOne: true,
  paramOrder: ['name', 'backend'],
  customSlots: {'backend': _backendSlot},
  prelude: _backendPrelude,
);

Attribute _optional(String name) => Attribute(
  name: name,
  type: const StringType(),
  constraints: const Constraints(optional: true),
);

NestedBlockDef _block(String name, {List<NestedBlockDef> nested = const []}) =>
    NestedBlockDef(
      name: name,
      nesting: NestingMode.list,
      maxItems: 1,
      constraints: const Constraints(optional: true),
      block: BlockDef(attributes: const [], nestedBlocks: nested),
    );

final _connectionDef = ResourceDef(
  terraformType: 'google_connection',
  root: BlockDef(
    attributes: [_optional('name')],
    nestedBlocks: [
      _block('cloud_sql', nested: [_block('credential')]),
      _block('aws'),
    ],
  ),
);

({List<String> skipped, List<String> skippedAtMostOne}) _derive(
  WrapperOverride override, {
  Map<String, List<List<String>>> exactlyOne = const {},
}) {
  final derived = deriveExactlyOneSlots(
    LoadedOverrides(
      resources: {'google_connection': override},
      dataSources: const {},
    ),
    ProviderSchemaIR(
      providerName: 'google',
      providerSource: 'hashicorp/google',
      providerVersion: '1.0.0',
      resources: {'google_connection': _connectionDef},
      dataSources: const {},
    ),
    providerEnums: ProviderEnums.on(
      resources: KindHints(exactlyOne: exactlyOne),
    ),
    rawSchemas: (resources: const {}, dataSources: const {}),
  );
  return (skipped: derived.skipped, skippedAtMostOne: derived.skippedAtMostOne);
}

List<String> _render(List<HandSealedGroup> groups) => [
  for (final g in groups) '${g.path} ${(g.keys.toList()..sort())}',
];

void main() {
  test('a sealed slot and the sealed fields of its helpers are read', () {
    expect(_render(handSealedGroups(_connection)), [
      ' [aws, cloud_sql]',
      'cloud_sql.credential [password, password_wo]',
    ]);
  });

  test('a spread slot seals at the resource root', () {
    const o = WrapperOverride(
      outputDir: 'x',
      customSlots: {
        'password': CustomSlot(
          paramDeclaration: 'required Password password',
          argMapEntry: '...password.argMap,',
        ),
      },
      prelude: _backendPrelude,
    );
    expect(_render(handSealedGroups(o)), [' [password, password_wo]']);
  });

  test('a slot without a prelude seals nothing', () {
    const o = WrapperOverride(
      outputDir: 'x',
      customSlots: {'backend': _backendSlot},
    );
    expect(handSealedGroups(o), isEmpty);
  });

  test('a group a hand-written sealed slot covers is not reported', () {
    final derived = _derive(
      _connection,
      exactlyOne: {
        'google_connection': [
          ['aws', 'cloud_sql'],
          ['cloud_sql.credential.password', 'cloud_sql.credential.password_wo'],
        ],
      },
    );
    expect(derived.skipped, isEmpty);
  });

  test('a group the sealed slot does not cover is still reported', () {
    final derived = _derive(
      _connection,
      exactlyOne: {
        'google_connection': [
          ['aws', 'cloud_sql', 'spark'],
          ['cloud_sql.credential.password', 'cloud_sql.credential.token'],
        ],
      },
    );
    expect(derived.skipped, [
      'google_connection [aws, cloud_sql, spark]: aws is not a constructor '
          'input',
      'google_connection cloud_sql.credential [password, token]: the block '
          'has no typed helper',
    ]);
  });

  test('a member the constructor still takes keeps the group unsealed', () {
    final derived = _derive(
      const WrapperOverride(
        outputDir: 'bigquery',
        deriveExactlyOne: true,
        paramOrder: ['name', 'backend', 'aws'],
        customSlots: {'backend': _backendSlot},
        prelude: _backendPrelude,
      ),
      exactlyOne: {
        'google_connection': [
          ['aws', 'cloud_sql'],
        ],
      },
    );
    expect(derived.skipped, [
      startsWith('google_connection [aws, cloud_sql]: '),
    ]);
  });

  test('the committed Google prelude seals cover their groups', () {
    const groups = {
      'google_compute_firewall': ['allow', 'deny'],
      'google_compute_health_check': [
        'grpc_health_check',
        'grpc_tls_health_check',
        'http2_health_check',
        'http_health_check',
        'https_health_check',
        'ssl_health_check',
        'tcp_health_check',
      ],
      'google_compute_route': [
        'next_hop_gateway',
        'next_hop_ilb',
        'next_hop_instance',
        'next_hop_ip',
        'next_hop_vpn_tunnel',
      ],
    };
    for (final MapEntry(key: type, value: members) in groups.entries) {
      final o = loadWrapperOverrides(
        rootDir: 'lib/src/codegen/wrapper_overrides/yaml',
        only: type,
      ).resources[type]!;
      expect(
        coversGroup(handSealedGroups(o), '', members),
        isTrue,
        reason: type,
      );
    }
  });
}
