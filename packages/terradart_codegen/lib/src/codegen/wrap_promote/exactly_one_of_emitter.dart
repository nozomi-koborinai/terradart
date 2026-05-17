import 'dart:io';

import '../../ir/attribute.dart';
import '../../ir/nested_block.dart';
import '../../ir/resource_def.dart';
import '../dart_type_writer.dart';
import '../naming.dart';

/// Emits the prelude sealed-class block + customSlots entry for one
/// `exactly_one_of` group.
///
/// Phase 4.3: skeleton level. Class names, constructor parameter lists, and
/// `blockKey` getters are fully generated from the IR. The `encode()` body
/// is left as `UnimplementedError` for the human reviewer to fill in (the
/// TfArg encoding pattern varies per resource and is too risky to auto-fill).
class ExactlyOneOfEmitter {
  const ExactlyOneOfEmitter();

  /// Returns a multi-line string (terminated by `\n`) ready to embed in the
  /// wrap-promote additions section.
  String emit({
    required List<String> groupMembers,
    required String resourcePascal,
    required ResourceDef def,
  }) {
    if (groupMembers.length < 2) {
      stderr.writeln(
        'wrap-promote: exactly_one_of group has <2 members; skipping.',
      );
      return '# Skipped exactly_one_of group: fewer than 2 members.\n';
    }

    final commonSuffix = _longestCommonSnakeSuffix(groupMembers);
    final cleanSuffix = commonSuffix.replaceAll(RegExp(r'^_+'), '');
    final sealedName =
        '$resourcePascal${cleanSuffix.isEmpty ? 'Choice' : snakeToPascal(cleanSuffix)}';
    final slotName = cleanSuffix.isEmpty ? 'choice' : cleanSuffix;

    final buf = StringBuffer();
    buf.writeln('# --- exactly_one_of group: ${groupMembers.join(', ')} ---');
    buf.writeln(
        '# TODO(wrap-promote): rename `$sealedName` and its helper classes below to domain names.');
    buf.writeln('prelude: |');
    buf.writeln('  sealed class $sealedName {');
    buf.writeln('    const $sealedName();');
    buf.writeln('    String get blockKey;');
    buf.writeln('    Map<String, Object?> encode();');
    buf.writeln('  }');

    for (final member in groupMembers) {
      final nestedBlock = _findNestedBlock(def, member);
      if (nestedBlock == null) {
        stderr.writeln(
          'wrap-promote: exactly_one_of member "$member" not in IR nested blocks; skipping.',
        );
        buf.writeln();
        buf.writeln(
            '  // TODO(wrap-promote): nested block `$member` not found in provider schema.');
        continue;
      }
      final memberPascal = snakeToPascal(member);
      buf.writeln();
      buf.writeln('  final class $memberPascal extends $sealedName {');
      _emitConstructor(buf, nestedBlock, memberPascal);
      _emitFields(buf, nestedBlock);
      buf.writeln();
      buf.writeln('    @override');
      buf.writeln("    String get blockKey => '$member';");
      buf.writeln();
      buf.writeln('    @override');
      buf.writeln('    Map<String, Object?> encode() {');
      buf.writeln(
          '      // TODO(wrap-promote): implement encode for $memberPascal.');
      buf.writeln(
          "      // Pattern: { if (optional != null) 'optional_key': optional!.toTfJson(), 'required_key': required.toTfJson(), ... }");
      buf.writeln(
          "      throw UnimplementedError('TODO(wrap-promote): implement encode for $memberPascal');");
      buf.writeln('    }');
      buf.writeln('  }');
    }
    buf.writeln();
    buf.writeln('customSlots:');
    buf.writeln('  $slotName:');
    buf.writeln("    paramDeclaration: 'required $sealedName $slotName'");
    buf.writeln(
        '    argMapEntry: "$slotName.blockKey: TfArg.literal($slotName.encode()),"');
    return buf.toString();
  }

  void _emitConstructor(StringBuffer buf, BlockDef block, String memberPascal) {
    final List<Attribute> attrs = block.attributes;
    buf.writeln('    const $memberPascal({');
    for (final attr in attrs) {
      final attrName = attr.name;
      final attrRequired = attr.constraints.required;
      final camel = snakeToCamel(attrName);
      buf.writeln(
          attrRequired ? '      required this.$camel,' : '      this.$camel,');
    }
    // Surface nested-block stubs as TODO.
    final List<NestedBlockDef> nestedBlocks = block.nestedBlocks;
    for (final nb in nestedBlocks) {
      buf.writeln(
          '      // TODO(wrap-promote): nested block `${nb.name}` - fill in by hand');
    }
    buf.writeln('    });');
  }

  void _emitFields(StringBuffer buf, BlockDef block) {
    final List<Attribute> attrs = block.attributes;
    for (final attr in attrs) {
      final attrName = attr.name;
      final attrRequired = attr.constraints.required;
      final camel = snakeToCamel(attrName);
      final dartType = writeDartType(attr.type);
      buf.writeln(attrRequired
          ? '    final TfArg<$dartType> $camel;'
          : '    final TfArg<$dartType>? $camel;');
    }
  }

  /// Returns the nested-block whose snake_case name matches [memberName], or
  /// `null` if no such block exists in the resource's IR.
  BlockDef? _findNestedBlock(ResourceDef def, String memberName) {
    for (final nb in def.root.nestedBlocks) {
      if (nb.name == memberName) return nb.block;
    }
    return null;
  }

  /// Returns the longest common snake_case suffix shared by all [members].
  /// Empty string if no common suffix.
  String _longestCommonSnakeSuffix(List<String> members) {
    if (members.isEmpty) return '';
    var suffix = '';
    final first = members.first;
    for (var len = 1; len <= first.length; len++) {
      final candidate = first.substring(first.length - len);
      // Require the candidate to start at a word boundary (`_`) unless it's
      // the entire first member.
      if (!candidate.startsWith('_') && len != first.length) continue;
      if (members.every((m) => m.endsWith(candidate))) {
        suffix = candidate;
      }
    }
    return suffix;
  }
}
