#!/usr/bin/env dart
// Generates examples/cloudflare_leftover_quickstart/lib/main.dart — one
// constructor call per leftover Cloudflare factory (resource or data source).
// Dummy values satisfy Dart types so synth + terraform validate can cover
// the filled catalog. Live apply is out of scope.
//
// Regenerates from generated wrappers; do not hand-edit main.dart.

import 'dart:io';

const _skipResourceTypes = {
  'cloudflare_zone',
  'cloudflare_dns_record',
  // Leftover dummy values cannot satisfy these provider enums / nested
  // schemas; listed in tool/example_debt.yaml with a reason.
  'cloudflare_snippet',
  'cloudflare_access_rule',
  'cloudflare_certificate_pack',
  'cloudflare_firewall_rule',
  'cloudflare_oauth_client',
  'cloudflare_r2_bucket_event_notification',
  'cloudflare_rate_limit',
  'cloudflare_schema_validation_schemas',
  'cloudflare_share',
  'cloudflare_share_resource',
  'cloudflare_user_agent_blocking_rule',
  'cloudflare_vulnerability_scanner_credential',
  'cloudflare_waiting_room_rules',
  'cloudflare_workers_deployment',
  'cloudflare_workers_script',
  'cloudflare_zero_trust_access_identity_provider',
  'cloudflare_zero_trust_risk_behavior',
  'cloudflare_zone_lockdown',
};

const _skipDataTypes = {
  'cloudflare_account',
  'cloudflare_firewall_rule',
  'cloudflare_zone',
};

const _srcRoot = 'packages/terradart_cloudflare/lib/src';
const _outPath = 'examples/cloudflare_leftover_quickstart/lib/main.dart';

/// Terraform variable backing every sensitive leaf in the generated
/// stack. Declared by the generator so the reference resolves at synth.
const _secretVar = 'leftover_secret';
const _secretVarRef = "TfArg.variable('$_secretVar')";

void main() {
  final files = Directory(_srcRoot)
      .listSync(recursive: true)
      .whereType<File>()
      .where(
        (f) =>
            f.path.endsWith('.dart') &&
            !f.path.endsWith('_catalog.g.dart') &&
            !f.path.endsWith('catalog_entry.dart'),
      )
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  final parsedFiles = <String, _ParsedFile>{};
  for (final file in files) {
    parsedFiles[file.path] = _parseFile(file);
  }

  final helpers = <String, _ClassInfo>{};
  final factories = <_Factory>[];
  for (final parsed in parsedFiles.values) {
    for (final cls in parsed.classes.values) {
      if (cls.kind == _Kind.helper) {
        helpers[cls.name] = cls;
      } else if (cls.kind == _Kind.resource || cls.kind == _Kind.data) {
        if (cls.tfType == null) continue;
        if (cls.kind == _Kind.resource &&
            _skipResourceTypes.contains(cls.tfType)) {
          continue;
        }
        if (cls.kind == _Kind.data && _skipDataTypes.contains(cls.tfType)) {
          continue;
        }
        factories.add(
          _Factory(
            type: cls.tfType!,
            className: cls.name,
            kind: cls.kind,
            requiredParams: cls.requiredParams,
            optionalParams: cls.optionalParams,
            filePath: parsed.path,
            sensitiveLeaves: parsed.sensitiveLeaves,
          ),
        );
      }
    }
  }
  factories.sort((a, b) {
    final k = a.kind.index.compareTo(b.kind.index);
    if (k != 0) return k;
    return a.type.compareTo(b.type);
  });

  final usedLocals = <String>{};
  final buf = StringBuffer()
    ..writeln(
      '// GENERATED — dart run tool/generate_cloudflare_leftover_example.dart',
    )
    ..writeln('// ignore_for_file: unused_element')
    ..writeln()
    ..writeln(
      '/// Coverage stack for leftover Cloudflare factories at pin 5.23.0.',
    )
    ..writeln('/// Dummy constructor values; synth + terraform validate only.')
    ..writeln('/// Never apply.')
    ..writeln('library;')
    ..writeln()
    ..writeln(
      "import 'package:terradart_cloudflare/terradart_cloudflare.dart';",
    )
    ..writeln("import 'package:terradart_core/terradart_core.dart';")
    ..writeln()
    ..writeln('final class CloudflareLeftoverStack extends Stack {')
    ..writeln('  CloudflareLeftoverStack()')
    ..writeln('      : super(providers: [const CloudflareProvider()]) {')
    ..writeln("    const leftover = 'leftover';")
    ..writeln(
      "    const accountId = '00000000000000000000000000000001';",
    )
    ..writeln(
      "    const zoneId = '00000000000000000000000000000002';",
    )
    ..writeln();

  // Body first: the preamble can only decide whether to declare the
  // secret variable once it knows a factory actually referenced it.
  final body = StringBuffer();
  for (final f in factories) {
    final local = _uniqueLocal(f.type, f.kind, usedLocals);
    final method = f.kind == _Kind.data ? 'addData' : 'add';
    body.writeln('    $method(');
    body.writeln('      ${f.className}(');
    body.writeln("        localName: '$local',");
    for (final p in f.requiredParams) {
      body.writeln(
        '        ${p.name}: ${_dummy(p, helpers, sensitive: f.sensitiveLeaves, depth: 0, owner: f.className)},',
      );
    }
    for (final extra in _extras(f, helpers)) {
      body.writeln('        ${extra.name}: ${extra.value},');
    }
    body.writeln('      ),');
    body.writeln('    );');
    body.writeln();
  }

  // Sensitive leaves render as a TfArg.variable reference, and synth
  // rejects a reference with no matching declaration — so the declaration
  // is generated too, not hand-added to this generated file.
  if (body.toString().contains(_secretVarRef)) {
    buf.writeln('    addVariable(');
    buf.writeln("      '$_secretVar',");
    buf.writeln("      const TfVariable(type: 'string', sensitive: true),");
    buf.writeln('    );');
    buf.writeln();
  }
  buf.write(body);

  buf.writeln('  }');
  buf.writeln('}');

  File(_outPath)
    ..createSync(recursive: true)
    ..writeAsStringSync(buf.toString());
  final fmt = Process.runSync('dart', ['format', _outPath]);
  if (fmt.exitCode != 0) {
    stderr.writeln('dart format failed on $_outPath:\n${fmt.stderr}');
    exit(fmt.exitCode);
  }
  stdout.writeln(
    'Wrote leftover example: ${factories.length} factories '
    '(${factories.where((f) => f.kind == _Kind.resource).length} resources + '
    '${factories.where((f) => f.kind == _Kind.data).length} data)',
  );
}

enum _Kind { resource, data, helper }

class _Factory {
  _Factory({
    required this.type,
    required this.className,
    required this.kind,
    required this.requiredParams,
    required this.optionalParams,
    required this.filePath,
    required this.sensitiveLeaves,
  });
  final String type;
  final String className;
  final _Kind kind;
  final List<_Param> requiredParams;
  final List<_Param> optionalParams;
  final String filePath;
  final Set<String> sensitiveLeaves;
}

class _Param {
  _Param(this.name, this.type);
  final String name;
  final String type;
}

class _ClassInfo {
  _ClassInfo({
    required this.name,
    required this.kind,
    required this.tfType,
    required this.requiredParams,
    required this.optionalParams,
    required this.fields,
  });
  final String name;
  final _Kind kind;
  final String? tfType;
  final List<_Param> requiredParams;
  final List<_Param> optionalParams;
  final Map<String, String> fields;
}

class _ParsedFile {
  _ParsedFile(this.path, this.classes, this.sensitiveLeaves);
  final String path;
  final Map<String, _ClassInfo> classes;
  final Set<String> sensitiveLeaves;
}

Set<String> _parseSensitiveLeaves(String src) {
  final out = <String>{};
  for (final m in RegExp(
    r'Sensitive\s*=\s*<String>\{([^}]*)\}',
  ).allMatches(src)) {
    for (final q in RegExp(r"'([^']+)'").allMatches(m.group(1)!)) {
      final path = q.group(1)!;
      out.add(path);
      out.add(path.split('.').last);
    }
  }
  return out;
}

_ParsedFile _parseFile(File file) {
  final src = file.readAsStringSync();
  final classes = <String, _ClassInfo>{};
  final classRe = RegExp(r'final class (\w+)(?:\s+extends (\w+))?');
  for (final m in classRe.allMatches(src)) {
    final name = m.group(1)!;
    final ext = m.group(2);
    final brace = src.indexOf('{', m.end);
    if (brace < 0) continue;
    final end = _matchBrace(src, brace);
    if (end < 0) continue;
    final body = src.substring(brace, end + 1);
    final kind = switch (ext) {
      'Resource' => _Kind.resource,
      'Data' => _Kind.data,
      _ => _Kind.helper,
    };
    final fields = _parseFields(body);
    final parsedCtor = _parseCtor(name, body, fields);
    classes[name] = _ClassInfo(
      name: name,
      kind: kind,
      tfType: _parseTfType(body),
      requiredParams: parsedCtor.required,
      optionalParams: parsedCtor.optional,
      fields: fields,
    );
  }
  return _ParsedFile(file.path, classes, _parseSensitiveLeaves(src));
}

String? _parseTfType(String body) {
  final oneLine = RegExp(
    r"static const String tfType = '([^']+)'",
  ).firstMatch(body);
  if (oneLine != null) return oneLine.group(1);
  final split = RegExp(
    r"static const String tfType =\s*'([^']+)'",
  ).firstMatch(body);
  return split?.group(1);
}

Map<String, String> _parseFields(String body) {
  final out = <String, String>{};
  for (final m in RegExp(r'final\s+(.+?)\s+(\w+);').allMatches(body)) {
    out[m.group(2)!] = m.group(1)!.trim();
  }
  return out;
}

({List<_Param> required, List<_Param> optional}) _parseCtor(
  String className,
  String body,
  Map<String, String> fields,
) {
  final needle = '$className({';
  final start = body.indexOf(needle);
  if (start < 0) return (required: const [], optional: const []);
  final open = start + needle.length - 1;
  final close = _matchBrace(body, open);
  if (close < 0) return (required: const [], optional: const []);
  final paramsSrc = body.substring(open + 1, close);
  final required = <_Param>[];
  final optional = <_Param>[];
  for (final raw in _splitTopLevel(paramsSrc, ',')) {
    final t = raw.trim().replaceAll(RegExp(r'\s+'), ' ');
    if (t.isEmpty) continue;
    if (t.contains('super.')) continue;
    if (t.startsWith('required ')) {
      final thisM = RegExp(r'required this\.(\w+)').firstMatch(t);
      if (thisM != null) {
        final name = thisM.group(1)!;
        required.add(_Param(name, fields[name] ?? 'TfArg<String>'));
        continue;
      }
      final typed = RegExp(r'required (.+) (\w+)$').firstMatch(t);
      if (typed != null) {
        required.add(_Param(typed.group(2)!, typed.group(1)!.trim()));
      }
      continue;
    }
    final thisM = RegExp(r'this\.(\w+)').firstMatch(t);
    if (thisM != null) {
      final name = thisM.group(1)!;
      optional.add(_Param(name, fields[name] ?? 'TfArg<String>'));
      continue;
    }
    final typed = RegExp(r'^(.+?)\?? (\w+)$').firstMatch(t);
    if (typed != null) {
      optional.add(
        _Param(typed.group(2)!, typed.group(1)!.replaceAll('?', '').trim()),
      );
    }
  }
  return (required: required, optional: optional);
}

class _Extra {
  _Extra(this.name, this.value);
  final String name;
  final String value;
}

const _preferZoneId = {
  'CloudflareRuleset',
  'DataCloudflareRuleset',
  'DataCloudflareRulesets',
};

List<_Extra> _extras(_Factory f, Map<String, _ClassInfo> helpers) {
  final requiredNames = {for (final p in f.requiredParams) p.name};
  final optional = {for (final p in f.optionalParams) p.name: p};
  final out = <_Extra>[];
  void add(String name) {
    if (requiredNames.contains(name) || !optional.containsKey(name)) return;
    if (out.any((e) => e.name == name)) return;
    final p = optional[name]!;
    out.add(
      _Extra(
        name,
        _dummy(
          p,
          helpers,
          sensitive: f.sensitiveLeaves,
          depth: 0,
          owner: f.className,
        ),
      ),
    );
  }

  if (_preferZoneId.contains(f.className)) {
    add('zoneId');
  } else {
    add('accountId');
    if (!optional.containsKey('accountId')) add('zoneId');
  }
  add('id');
  // file XOR url (cloudflare_image): emit url so leftover JSON is valid.
  if (optional.containsKey('file') && optional.containsKey('url')) {
    add('url');
  }
  var addedLookupId = out.any((e) => e.name == 'id');
  if (f.kind == _Kind.data) {
    for (final name in optional.keys) {
      if (name == 'accountId' || name == 'zoneId' || name == 'id') continue;
      if (name == 'filter' || name == 'maxItems') continue;
      if (name.endsWith('Id') ||
          name.endsWith('Identifier') ||
          name == 'sitekey' ||
          name == 'scriptName' ||
          name == 'workflowName') {
        add(name);
        addedLookupId = true;
        break;
      }
    }
  }
  if (!addedLookupId) add('filter');
  if (optional.containsKey('roles') && !requiredNames.contains('roles')) {
    add('roles');
  }
  return out;
}

List<String> _splitTopLevel(String src, String sep) {
  final out = <String>[];
  final buf = StringBuffer();
  var depth = 0;
  for (var i = 0; i < src.length; i++) {
    final ch = src[i];
    if (ch == '<' || ch == '(' || ch == '[' || ch == '{') depth++;
    if (ch == '>' || ch == ')' || ch == ']' || ch == '}') {
      depth = depth > 0 ? depth - 1 : 0;
    }
    if (ch == sep && depth == 0) {
      out.add(buf.toString());
      buf.clear();
      continue;
    }
    buf.write(ch);
  }
  if (buf.isNotEmpty) out.add(buf.toString());
  return out;
}

int _matchBrace(String src, int open) {
  var depth = 0;
  for (var i = open; i < src.length; i++) {
    final ch = src[i];
    if (ch == '{') depth++;
    if (ch == '}') {
      depth--;
      if (depth == 0) return i;
    }
  }
  return -1;
}

String _uniqueLocal(String tfType, _Kind kind, Set<String> used) {
  var name = tfType.startsWith('cloudflare_')
      ? tfType.substring('cloudflare_'.length)
      : tfType;
  if (kind == _Kind.data) name = 'd_$name';
  if (name.length > 48) name = name.substring(0, 48);
  name = name.replaceAll(RegExp(r'[^A-Za-z0-9_]'), '_');
  if (name.isEmpty || RegExp(r'^[0-9]').hasMatch(name)) {
    name = 'n_$name';
  }
  var candidate = name;
  var n = 2;
  while (used.contains(candidate)) {
    final suffix = '_$n';
    candidate = name.length + suffix.length > 48
        ? '${name.substring(0, 48 - suffix.length)}$suffix'
        : '$name$suffix';
    n++;
  }
  used.add(candidate);
  return candidate;
}

String _toSnake(String camel) {
  return camel.replaceAllMapped(
    RegExp(r'[A-Z]'),
    (m) => '_${m.group(0)!.toLowerCase()}',
  );
}

bool _isSensitive(String name, Set<String> sensitive) {
  if (sensitive.isEmpty) return false;
  final snake = _toSnake(name);
  return sensitive.contains(snake) || sensitive.contains(name);
}

String _dummy(
  _Param p,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required Set<String> sensitive,
  String owner = '',
}) {
  if (depth > 8) return "TfArg.literal('leftover')";
  final n = p.name;
  if (_isSensitive(n, sensitive) && p.type.startsWith('TfArg')) {
    return _secretVarRef;
  }
  if (n == 'accountId' || n == 'account') {
    if (p.type.startsWith('TfArg')) {
      return 'TfArg.literal(accountId)';
    }
  }
  if (n == 'zoneId' || n == 'zone') {
    if (p.type.startsWith('TfArg')) {
      return 'TfArg.literal(zoneId)';
    }
  }
  return _dummyForType(
    p.type,
    helpers,
    depth: depth,
    name: n,
    sensitive: sensitive,
    owner: owner,
  );
}

const _primitives = {
  'String',
  'num',
  'int',
  'double',
  'bool',
  'Object',
  'dynamic',
  'Null',
  'Map',
  'List',
  'Set',
};

String _headType(String type) {
  final i = type.indexOf('<');
  return i < 0 ? type : type.substring(0, i);
}

String _dummyForType(
  String type,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  String name = '',
  required Set<String> sensitive,
  String owner = '',
}) {
  var t = type.trim();
  if (t.endsWith('?')) t = t.substring(0, t.length - 1).trim();

  if (t.startsWith('TfArg<') && t.endsWith('>')) {
    if (_isSensitive(name, sensitive)) {
      return _secretVarRef;
    }
    final inner = t.substring(6, t.length - 1);
    return 'TfArg.literal(${_literalInner(inner, helpers, depth: depth, name: name, sensitive: sensitive, owner: owner)})';
  }
  if (t.startsWith('List<') && t.endsWith('>')) {
    final inner = t.substring(5, t.length - 1);
    return '[${_dummyForType(inner, helpers, depth: depth + 1, name: name, sensitive: sensitive, owner: owner)},]';
  }
  if (t.startsWith('Map<') || t == 'Map') {
    return "{'k': leftover}";
  }
  if (helpers.containsKey(t)) {
    return _constructHelper(t, helpers, depth: depth + 1, sensitive: sensitive);
  }
  if (_primitives.contains(_headType(t))) {
    return _literalInner(
      t,
      helpers,
      depth: depth,
      name: name,
      sensitive: sensitive,
      owner: owner,
    );
  }
  return 'TfArg.literal(leftover)';
}

String _literalInner(
  String inner,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required String name,
  required Set<String> sensitive,
  String owner = '',
}) {
  var t = inner.trim();
  if (t.endsWith('?')) t = t.substring(0, t.length - 1).trim();
  if (t == 'String') return _stringLiteral(name, owner: owner);
  if (t == 'num' || t == 'int' || t == 'double') return '200';
  if (t == 'bool') return 'true';
  if (t.startsWith('List<') && t.endsWith('>')) {
    final listInner = t.substring(5, t.length - 1).trim().replaceAll('?', '');
    if (helpers.containsKey(listInner)) {
      return '[${_constructHelper(listInner, helpers, depth: depth + 1, sensitive: sensitive)},]';
    }
    if (listInner.startsWith('Map')) return "[{'k': leftover}]";
    if (listInner.contains('num') ||
        listInner.contains('int') ||
        listInner.contains('double')) {
      return '[200]';
    }
    if (listInner.contains('bool')) return '[true]';
    return '[leftover]';
  }
  if (t.startsWith('Map<') || t == 'Map') return "{'k': leftover}";
  if (t == 'Object' || t.contains('Object')) return 'leftover';
  if (helpers.containsKey(t)) {
    return _constructHelper(t, helpers, depth: depth + 1, sensitive: sensitive);
  }
  return 'leftover';
}

const _hex32 = '00000000000000000000000000000001';

const _literalByKey = <String, String>{
  'settingId': "'ciphers'",
  'datasetId': "'audit_logs'",
  'validationDefaultMitigationAction': "'none'",
  'mitigationAction': "'none'",
  'integrationType': "'Okta'",
  'patternType': "'EMAIL'",
  'certificateAuthority': "'google'",
  'validationMethod': "'txt'",
  'requestType': "'origin-rsa'",
  'strategy': "'percentage'",
  'tlp': "'clear'",
  'scope': "'incoming'",
  'vendor': "'aws'",
  'identifier': "'1000_errors'",
  'phase': "'http_request_firewall_custom'",
  'tokenType': "'JWT'",
  'tokenEndpointAuthMethod': "'none'",
  'haMode': "'none'",
  'alertType': "'abuse_report_alert'",
  'decision': "'allow'",
  'method': "'GET'",
  'validityDays': "'90'",
  'certificateType': "'advanced'",
  'state': "'default'",
  'target': "'ethereum'",
  'action': "'allow'",
  'effect': "'allow'",
  'resourceType': "'custom-ruleset'",
  'CloudflareTurnstileWidget.mode': "'non-interactive'",
  'CloudflareAccessRule.mode': "'block'",
  'CloudflareList.kind': "'ip'",
  'CloudflareApiShieldSchema.kind': "'openapi_v3'",
  'CloudflareSchemaValidationSchema.kind': "'openapi_v3'",
  'CloudflareRuleset.kind': "'zone'",
  'CloudflareTieredCache.value': "'on'",
  'CloudflareArgoSmartRouting.value': "'on'",
  'CloudflareArgoTieredCaching.value': "'on'",
  'CloudflareContentScanning.value': "'enabled'",
  'CloudflareRegionalHostname.value': "'on'",
  'CloudflareUrlNormalizationSettings.type': "'cloudflare'",
  'CloudflareQueueConsumer.type': "'worker'",
  'CloudflareWorkersScript.strategy?': "'percentage'",
  'CloudflareWorkersDeployment.strategy': "'percentage'",
  'CloudflareZeroTrustDeviceManagedNetworks.type': "'tls'",
  'CloudflareZeroTrustList.type': "'SERIAL'",
  'CloudflareZeroTrustAccessCustomPage.type': "'forbidden'",
  'CloudflareZeroTrustGatewayPolicy.action': "'allow'",
  'CloudflareZeroTrustDevicePostureRule.type': "'file'",
  'CloudflareZeroTrustDevicePostureIntegration.type': "'workspace_one'",
  'CloudflareZeroTrustAccessIdentityProvider.type': "'onetimepin'",
  'CloudflareMagicNetworkMonitoringRule.type': "'threshold'",
  'CloudflarePipelineSink.type': "'r2'",
  'CloudflareConnectivityDirectoryService.type': "'tcp'",
  'CloudflarePageShieldPolicy.action': "'allow'",
  'CloudflareTokenValidationRules.action': "'log'",
  'CloudflareWaitingRoomRules.action': "'bypass_waiting_room'",
  'CloudflareOriginCaCertificate.requestType': "'origin-rsa'",
  'CloudflareCertificatePack.type': "'advanced'",
  'CloudflareWeb3Hostname.target': "'ethereum'",
  'CloudflareCustomPages.state': "'default'",
  'EmailRoutingRuleActions.type': "'drop'",
  'EmailRoutingRuleMatchers.type': "'all'",
  'EmailRoutingCatchAllActions.type': "'drop'",
  'EmailRoutingCatchAllMatchers.type': "'all'",
  'ApiShieldAuthIdCharacteristics.type': "'header'",
  'ShareResources.resourceType': "'custom-ruleset'",
  'AccountTokenPolicies.effect': "'allow'",
  'ApiTokenPolicies.effect': "'allow'",
  'TokenValidationConfigCredentialsKeys.alg': "'RS256'",
  'TokenValidationConfigCredentialsKeys.kty': "'RSA'",
  'HyperdriveConfigOrigin.scheme': "'postgres'",
  'AiGatewayDynamicRoutingElements.type': "'start'",
  'VulnerabilityScannerTargetEnvironmentTarget.type': "'zone'",
  'R2BucketEventNotificationRules.actions': "'PutObject'",
  'ImageVariantOptions.fit': "'scale-down'",
  'ImageVariantOptions.metadata': "'none'",
  'CloudflareZeroTrustAccessAiControlsMcpServer.authType': "'unauthenticated'",
};

String _stringLiteral(String name, {String owner = ''}) {
  final key = '$owner.$name';
  if (_literalByKey.containsKey(key)) return _literalByKey[key]!;
  if (_literalByKey.containsKey(name)) return _literalByKey[name]!;
  final n = name.toLowerCase();
  if (n == 'accountid' || n == 'account') return 'accountId';
  if (n == 'zoneid' || n == 'zone') return 'zoneId';
  if (n == 'id') return "'$_hex32'";
  if (n.contains('email')) return "'leftover@example.com'";
  if (n.endsWith('url') || n.contains('uri')) {
    return "'https://example.com'";
  }
  if (n.contains('cron')) return "'* * * * *'";
  if (n.contains('cidr') || n.contains('prefix')) return "'192.0.2.0/24'";
  if (n == 'ip' || n.endsWith('ip') || n.contains('address')) {
    return "'192.0.2.1'";
  }
  if (name.endsWith('Id') && name != 'settingId' && name != 'datasetId') {
    return "'$_hex32'";
  }
  return 'leftover';
}

String _constructHelper(
  String className,
  Map<String, _ClassInfo> helpers, {
  required int depth,
  required Set<String> sensitive,
}) {
  if (depth > 8) return '$className()';
  final info = helpers[className];
  if (info == null) return '$className()';
  final params = [
    ...info.requiredParams,
    if (info.requiredParams.isEmpty && info.optionalParams.isNotEmpty)
      info.optionalParams.first,
  ];
  if (params.isEmpty) {
    return '$className()';
  }
  final args = params
      .map(
        (p) =>
            '${p.name}: ${_dummy(p, helpers, depth: depth, sensitive: sensitive, owner: className)}',
      )
      .join(', ');
  // Trailing comma: `dart format` then expands the call across lines and
  // keeps it there, which is the shape `require_trailing_commas` wants.
  // Without it the formatter wraps long calls and adds no comma, so a
  // formatted `examples/` fails `dart analyze`.
  return '$className($args,)';
}
