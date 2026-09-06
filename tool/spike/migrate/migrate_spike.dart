// Phase 0 spike for issue #80 (HCL → Dart migrator): tf.json → Dart Stack for
// examples/pubsub_quickstart, driven by a HAND-WRITTEN migration manifest for
// the 11 catalog types the example uses. Proves the round-trip contract
// synth(migrate(synth(S))) == synth(S). See README.md in this directory.
//
// Run from the repository root:
//   dart run tool/spike/migrate/migrate_spike.dart
//   dart run tool/spike/migrate/roundtrip.dart
// ignore_for_file: avoid_print
import 'dart:convert';
import 'dart:io';

// ---------------------------------------------------------------------------
// Manifest model (the shape `terradart wrap` would generate)
// ---------------------------------------------------------------------------
enum SlotKind { scalar, enumValue, nested, nestedList }

class Slot {
  const Slot(
    this.dart,
    this.kind, {
    this.type = 'String',
    this.helper,
    this.enumType,
    this.enumMap,
    this.nested,
  });

  final String dart;
  final SlotKind kind;

  /// Scalar Dart payload type (`String`, `int`, `List<String>`, ...).
  final String type;

  /// Nested helper class name.
  final String? helper;
  final String? enumType;

  /// Raw Terraform value → Dart enum member.
  final Map<String, String>? enumMap;

  /// Terraform name → slot, for nested helpers.
  final Map<String, Slot>? nested;
}

class Entry {
  const Entry(
    this.className,
    this.barrel,
    this.slots,
    this.getters, {
    this.isData = false,
  });

  final String className;
  final String barrel;

  /// Terraform attribute → slot.
  final Map<String, Slot> slots;

  /// Terraform attribute → Dart output getter.
  final Map<String, String> getters;
  final bool isData;
}

const _iamGetters = {'etag': 'etag', 'id': 'id'};

const manifest = <String, Entry>{
  'google_pubsub_schema': Entry(
    'GooglePubsubSchema',
    'pubsub',
    {
      'name': Slot('name', SlotKind.scalar),
      'type': Slot(
        'type',
        SlotKind.enumValue,
        enumType: 'PubsubSchemaType',
        enumMap: {'PROTOCOL_BUFFER': 'protocolBuffer', 'AVRO': 'avro'},
      ),
      'definition': Slot('definition', SlotKind.scalar),
      'project': Slot('project', SlotKind.scalar),
    },
    {'name': 'nameRef', 'id': 'id'},
  ),
  'google_service_account': Entry(
    'GoogleServiceAccount',
    'iam',
    {
      'account_id': Slot('accountId', SlotKind.scalar),
      'display_name': Slot('displayName', SlotKind.scalar),
      'description': Slot('description', SlotKind.scalar),
      'disabled': Slot('disabled', SlotKind.scalar, type: 'bool'),
      'project': Slot('project', SlotKind.scalar),
    },
    {
      'member': 'iamMember',
      'email': 'email',
      'name': 'nameRef',
      'id': 'id',
      'unique_id': 'uniqueId',
    },
  ),
  'google_pubsub_schema_iam_member': Entry(
    'GooglePubsubSchemaIamMember',
    'pubsub',
    {
      'schema': Slot('schema', SlotKind.scalar),
      'role': Slot('role', SlotKind.scalar),
      'member': Slot('member', SlotKind.scalar),
      'project': Slot('project', SlotKind.scalar),
    },
    _iamGetters,
  ),
  'google_pubsub_schema_iam_binding': Entry(
    'GooglePubsubSchemaIamBinding',
    'pubsub',
    {
      'schema': Slot('schema', SlotKind.scalar),
      'role': Slot('role', SlotKind.scalar),
      'members': Slot('members', SlotKind.scalar, type: 'List<String>'),
      'project': Slot('project', SlotKind.scalar),
    },
    _iamGetters,
  ),
  'google_pubsub_schema_iam_policy': Entry(
    'GooglePubsubSchemaIamPolicy',
    'pubsub',
    {
      'schema': Slot('schema', SlotKind.scalar),
      'policy_data': Slot('policyData', SlotKind.scalar),
      'project': Slot('project', SlotKind.scalar),
    },
    _iamGetters,
  ),
  'google_pubsub_topic': Entry(
    'GooglePubsubTopic',
    'pubsub',
    {
      'name': Slot('name', SlotKind.scalar),
      'message_retention_duration':
          Slot('messageRetentionDuration', SlotKind.scalar),
      'labels': Slot('labels', SlotKind.scalar, type: 'Map<String, String>'),
      'kms_key_name': Slot('kmsKeyName', SlotKind.scalar),
      'project': Slot('project', SlotKind.scalar),
    },
    {'name': 'nameRef', 'id': 'id'},
  ),
  'google_pubsub_subscription': Entry(
    'GooglePubsubSubscription',
    'pubsub',
    {
      'name': Slot('name', SlotKind.scalar),
      'topic': Slot('topic', SlotKind.scalar),
      'ack_deadline_seconds':
          Slot('ackDeadlineSeconds', SlotKind.scalar, type: 'int'),
      'message_retention_duration':
          Slot('messageRetentionDuration', SlotKind.scalar),
      'filter': Slot('filter', SlotKind.scalar),
      'push_config': Slot(
        'pushConfig',
        SlotKind.nested,
        helper: 'PubsubSubscriptionPushConfig',
        nested: {
          'push_endpoint': Slot('pushEndpoint', SlotKind.scalar),
          'attributes':
              Slot('attributes', SlotKind.scalar, type: 'Map<String, String>'),
          'oidc_token': Slot(
            'oidcToken',
            SlotKind.nested,
            helper: 'PubsubSubscriptionOidcToken',
            nested: {
              'service_account_email':
                  Slot('serviceAccountEmail', SlotKind.scalar),
              'audience': Slot('audience', SlotKind.scalar),
            },
          ),
        },
      ),
      'project': Slot('project', SlotKind.scalar),
    },
    {'name': 'nameRef', 'id': 'id'},
  ),
  'google_pubsub_topic_iam_member': Entry(
    'GooglePubsubTopicIamMember',
    'pubsub',
    {
      'topic': Slot('topic', SlotKind.scalar),
      'role': Slot('role', SlotKind.scalar),
      'member': Slot('member', SlotKind.scalar),
      'project': Slot('project', SlotKind.scalar),
    },
    _iamGetters,
  ),
  'google_pubsub_topic_iam_binding': Entry(
    'GooglePubsubTopicIamBinding',
    'pubsub',
    {
      'topic': Slot('topic', SlotKind.scalar),
      'role': Slot('role', SlotKind.scalar),
      'members': Slot('members', SlotKind.scalar, type: 'List<String>'),
      'project': Slot('project', SlotKind.scalar),
    },
    _iamGetters,
  ),
  'google_pubsub_topic_iam_policy': Entry(
    'GooglePubsubTopicIamPolicy',
    'pubsub',
    {
      'topic': Slot('topic', SlotKind.scalar),
      'policy_data': Slot('policyData', SlotKind.scalar),
      'project': Slot('project', SlotKind.scalar),
    },
    _iamGetters,
  ),
  'data.google_project': Entry(
    'GoogleProject',
    'data',
    {'project_id': Slot('projectId', SlotKind.scalar)},
    {
      'number': 'number',
      'project_id': 'projectId',
      'name': 'nameRef',
      'id': 'id',
    },
    isData: true,
  ),
};

// ---------------------------------------------------------------------------
// Emitter
// ---------------------------------------------------------------------------
final _singleRef = RegExp(
  r'^\$\{((?:data\.)?[a-z0-9_]+\.[A-Za-z0-9_\-]+)\.([a-z0-9_]+)\}$',
);
const _reservedWords = {
  'default',
  'in',
  'is',
  'new',
  'class',
  'var',
  'this',
  'super',
};

/// Dart string literal for [v]: raw `r'...'` when the value contains `$` or
/// backslashes and no quote / control character, plain `'...'` otherwise.
String dartStr(String v) {
  final hasControl =
      v.contains("'") || v.codeUnits.any((c) => c < 0x20 || c == 0x7f);
  if (!hasControl && (v.contains(r'$') || v.contains(r'\'))) {
    return "r'$v'";
  }
  final b = StringBuffer("'");
  for (final r in v.runes) {
    switch (r) {
      case 0x5c:
        b.write(r'\\');
      case 0x27:
        b.write(r"\'");
      case 0x24:
        b.write(r'\$');
      case 0x0a:
        b.write(r'\n');
      case 0x0d:
        b.write(r'\r');
      case 0x09:
        b.write(r'\t');
      default:
        if (r < 0x20 || r == 0x7f) {
          b.write('\\u{${r.toRadixString(16)}}');
        } else {
          b.writeCharCode(r);
        }
    }
  }
  b.write("'");
  return b.toString();
}

String camel(String s) {
  final parts =
      s.replaceAll('-', '_').split('_').where((p) => p.isNotEmpty).toList();
  if (parts.isEmpty) {
    return 'x';
  }
  final out = StringBuffer(parts.first);
  for (final p in parts.skip(1)) {
    out.write(p[0].toUpperCase() + p.substring(1));
  }
  var id = out.toString();
  if (RegExp(r'^[0-9]').hasMatch(id) || _reservedWords.contains(id)) {
    id = 'r$id';
  }
  return id;
}

class Node {
  Node(
    this.address,
    this.tfType,
    this.name,
    this.body,
    this.entry,
    this.isData,
  );

  /// `google_pubsub_topic.orders` or `data.google_project.current`.
  final String address;
  final String tfType;
  final String name;
  final Map<String, dynamic> body;
  final Entry entry;
  final bool isData;
  late String varName;
  bool emitted = false;
}

class Migrator {
  Migrator(this.json);

  final Map<String, dynamic> json;
  final nodes = <String, Node>{};
  final out = StringBuffer();
  final notes = <String>[];
  final barrels = <String>{'provider'};

  /// Addresses that some other node (or an output) references at the Dart
  /// level; only these get a `final x = add(...)` binding, so the generated
  /// file has no unused locals.
  final referenced = <String>{};

  void run(String stackName) {
    _collect();
    _assignVarNames();
    for (final n in nodes.values) {
      for (final dep in _dartDeps(n)) {
        referenced.add(dep.address);
      }
    }
    for (final t in _outputTargets()) {
      referenced.add(t.address);
    }
    final providers = _providers();
    out.writeln('  $stackName()');
    out.writeln('      : super(providers: [${providers.join(', ')}]) {');
    final tf = json['terraform'] as Map<String, dynamic>? ?? {};
    if (tf['required_version'] != null) {
      out.writeln(
        '    setRequiredVersion(${dartStr(tf['required_version'] as String)});',
      );
    }
    _variables();
    for (final n in nodes.values.where((n) => n.isData)) {
      _emitNode(n);
    }
    for (final n in nodes.values.where((n) => !n.isData)) {
      _emitNode(n);
    }
    _outputs();
    out.writeln('  }');
  }

  void _collect() {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    data.forEach((type, byName) {
      (byName as Map<String, dynamic>).forEach((name, body) {
        final entry = manifest['data.$type'];
        if (entry == null) {
          notes.add('data.$type.$name: not in manifest');
          return;
        }
        final addr = 'data.$type.$name';
        nodes[addr] = Node(
          addr,
          type,
          name,
          (body as Map).cast<String, dynamic>(),
          entry,
          true,
        );
      });
    });
    final res = json['resource'] as Map<String, dynamic>? ?? {};
    res.forEach((type, byName) {
      (byName as Map<String, dynamic>).forEach((name, body) {
        final entry = manifest[type];
        if (entry == null) {
          notes.add('$type.$name: not in manifest');
          return;
        }
        final addr = '$type.$name';
        nodes[addr] = Node(
          addr,
          type,
          name,
          (body as Map).cast<String, dynamic>(),
          entry,
          false,
        );
      });
    });
  }

  void _assignVarNames() {
    final used = <String>{};
    for (final n in nodes.values) {
      var v = camel(n.name);
      if (used.contains(v)) {
        v = camel('${n.name}_${n.tfType.replaceFirst('google_', '')}');
      }
      var i = 2;
      while (used.contains(v)) {
        v = '${camel(n.name)}$i';
        i++;
      }
      used.add(v);
      n.varName = v;
    }
  }

  List<String> _providers() {
    final p = json['provider'] as Map<String, dynamic>? ?? {};
    final out = <String>[];
    p.forEach((name, cfg) {
      if (name != 'google') {
        notes.add('provider $name: unsupported in spike');
        return;
      }
      final c = (cfg as Map).cast<String, dynamic>();
      final args = <String>[];
      for (final k in ['project', 'region', 'zone']) {
        if (c[k] != null) {
          args.add('$k: ${dartStr(c[k] as String)}');
        }
      }
      for (final k
          in c.keys.where((k) => !['project', 'region', 'zone'].contains(k))) {
        notes.add(
          'provider google: argument `$k` dropped (no GoogleProvider slot)',
        );
      }
      out.add('const GoogleProvider(${args.join(', ')})');
    });
    return out;
  }

  void _variables() {
    final vars = json['variable'] as Map<String, dynamic>? ?? {};
    vars.forEach((name, body) {
      final b = (body as Map).cast<String, dynamic>();
      final args = <String>[];
      if (b['type'] != null) {
        args.add('type: ${dartStr(b['type'] as String)}');
      }
      if (b['description'] != null) {
        args.add('description: ${dartStr(b['description'] as String)}');
      }
      if (b.containsKey('default')) {
        args.add('defaultValue: ${_dartLiteral(b['default'])}');
      }
      if (b['sensitive'] != null) {
        args.add('sensitive: ${b['sensitive']}');
      }
      if (b['nullable'] != null) {
        args.add('nullable: ${b['nullable']}');
      }
      out.writeln(
        '    addVariable(${dartStr(name)}, TfVariable(${args.join(', ')}));',
      );
    });
  }

  String _dartLiteral(Object? v) {
    if (v is String) {
      return dartStr(v);
    }
    if (v is List) {
      return '[${v.map(_dartLiteral).join(', ')}]';
    }
    if (v is Map) {
      final entries = v.entries
          .map((e) => '${dartStr(e.key as String)}: ${_dartLiteral(e.value)}');
      return '{${entries.join(', ')}}';
    }
    return '$v';
  }

  /// Emits [n] after every Dart-level dependency it references.
  void _emitNode(Node n) {
    if (n.emitted) {
      return;
    }
    n.emitted = true; // mark first: a cycle falls back to raw expressions
    for (final dep in _dartDeps(n)) {
      _emitNode(dep);
    }
    barrels.add(n.entry.barrel);
    final args = <String>['localName: ${dartStr(n.name)}'];
    final blockers = <String>[];
    n.body.forEach((k, v) {
      if (k == 'depends_on') {
        final targets = (v as List).map((a) => nodes[a as String]).toList();
        if (targets.any((t) => t == null)) {
          blockers.add('depends_on target outside Dart');
          return;
        }
        final deps = targets.map((t) => 'ResourceDependency(${t!.varName})');
        args.add('dependsOn: [${deps.join(', ')}]');
        return;
      }
      if (const {
        'lifecycle',
        'provider',
        'count',
        'for_each',
        'dynamic',
        'provisioner',
        'timeouts',
      }.contains(k)) {
        blockers.add('meta-argument `$k` not handled in spike');
        return;
      }
      final slot = n.entry.slots[k];
      if (slot == null) {
        blockers.add('argument `$k` not in manifest');
        return;
      }
      final rendered = _slotValue(slot, v, n, blockers);
      if (rendered != null) {
        args.add('${slot.dart}: $rendered');
      }
    });
    if (blockers.isNotEmpty) {
      notes.add('${n.address}: kept in HCL — ${blockers.join('; ')}');
      out.writeln('    // ${n.address}: kept in HCL (${blockers.join('; ')})');
      return;
    }
    final call = n.isData ? 'addData' : 'add';
    final bind = referenced.contains(n.address) ? 'final ${n.varName} = ' : '';
    out.writeln('    $bind$call(${n.entry.className}(');
    for (final a in args) {
      out.writeln('      $a,');
    }
    out.writeln('    ));');
  }

  Iterable<Node> _dartDeps(Node n) sync* {
    for (final e in n.body.entries) {
      if (e.key == 'depends_on') {
        for (final a in e.value as List) {
          final t = nodes[a as String];
          if (t != null) {
            yield t;
          }
        }
      } else {
        yield* _refsIn(e.value);
      }
    }
  }

  Iterable<Node> _refsIn(Object? v) sync* {
    if (v is String) {
      final m = _singleRef.firstMatch(v);
      if (m != null) {
        final t = nodes[m.group(1)!];
        if (t != null) {
          yield t;
        }
      }
    } else if (v is List) {
      for (final e in v) {
        yield* _refsIn(e);
      }
    } else if (v is Map) {
      for (final e in v.values) {
        yield* _refsIn(e);
      }
    }
  }

  Iterable<Node> _outputTargets() sync* {
    final outs = json['output'] as Map<String, dynamic>? ?? {};
    for (final body in outs.values) {
      final v = (body as Map)['value'];
      if (v is String) {
        final m = _singleRef.firstMatch(v);
        final t = m == null ? null : nodes[m.group(1)!];
        if (t != null) {
          yield t;
        }
      }
    }
  }

  /// Renders one slot value; returns null when the slot must be skipped.
  String? _slotValue(
    Slot slot,
    Object? v,
    Node owner,
    List<String> blockers,
  ) {
    switch (slot.kind) {
      case SlotKind.nested:
        var value = v;
        if (value is List && value.length == 1) {
          value = value.first; // array-of-one block form
        }
        if (value is! Map) {
          blockers.add('`${slot.dart}` expected a block');
          return null;
        }
        return _helper(slot, value.cast<String, dynamic>(), owner, blockers);
      case SlotKind.nestedList:
        final list = v is Map ? [v] : v;
        if (list is! List) {
          blockers.add('`${slot.dart}` expected a block list');
          return null;
        }
        final items = list.map(
          (e) => _helper(
            slot,
            (e as Map).cast<String, dynamic>(),
            owner,
            blockers,
          ),
        );
        return '[${items.join(', ')}]';
      case SlotKind.enumValue:
        if (v is! String) {
          blockers.add('`${slot.dart}` enum needs a string');
          return null;
        }
        final member = slot.enumMap![v];
        if (member == null) {
          blockers.add('`${slot.dart}` unknown enum value $v');
          return null;
        }
        return 'TfArg.literal(${slot.enumType}.$member)';
      case SlotKind.scalar:
        return _scalar(slot, v, owner, blockers);
    }
  }

  String _helper(
    Slot slot,
    Map<String, dynamic> body,
    Node owner,
    List<String> blockers,
  ) {
    final args = <String>[];
    body.forEach((k, v) {
      final s = slot.nested![k];
      if (s == null) {
        blockers.add('`${slot.dart}.$k` not in manifest');
        return;
      }
      final r = _slotValue(s, v, owner, blockers);
      if (r != null) {
        args.add('${s.dart}: $r');
      }
    });
    return '${slot.helper}(${args.join(', ')})';
  }

  String? _scalar(Slot slot, Object? v, Node owner, List<String> blockers) {
    if (v is String) {
      final m = _singleRef.firstMatch(v);
      if (m != null) {
        final target = nodes[m.group(1)!];
        final attr = m.group(2)!;
        if (target != null && target.emitted && target != owner) {
          final getter = target.entry.getters[attr];
          if (getter != null) {
            return 'TfArg.ref(${target.varName}.$getter)';
          }
          return 'TfArg.ref(TfRef.attribute<${slot.type}>'
              '(${target.varName}, ${dartStr(attr)}))';
        }
        return 'TfArg.literal(${dartStr(v)})'; // raw expression fallback
      }
      if (v.contains(r'${') || v.contains('%{')) {
        return 'TfArg.literal(${dartStr(v)})'; // raw expression
      }
      if (slot.type != 'String') {
        blockers.add('`${slot.dart}` string given for ${slot.type}');
        return null;
      }
      return 'TfArg.literal(${dartStr(v)})';
    }
    if (v is bool) {
      return 'TfArg.literal($v)';
    }
    if (v is num) {
      if (slot.type == 'int' && v is! int) {
        blockers.add('`${slot.dart}` non-integer');
        return null;
      }
      return 'TfArg.literal($v)';
    }
    if (v is List) {
      return 'TfArg.literal(${_listLiteral(v)})';
    }
    if (v is Map) {
      return 'TfArg.literal(${_dartLiteral(v)})';
    }
    blockers.add('`${slot.dart}` null value');
    return null;
  }

  String _listLiteral(List<dynamic> v) {
    final items = v.map((e) {
      if (e is String) {
        final m = _singleRef.firstMatch(e);
        if (m != null) {
          final t = nodes[m.group(1)!];
          final getter = t?.entry.getters[m.group(2)!];
          if (t != null && t.emitted && getter != null) {
            return '${t.varName}.$getter.interpolation';
          }
        }
        return dartStr(e);
      }
      return _dartLiteral(e);
    });
    return '[${items.join(', ')}]';
  }

  void _outputs() {
    final outs = json['output'] as Map<String, dynamic>? ?? {};
    outs.forEach((name, body) {
      final b = (body as Map).cast<String, dynamic>();
      final v = b['value'];
      final m = v is String ? _singleRef.firstMatch(v) : null;
      final t = m == null ? null : nodes[m.group(1)!];
      final getter = t?.entry.getters[m!.group(2)!];
      if (t == null || getter == null) {
        notes.add(
          'output $name: kept in HCL (value is not a single reference with '
          'a getter)',
        );
        return;
      }
      final extra = <String>['emitTerraformOutput: true'];
      if (b['sensitive'] == true) {
        extra.add('sensitive: true');
      }
      if (b['description'] != null) {
        extra.add('description: ${dartStr(b['description'] as String)}');
      }
      out.writeln(
        '    addExport(${dartStr(name)}, ResourceIdExport(${t.varName}.$getter, '
        '${extra.join(', ')}));',
      );
    });
    if (outs.isNotEmpty) {
      out.writeln(
        "    setAppExportsOutputPath('lib/generated/migrated.app.dart');",
      );
    }
  }

  String render(String stackName) {
    final imports = (barrels.toList()..sort())
        .map((b) => "import 'package:terradart_google/$b.dart';")
        .join('\n');
    return '''
// GENERATED by tool/spike/migrate/migrate_spike.dart — Phase 0 round-trip
// spike for issue #80. Do not edit; rerun the spike instead.
// ignore_for_file: depend_on_referenced_packages
import 'package:terradart_core/terradart_core.dart';
$imports

final class $stackName extends Stack {
${out.toString()}}
''';
  }
}

void main(List<String> args) {
  final input = args.isNotEmpty
      ? args[0]
      : 'examples/pubsub_quickstart/tf-out/main.tf.json';
  final outPath = args.length > 1
      ? args[1]
      : 'tool/spike/migrate/generated/orders_stack_migrated.dart';
  final json =
      jsonDecode(File(input).readAsStringSync()) as Map<String, dynamic>;
  final m = Migrator(json)..run('OrdersStackMigrated');
  File(outPath)
    ..parent.createSync(recursive: true)
    ..writeAsStringSync(m.render('OrdersStackMigrated'));
  print('wrote $outPath');
  for (final n in m.notes) {
    print('note: $n');
  }
}
