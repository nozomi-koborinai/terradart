import 'ast.dart';
import 'diagnostics.dart';
import 'parser.dart';
import 'source.dart';
import 'tf_json.dart';

/// A Terraform module: the top-level structure of one or more files, from
/// either front-end ([parseHcl] or [decodeTfJson]).
///
/// Blocks keep their [Block] node and the [HclFile] they came from, so a
/// caller can copy any of them back out verbatim (`sourceText`). Nothing is
/// evaluated or merged: `*_override.tf` files are read like any other file,
/// and duplicate addresses are kept as written.
final class TfModule {
  TfModule.fromFiles(List<HclFile> files) : files = List.unmodifiable(files) {
    for (final file in files) {
      for (final entry in file.body.entries) {
        _add(file, entry);
      }
    }
  }

  /// Parses [source] as HCL native syntax.
  factory TfModule.fromHcl(String source, {String? fileName}) =>
      TfModule.fromFiles([parseHcl(source, fileName: fileName)]);

  /// Decodes [json] as a `*.tf.json` file.
  factory TfModule.fromTfJson(String json, {String? fileName}) =>
      TfModule.fromFiles([decodeTfJson(json, fileName: fileName)]);

  final List<HclFile> files;
  final terraform = <TerraformBlock>[];
  final providers = <ProviderBlock>[];
  final variables = <VariableBlock>[];
  final locals = <LocalValue>[];
  final outputs = <OutputBlock>[];
  final resources = <ResourceBlock>[];
  final dataSources = <DataBlock>[];
  final moduleCalls = <ModuleCallBlock>[];

  /// `moved`, `import`, `removed`, `check` and any block type this model
  /// does not interpret, in source order.
  final opaque = <OpaqueBlock>[];

  /// Top-level attributes, which Terraform does not allow; kept so a caller
  /// can report them.
  final strayAttributes = <Attribute>[];

  /// Blocks whose label count is wrong for their type (a `resource` with
  /// one label, ...). They are also listed in [opaque].
  final warnings = <HclDiagnostic>[];

  void _add(HclFile file, BodyEntry entry) {
    switch (entry) {
      case Attribute():
        strayAttributes.add(entry);
      case Block(:final type, :final labels):
        switch (type) {
          case 'terraform' when labels.isEmpty:
            terraform.add(TerraformBlock._(file, entry));
          case 'provider' when labels.length == 1:
            providers.add(ProviderBlock._(file, entry));
          case 'variable' when labels.length == 1:
            variables.add(VariableBlock._(file, entry));
          case 'output' when labels.length == 1:
            outputs.add(OutputBlock._(file, entry));
          case 'module' when labels.length == 1:
            moduleCalls.add(ModuleCallBlock._(file, entry));
          case 'resource' when labels.length == 2:
            resources.add(ResourceBlock._(file, entry));
          case 'data' when labels.length == 2:
            dataSources.add(DataBlock._(file, entry));
          case 'locals' when labels.isEmpty:
            for (final a in entry.body.attributes) {
              locals.add(LocalValue._(file, entry, a));
            }
          case 'terraform' ||
              'provider' ||
              'variable' ||
              'output' ||
              'module' ||
              'resource' ||
              'data' ||
              'locals':
            warnings.add(
              HclDiagnostic(
                '"$type" block has ${labels.length} label(s)',
                entry.range,
                fileName: file.fileName,
              ),
            );
            opaque.add(OpaqueBlock._(file, entry));
          default:
            opaque.add(OpaqueBlock._(file, entry));
        }
    }
  }

  /// The first `backend "type" {}` block of any `terraform {}` block.
  Block? get backend {
    for (final t in terraform) {
      final b = t.backend;
      if (b != null) return b;
    }
    return null;
  }

  /// `required_providers` entries (name → expression) merged over every
  /// `terraform {}` block, in order.
  Map<String, Expr> get requiredProviders {
    final out = <String, Expr>{};
    for (final t in terraform) {
      out.addAll(t.requiredProviders);
    }
    return out;
  }

  /// The first `required_version` of any `terraform {}` block.
  Expr? get requiredVersion {
    for (final t in terraform) {
      final v = t.requiredVersion;
      if (v != null) return v;
    }
    return null;
  }

  /// `resource "type" "name"` by address (`type.name`), first wins.
  ResourceBlock? resource(String type, String name) {
    for (final r in resources) {
      if (r.type == type && r.name == name) return r;
    }
    return null;
  }

  /// `data "type" "name"` by address, first wins.
  DataBlock? data(String type, String name) {
    for (final d in dataSources) {
      if (d.type == type && d.name == name) return d;
    }
    return null;
  }

  VariableBlock? variable(String name) {
    for (final v in variables) {
      if (v.name == name) return v;
    }
    return null;
  }

  OutputBlock? output(String name) {
    for (final o in outputs) {
      if (o.name == name) return o;
    }
    return null;
  }

  LocalValue? local(String name) {
    for (final l in locals) {
      if (l.name == name) return l;
    }
    return null;
  }
}

/// A top-level Terraform block together with the file it came from.
sealed class TfBlock {
  const TfBlock(this.file, this.block);

  final HclFile file;
  final Block block;

  Body get body => block.body;
  SourceRange get range => block.range;

  /// The block exactly as written (empty for JSON-decoded files).
  String get sourceText => file.textOf(block);

  /// The body of a nested argument written either as a block
  /// (`lifecycle { ... }`) or, in JSON syntax, as an object attribute
  /// (`"lifecycle": { ... }`); `null` when absent.
  Body? nestedBody(String name) {
    final b = body.block(name);
    if (b != null) return b.body;
    final a = body.attribute(name);
    final v = a?.value;
    if (v is ObjectExpr) return bodyFromObject(v);
    return null;
  }

  /// The attribute value named [name], if any.
  Expr? argument(String name) => body.attribute(name)?.value;
}

/// Views an [ObjectExpr] as a [Body] of attributes (JSON nested arguments).
Body bodyFromObject(ObjectExpr object) => Body([
  for (final item in object.items)
    if (item.keyName != null)
      Attribute(
        item.keyName!,
        item.value,
        item.range,
        nameRange: item.key.range,
      ),
], object.range);

/// `terraform { ... }`
final class TerraformBlock extends TfBlock {
  const TerraformBlock._(super.file, super.block);

  Expr? get requiredVersion => argument('required_version');

  /// `backend "type" { ... }`, if any — also from the JSON form
  /// `"backend": {"type": { ... }}`, which is surfaced as an equivalent
  /// synthesized [Block] (no source range).
  Block? get backend {
    final b = body.block('backend');
    if (b != null) return b;
    final v = body.attribute('backend')?.value;
    if (v is! ObjectExpr || v.items.length != 1) return null;
    final item = v.items.single;
    final type = item.keyName;
    final settings = item.value;
    if (type == null || settings is! ObjectExpr) return null;
    return Block(
      'backend',
      [BlockLabel(type, item.key.range, quoted: true)],
      bodyFromObject(settings),
      v.range,
      typeRange: SourceRange.none,
    );
  }

  /// `cloud { ... }`, if any — also from the JSON form `"cloud": { ... }`.
  Block? get cloud {
    final b = body.block('cloud');
    if (b != null) return b;
    final v = body.attribute('cloud')?.value;
    if (v is! ObjectExpr) return null;
    return Block(
      'cloud',
      const [],
      bodyFromObject(v),
      v.range,
      typeRange: SourceRange.none,
    );
  }

  /// `required_providers { name = {...} }` as name → expression.
  Map<String, Expr> get requiredProviders {
    final nested = nestedBody('required_providers');
    if (nested == null) return const {};
    return {for (final a in nested.attributes) a.name: a.value};
  }
}

/// `provider "name" { ... }`
final class ProviderBlock extends TfBlock {
  const ProviderBlock._(super.file, super.block);

  String get name => block.labels.single.text;

  /// The `alias` argument as a string, when it is a literal.
  String? get alias => argument('alias')?.constantString;
}

/// `variable "name" { ... }`
final class VariableBlock extends TfBlock {
  const VariableBlock._(super.file, super.block);

  String get name => block.labels.single.text;
  Expr? get type => argument('type');
  Expr? get defaultValue => argument('default');
  Expr? get description => argument('description');
  Expr? get sensitive => argument('sensitive');
}

/// One `name = expr` inside a `locals { ... }` block.
final class LocalValue {
  const LocalValue._(this.file, this.block, this.attribute);

  final HclFile file;

  /// The enclosing `locals` block.
  final Block block;
  final Attribute attribute;

  String get name => attribute.name;
  Expr get value => attribute.value;
}

/// `output "name" { ... }`
final class OutputBlock extends TfBlock {
  const OutputBlock._(super.file, super.block);

  String get name => block.labels.single.text;
  Expr? get value => argument('value');
  Expr? get description => argument('description');
  Expr? get sensitive => argument('sensitive');
}

/// Arguments shared by resources, data sources and module calls.
mixin _MetaArguments on TfBlock {
  Expr? get count => argument('count');
  Expr? get forEach => argument('for_each');
  Expr? get provider => argument('provider');
  Expr? get dependsOn => argument('depends_on');
}

/// `resource "type" "name" { ... }`
final class ResourceBlock extends TfBlock with _MetaArguments {
  const ResourceBlock._(super.file, super.block);

  String get type => block.labels[0].text;
  String get name => block.labels[1].text;
  String get address => '$type.$name';

  /// `lifecycle { ... }` (or the JSON object form).
  Body? get lifecycle => nestedBody('lifecycle');

  /// `dynamic "name" { ... }` blocks.
  List<Block> get dynamicBlocks => body.blocksOf('dynamic');
}

/// `data "type" "name" { ... }`
final class DataBlock extends TfBlock with _MetaArguments {
  const DataBlock._(super.file, super.block);

  String get type => block.labels[0].text;
  String get name => block.labels[1].text;
  String get address => 'data.$type.$name';
}

/// `module "name" { ... }`
final class ModuleCallBlock extends TfBlock with _MetaArguments {
  const ModuleCallBlock._(super.file, super.block);

  String get name => block.labels.single.text;
  Expr? get source => argument('source');
  Expr? get version => argument('version');
}

/// A block kept verbatim: `moved`, `import`, `removed`, `check`, or an
/// unknown / malformed block.
final class OpaqueBlock extends TfBlock {
  const OpaqueBlock._(super.file, super.block);

  String get type => block.type;
}
