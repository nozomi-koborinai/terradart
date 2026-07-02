import 'package:meta/meta.dart';

import '../ir/resource_def.dart';
import 'catalog_metadata_emitter.dart';
import 'constructor_params.dart';
import 'doc_comment_builder.dart';
import 'naming.dart';
import 'sensitive_set_emitter.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// Maps a curated `(tfType, WrapperOverride, ResourceDef)` triple to the
/// static [CatalogEntryData] that `terradart wrap` renders into
/// `_catalog.g.dart` (via [CatalogMetadataEmitter]).
///
/// This is codegen-domain logic, not CLI orchestration: every field is
/// derived from the SAME sources the wrapper emitters use, so the catalog can
/// never drift from the generated wrappers. It lives here (rather than inside
/// `WrapCommand`) so it has a single responsibility, can track the wrapper
/// emitters directly, and is unit-testable without driving the CLI.
///
/// Field derivation:
/// - `className` / `barrel`: trivially from the IR + override.
/// - `docComment` / `summary`: when `deriveClassDoc` is true, the assembled
///   doc from [buildClassDocComment] (stripped of `///` markers) is used so
///   the catalog mirrors the emitted wrapper doc exactly; a gate-off
///   override falls back to the IR's marker-free `description` (the
///   hand-written `classDocComment` axis is retired); `summary` is its
///   [firstSentence].
/// - `constructorParams`: [catalogConstructorParams] — the emitter's resolved
///   slot order, mapped to actual Dart identifiers.
/// - `sensitiveFields`: [sensitiveFieldPaths] — the shared pure function that
///   the inline `_<r>Sensitive` const also calls (byte-identical masking set).
/// - `nestedTypes`: [scanNestedTypes] of the just-emitted wrapper source.
///
/// [kind] is `'resource'` or `'dataSource'` (passed through to
/// [CatalogEntryData.kind] and rendered as `CatalogKind.<kind>`).
CatalogEntryData buildCatalogEntry({
  required String tfType,
  required WrapperOverride override,
  required ResourceDef def,
  required String kind,
  required String emittedSource,
}) {
  final className = snakeToPascal(tfType);
  // Phase A4: when `deriveClassDoc` is true, the assembled doc is built by
  // `buildClassDocComment` (same function the WrapperEmitter calls) and then
  // stripped of markers — so the catalog entry mirrors the emitted wrapper
  // doc exactly and never drifts. A gate-off override falls back to the
  // IR's marker-free `description` (the hand-written `classDocComment`
  // fallback was retired with the 2026-07 doc wave).
  final docComment = override.deriveClassDoc
      ? _stripDocMarkers(
          buildClassDocComment(def, curatedDoc: override.curatedDoc),
        )
      : (def.description ?? '');
  return CatalogEntryData(
    tfType: tfType,
    className: className,
    barrel: override.outputDir,
    kind: kind,
    summary: firstSentence(docComment),
    docComment: docComment,
    constructorParams: catalogConstructorParams(def, override),
    nestedTypes: scanNestedTypes(emittedSource, mainClass: className),
    // Data sources have no extraSensitiveFields axis; for resources this is
    // the same value forwarded to WrapperEmitter.emit, and the function is the
    // exact one the inline const uses, so the lists are byte-identical.
    sensitiveFields: sensitiveFieldPaths(
      def,
      extraSensitiveFields: override.extraSensitiveFields,
    ),
  );
}

/// Constructor parameter names in emitted order: `localName` first, then each
/// resolved slot's Dart identifier.
///
/// Mirrors `WrapperEmitter`'s slot resolution: a name present in
/// `override.customSlots` takes its identifier from the slot's verbatim
/// `paramDeclaration` (handling renames like `host_rule` → `hostRules` and
/// virtual slots like scheduler_job's `target`); every other name is an IR
/// slot rendered as `snakeToCamel(name)`. The super-parameter bookends
/// (`lifecycle`, `dependsOn`) are excluded — only `localName` is prepended,
/// matching the `CatalogEntry.constructorParams` contract.
@visibleForTesting
List<String> catalogConstructorParams(
  ResourceDef def,
  WrapperOverride override,
) {
  final slots = orderedConstructorParams(def, override.paramOrder);
  final customSlots = override.customSlots ?? const <String, CustomSlot>{};
  final params = <String>['localName'];
  for (final name in slots) {
    final custom = customSlots[name];
    params.add(
      custom != null
          ? paramIdentifier(custom.paramDeclaration)
          : snakeToCamel(name),
    );
  }
  return params;
}

/// Extracts the parameter identifier from a `CustomSlot.paramDeclaration`,
/// e.g. `'List<ComputeUrlMapUrlMapHostRule>? hostRules'` → `hostRules`,
/// `'required SchedulerTarget target'` → `target`. The identifier is the last
/// `\w+` token (declarations never carry a trailing default value — see
/// `CustomSlot.paramDeclaration` contract).
@visibleForTesting
String paramIdentifier(String paramDeclaration) {
  final matches =
      RegExp(r'[A-Za-z_$][A-Za-z0-9_$]*').allMatches(paramDeclaration).toList();
  return matches.isEmpty ? paramDeclaration.trim() : matches.last.group(0)!;
}

/// Scans [source] (formatted wrapper Dart) for top-level type declarations and
/// returns their names in declaration order, EXCLUDING the main wrapper class
/// [mainClass]. These are exactly the resource-specific helper types
/// (`class ComputeUrlMapUrlMapHostRule`, `enum UrlMapRedirectResponseCode`,
/// `sealed class CloudSchedulerJobSchedulerTarget`, …) emitted alongside the
/// wrapper. Resources with no named helpers yield `[]`.
///
/// Assumptions (the input is always wrap-pipeline output, so both hold):
/// 1. The source is **dart-formatted**, so every top-level declaration starts
///    at **column 0** and nested members are indented — the regex is anchored
///    with `^` (multiLine) to match only column-0 declarations.
/// 2. The declaration keyword is `class`, `enum`, or `mixin`, optionally
///    prefixed by the qualifiers `final` / `sealed` / `abstract` / `base` /
///    `interface`. `typedef` and `extension` are intentionally NOT matched:
///    the wrapper emitters never emit them as helper types, and a catalog
///    `nestedType` is meant to name a constructible helper the agent can
///    reference. Add them to the alternation if that ever changes.
@visibleForTesting
List<String> scanNestedTypes(String source, {required String mainClass}) {
  final re = RegExp(
    r'^(?:final\s+|sealed\s+|abstract\s+|base\s+|interface\s+|mixin\s+)*'
    r'(?:class|enum|mixin)\s+([A-Za-z_$][A-Za-z0-9_$]*)',
    multiLine: true,
  );
  final out = <String>[];
  for (final m in re.allMatches(source)) {
    final name = m.group(1)!;
    if (name == mainClass) continue;
    out.add(name);
  }
  return out;
}

/// Strips Dart doc-comment markers from [doc]: each line's leading whitespace
/// + `///` (and a single following space) is removed. Used to turn the
/// assembled derived doc (lead + description + `curatedDoc`) into clean
/// markdown for the catalog. Trailing whitespace on the whole block is
/// trimmed.
///
/// The assembled doc only ever holds triple-slash (`///`) lines, so the regex
/// is tightened to `///` exactly — it does NOT strip plain `//` comment lines
/// (those never appear in a doc comment and stripping them would corrupt any
/// `//`-prefixed prose a curator wrote inside a fenced code block).
String _stripDocMarkers(String doc) {
  final lines = doc.split('\n').map((line) {
    final m = RegExp(r'^\s*///\s?').firstMatch(line);
    return m == null ? line : line.substring(m.end);
  });
  return lines.join('\n').trimRight();
}

/// Abbreviations whose trailing period is NOT a sentence boundary. Kept
/// deliberately small (no general tokenizer): just the few that show up in
/// technical prose. Compared case-insensitively against the token immediately
/// preceding a candidate `.`.
const _sentenceAbbreviations = {'e.g', 'i.e', 'etc', 'vs'};

/// First sentence of [doc] (already marker-free markdown), collapsed to a
/// single line.
///
/// Scans for the first sentence terminator — a period followed by whitespace —
/// that does NOT end one of [_sentenceAbbreviations] (so
/// `"Configures e.g. the thing. Real end."` yields
/// `"Configures e.g. the thing."`, not `"Configures e.g."`). Falls back to a
/// trailing period, then to the whole (newline-collapsed) string when no
/// terminator is found. Empty input yields `''`.
///
/// This is intentionally a heuristic, not a sentence segmenter: it handles the
/// common abbreviation case and the plain case, and degrades to "return the
/// whole doc, collapsed" for anything exotic.
@visibleForTesting
String firstSentence(String doc) {
  final trimmed = doc.trimLeft();
  if (trimmed.isEmpty) return '';

  var searchFrom = 0;
  while (searchFrom < trimmed.length) {
    final dot = trimmed.indexOf('.', searchFrom);
    if (dot < 0) break;
    // A terminator is a period at end-of-string or followed by whitespace.
    final atEnd = dot == trimmed.length - 1;
    final followedByWhitespace =
        !atEnd && RegExp(r'\s').hasMatch(trimmed[dot + 1]);
    if (atEnd || followedByWhitespace) {
      if (!_endsWithAbbreviation(trimmed, dot)) {
        return _collapse(trimmed.substring(0, dot + 1));
      }
    }
    searchFrom = dot + 1;
  }
  // No real sentence boundary found: return the whole doc, collapsed.
  return _collapse(trimmed);
}

/// Whether the token ending at index [dotIndex] (the position of a candidate
/// terminator `.`) is one of [_sentenceAbbreviations]. The token is the run of
/// non-whitespace characters ending at [dotIndex], with its own trailing `.`
/// stripped (so `e.g.` matches `e.g`).
bool _endsWithAbbreviation(String text, int dotIndex) {
  var start = dotIndex;
  while (start > 0 && !RegExp(r'\s').hasMatch(text[start - 1])) {
    start--;
  }
  // token includes the candidate period at dotIndex; drop it for comparison.
  final token = text.substring(start, dotIndex).toLowerCase();
  return _sentenceAbbreviations.contains(token);
}

/// Collapses interior whitespace runs (incl. newlines) to single spaces and
/// trims the ends.
String _collapse(String s) => s.replaceAll(RegExp(r'\s+'), ' ').trim();
