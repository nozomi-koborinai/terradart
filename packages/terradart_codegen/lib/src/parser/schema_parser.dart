import 'dart:convert';

import '../ir/attribute.dart';
import '../ir/constraints.dart';
import '../ir/nested_block.dart';
import '../ir/provider_schema_ir.dart';
import '../ir/resource_def.dart';
import '_type_decoder.dart';

/// Parses `terraform providers schema -json` output into a
/// [ProviderSchemaIR].
///
/// The `provider_version` is left empty in the output; callers (the merger
/// or the codegen entry) must supply it from the CLI flag because schema
/// JSON does not include it.
class SchemaJsonParser {
  const SchemaJsonParser();

  ProviderSchemaIR parseString(String json, {String providerVersion = ''}) {
    final root = jsonDecode(json) as Map<String, Object?>;
    final schemas = (root['provider_schemas'] as Map).cast<String, Object?>();
    if (schemas.isEmpty) {
      throw const FormatException('No provider_schemas found.');
    }
    if (schemas.length > 1) {
      throw FormatException(
        'Expected exactly one provider, got ${schemas.length}: '
        '${schemas.keys.toList()}',
      );
    }
    final providerKey = schemas.keys.first; // 'registry.../hashicorp/google'
    final providerSource = _stripRegistryPrefix(providerKey);
    final providerName = providerSource.split('/').last;
    final providerBody = (schemas[providerKey] as Map).cast<String, Object?>();

    final resources = <String, ResourceDef>{};
    final dataSources = <String, ResourceDef>{};

    final resSchemas =
        (providerBody['resource_schemas'] as Map?)?.cast<String, Object?>() ??
            const {};
    for (final entry in resSchemas.entries) {
      resources[entry.key] = _parseResource(
        entry.key,
        (entry.value as Map).cast<String, Object?>(),
      );
    }
    final dataSchemas = (providerBody['data_source_schemas'] as Map?)
            ?.cast<String, Object?>() ??
        const {};
    for (final entry in dataSchemas.entries) {
      dataSources[entry.key] = _parseResource(
        entry.key,
        (entry.value as Map).cast<String, Object?>(),
      );
    }

    return ProviderSchemaIR(
      providerName: providerName,
      providerSource: providerSource,
      providerVersion: providerVersion,
      resources: resources,
      dataSources: dataSources,
    );
  }

  ResourceDef _parseResource(String name, Map<String, Object?> body) {
    final block = (body['block'] as Map).cast<String, Object?>();
    return ResourceDef(
      terraformType: name,
      root: _parseBlock(block),
      description: block['description'] as String?,
      deprecationMessage: body['deprecation_message'] as String?,
    );
  }

  BlockDef _parseBlock(Map<String, Object?> block) {
    final attrs = <Attribute>[];
    final attrMap =
        (block['attributes'] as Map?)?.cast<String, Object?>() ?? const {};
    for (final entry in attrMap.entries) {
      attrs.add(_parseAttribute(
        entry.key,
        (entry.value as Map).cast<String, Object?>(),
      ));
    }
    final nested = <NestedBlockDef>[];
    final blockMap =
        (block['block_types'] as Map?)?.cast<String, Object?>() ?? const {};
    for (final entry in blockMap.entries) {
      nested.add(_parseNestedBlock(
        entry.key,
        (entry.value as Map).cast<String, Object?>(),
      ));
    }
    return BlockDef(
      attributes: attrs,
      nestedBlocks: nested,
      description: block['description'] as String?,
    );
  }

  Attribute _parseAttribute(String name, Map<String, Object?> body) {
    return Attribute(
      name: name,
      type: decodeSchemaJsonType(body['type']),
      constraints: Constraints(
        required: body['required'] as bool? ?? false,
        optional: body['optional'] as bool? ?? false,
        computed: body['computed'] as bool? ?? false,
        sensitive: body['sensitive'] as bool? ?? false,
        writeOnly: body['write_only'] as bool? ?? false,
        deprecationMessage: _deprecationMessage(body),
      ),
      description: body['description'] as String?,
      defaultValue: body['default'],
    );
  }

  NestedBlockDef _parseNestedBlock(String name, Map<String, Object?> body) {
    final mode = switch (body['nesting_mode']) {
      'single' => NestingMode.single,
      'list' => NestingMode.list,
      'set' => NestingMode.set,
      'map' => NestingMode.map,
      'group' => NestingMode.group,
      final other => throw FormatException(
          'Unknown nesting_mode: $other for nested block $name',
        ),
    };
    return NestedBlockDef(
      name: name,
      nesting: mode,
      minItems: (body['min_items'] as num?)?.toInt(),
      maxItems: (body['max_items'] as num?)?.toInt(),
      block: _parseBlock((body['block'] as Map).cast<String, Object?>()),
      constraints: Constraints(
        required: (body['min_items'] as num? ?? 0) >= 1,
        optional: (body['min_items'] as num? ?? 0) == 0,
        deprecationMessage: _deprecationMessage(body),
      ),
      description: (body['block'] as Map?)?['description'] as String?,
    );
  }

  String? _deprecationMessage(Map<String, Object?> body) {
    final deprecated = body['deprecated'];
    if (deprecated == true) {
      return body['deprecation_message'] as String? ?? 'Deprecated.';
    }
    return body['deprecation_message'] as String?;
  }

  String _stripRegistryPrefix(String key) {
    const prefix = 'registry.terraform.io/';
    return key.startsWith(prefix) ? key.substring(prefix.length) : key;
  }
}
