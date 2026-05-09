/// Stage 1 codegen library for terradart.
///
/// Parses Terraform provider schema JSON (primary) plus Magic Modules YAML
/// (secondary) into a unified provider IR. The emitter (`file_emitter.dart`)
/// and the `runCodegen` programmatic entry are layered on top of this IR.
library;

export 'src/codegen/codegen_entry.dart' show runCodegen, CodegenResult;
export 'src/ir/attribute.dart';
export 'src/ir/constraints.dart';
export 'src/ir/nested_block.dart';
export 'src/ir/provider_schema_ir.dart';
export 'src/ir/resource_def.dart';
export 'src/ir/type_def.dart';
export 'src/parser/ir_merger.dart' show IrMerger;
export 'src/parser/mm_yaml_parser.dart' show MmYamlParser, MmResourceOverrides;
export 'src/parser/schema_parser.dart' show SchemaJsonParser;
