import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/resource_def.dart';
import '../ir/type_def.dart';
import 'dart_type_writer.dart';
import 'enum_emitter.dart';
import 'naming.dart';
import 'sensitive_set_emitter.dart';

/// Emits a single `$Foo` abstract Dart class for a [ResourceDef].
///
/// Output is **unformatted** Dart source; the file emitter feeds it through
/// `dart_style.DartFormatter`. Each emitted file has:
///
/// 1. doc-comment header with provider source/version
/// 2. `import 'package:schemantic/schemantic.dart';`
/// 3. `import 'package:terradart_annotations/terradart_annotations.dart';`
/// 4. one `enum` per field whose constraints carry `enumValues`
/// 5. one `$Nested` abstract class per nested block (recursively)
/// 6. the top-level `$ResourceName` abstract class
class AbstractClassEmitter {
  const AbstractClassEmitter();

  String emit(
    ResourceDef def, {
    required String providerSource,
    List<String>? extraSensitiveFields,
  }) {
    final buf = StringBuffer();

    // 1. Enum declarations (collected by walking the IR).
    final enumDecls = _collectEnums(def);
    for (final decl in enumDecls.values) {
      buf
        ..writeln(emitEnumDeclaration(decl))
        ..writeln();
    }

    // Pre-compute disambiguated class names for all nested blocks. Leaf-only
    // names (e.g. `$SchemaSettings`) are preferred when unique; full provider
    // schemas occasionally repeat the same nested-block name at multiple
    // paths (e.g. `customer_managed_encryption` under both `replication.auto`
    // and `replication.user_managed.replicas`), and those collisions are
    // resolved by prefixing the class name with the parent path.
    final namer = _NestedNamer.build(def.root);

    // 2. Nested-block abstract classes (recursive, depth-first).
    _emitNestedClasses(def.root, '', buf, enumDecls, namer);

    // 3. Top-level resource class.
    buf.writeln(
        "@TerraformResource(type: '${def.terraformType}', provider: '$providerSource')");
    final desc = def.description;
    if (desc != null && desc.isNotEmpty) {
      buf.writeln("@Schema(description: ${_dartStringLiteral(desc)})");
    } else {
      buf.writeln('@Schema()');
    }
    buf.writeln(
        'abstract class ${terraformAbstractClassName(def.terraformType)} {');
    _emitFields(def.root, '', buf, enumDecls, namer);
    buf.writeln('}');

    // 4. Top-level sensitive-field constant (sibling of the abstract class).
    //    See `sensitive_set_emitter.dart` for the rationale on why this lives
    //    outside the class — schemantic 0.1.3 treats class members as schema
    //    fields, including statics.
    buf.writeln();
    buf.writeln(
      emitSensitiveStaticSet(def, extraSensitiveFields: extraSensitiveFields),
    );

    return buf.toString();
  }

  void _emitNestedClasses(
    BlockDef block,
    String parentPath,
    StringBuffer buf,
    Map<String, EnumName> enumDecls,
    _NestedNamer namer,
  ) {
    final sorted = [...block.nestedBlocks]
      ..sort((a, b) => a.name.compareTo(b.name));
    for (final n in sorted) {
      final nestedPath = parentPath.isEmpty ? n.name : '$parentPath.${n.name}';
      _emitNestedClasses(n.block, nestedPath, buf, enumDecls, namer);
      buf.writeln(
          "@Schema(description: ${_dartStringLiteral(n.description ?? '')})");
      buf.writeln('abstract class ${namer.classNameForPath(nestedPath)} {');
      _emitFields(n.block, n.name, buf, enumDecls, namer, fullPath: nestedPath);
      buf.writeln('}');
      buf.writeln();
    }
  }

  void _emitFields(
    BlockDef block,
    String fieldPathPrefix,
    StringBuffer buf,
    Map<String, EnumName> enumDecls,
    _NestedNamer namer, {
    String fullPath = '',
  }) {
    for (final a in block.attributes) {
      if (a.constraints.computed && !a.constraints.optional) {
        // Pure computed (no input role): don't emit on the abstract input
        // surface. Output access happens via the factory's TfRef getters.
        continue;
      }
      _emitAttribute(a, buf, enumDecls, fieldPathPrefix);
    }
    final sortedNested = [...block.nestedBlocks]
      ..sort((a, b) => a.name.compareTo(b.name));
    for (final n in sortedNested) {
      final childFullPath = fullPath.isEmpty ? n.name : '$fullPath.${n.name}';
      _emitNestedFieldGetter(n, buf, namer.classNameForPath(childFullPath));
    }
  }

  void _emitAttribute(
    Attribute a,
    StringBuffer buf,
    Map<String, EnumName> enumDecls,
    String fieldPathPrefix,
  ) {
    final dartName = snakeToCamel(a.name);
    final enumKey =
        fieldPathPrefix.isEmpty ? a.name : '$fieldPathPrefix.${a.name}';
    final enumDecl = enumDecls[enumKey];

    final docLines = <String>[];
    if (a.constraints.forceNew) {
      docLines
          .add('  /// **ForceNew**: changing this re-creates the resource.');
    }
    if (a.constraints.optionalAndComputed) {
      docLines
          .add('  /// Optional + Computed. Inferred from provider when null.');
    }
    if (a.type is SetType) {
      docLines.add('  /// Set semantics: order is irrelevant; '
          'duplicates are rejected by Terraform.');
    }
    final dep = a.constraints.deprecationMessage;
    if (dep != null) {
      docLines.add('  @Deprecated(${_dartStringLiteral(dep)})');
    }
    if (a.constraints.forceNew) {
      docLines.add('  @ForceNew()');
    }
    if (a.constraints.sensitive) {
      docLines.add('  @Sensitive()');
    }
    docLines.add('  ${_buildFieldAnnotation(a, enumDecl)}');

    final dartType =
        enumDecl != null ? writeEnumDartType(enumDecl) : writeDartType(a.type);
    final nullable = !a.constraints.required;
    final getter = '$dartType${nullable ? '?' : ''} get $dartName;';
    for (final l in docLines) {
      buf.writeln(l);
    }
    buf.writeln('  $getter');
    buf.writeln();
  }

  void _emitNestedFieldGetter(
      NestedBlockDef n, StringBuffer buf, String pascal) {
    final dartName = snakeToCamel(n.name);
    final isSingle = n.nesting == NestingMode.single ||
        (n.nesting == NestingMode.list && n.maxItems == 1);
    final nullable = !n.constraints.required;
    final dartType = isSingle ? pascal : 'List<$pascal>';
    if (n.constraints.forceNew) {
      buf.writeln('  /// **ForceNew**: changing this re-creates the resource.');
      buf.writeln('  @ForceNew()');
    }
    buf.writeln("  @Field(name: '${n.name}')");
    buf.writeln('  $dartType${nullable ? '?' : ''} get $dartName;');
    buf.writeln();
  }

  /// Builds the schemantic `@StringField`/`@Field`/etc. annotation for a
  /// scalar attribute.
  String _buildFieldAnnotation(Attribute a, EnumName? enumDecl) {
    final args = <String>[];
    final terraformName = a.name;
    final dartName = snakeToCamel(a.name);
    if (terraformName != dartName) {
      args.add("name: '$terraformName'");
    }
    final c = a.constraints;
    if (a.type is StringType && enumDecl == null) {
      if (c.regex != null) {
        args.add('pattern: r${_dartStringLiteralRaw(c.regex!)}');
      }
      if (c.minLength != null) args.add('minLength: ${c.minLength}');
      if (c.maxLength != null) args.add('maxLength: ${c.maxLength}');
    }
    if (a.description != null && a.description!.isNotEmpty) {
      args.add('description: ${_dartStringLiteral(a.description!)}');
    }
    final ctor = enumDecl != null
        ? '@Field'
        : (a.type is StringType ? '@StringField' : '@Field');
    if (args.isEmpty) return '$ctor()';
    return '$ctor(${args.join(', ')})';
  }

  String _dartStringLiteral(String s) {
    final escaped = s
        .replaceAll(r'\', r'\\')
        .replaceAll("'", r"\'")
        .replaceAll('\n', r'\n');
    return "'$escaped'";
  }

  String _dartStringLiteralRaw(String s) {
    final escaped = s.replaceAll("'", r"\'");
    return "'$escaped'";
  }

  Map<String, EnumName> _collectEnums(ResourceDef def) {
    final out = <String, EnumName>{};
    void walk(BlockDef block, String prefix) {
      for (final a in block.attributes) {
        final ev = a.constraints.enumValues;
        if (ev != null && a.type is StringType) {
          final key = prefix.isEmpty ? a.name : '$prefix.${a.name}';
          out[key] = enumName(
            resourceType: def.terraformType,
            fieldPath: key,
            members: ev,
          );
        }
      }
      for (final n in block.nestedBlocks) {
        walk(n.block, prefix.isEmpty ? n.name : '$prefix.${n.name}');
      }
    }

    walk(def.root, '');
    return out;
  }
}

/// Resolves nested-block dotted paths to PascalCase class names, and
/// disambiguates collisions where the same leaf name appears at multiple
/// paths (real-world example: `customer_managed_encryption` under both
/// `replication.auto` and `replication.user_managed.replicas` in
/// `google_secret_manager_secret`).
///
/// Strategy:
/// - Pre-walk all nested-block paths and count how many distinct paths share
///   each leaf name.
/// - If a leaf name is unique within the resource, the class name is the
///   leaf-only PascalCase form (e.g. `$SchemaSettings`) — preserves the
///   v0.0.x emitter contract for the simple goldens.
/// - If a leaf name is duplicated, every occurrence gets its full dotted
///   path concatenated as PascalCase (e.g.
///   `$ReplicationAutoCustomerManagedEncryption`,
///   `$ReplicationUserManagedReplicasCustomerManagedEncryption`) so each
///   nested abstract class has a stable, unambiguous identifier.
class _NestedNamer {
  final Map<String, String> _byPath;

  const _NestedNamer._(this._byPath);

  static _NestedNamer build(BlockDef root) {
    final paths = <String>[];
    void walk(BlockDef block, String prefix) {
      for (final n in block.nestedBlocks) {
        final path = prefix.isEmpty ? n.name : '$prefix.${n.name}';
        paths.add(path);
        walk(n.block, path);
      }
    }

    walk(root, '');
    final leafCounts = <String, int>{};
    for (final p in paths) {
      final leaf = p.split('.').last;
      leafCounts[leaf] = (leafCounts[leaf] ?? 0) + 1;
    }
    final byPath = <String, String>{};
    for (final p in paths) {
      final leaf = p.split('.').last;
      if ((leafCounts[leaf] ?? 0) <= 1) {
        byPath[p] = nestedAbstractClassName(leaf);
      } else {
        // Concatenate all path segments PascalCase-style.
        final pascal = p.split('.').map(snakeToPascal).join();
        byPath[p] = '\$$pascal';
      }
    }
    return _NestedNamer._(byPath);
  }

  String classNameForPath(String path) {
    final name = _byPath[path];
    if (name == null) {
      throw StateError('No class name registered for path "$path"');
    }
    return name;
  }
}
