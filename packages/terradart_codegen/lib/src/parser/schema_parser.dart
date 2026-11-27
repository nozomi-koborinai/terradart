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

  ProviderSchemaIR parseString(String json, {String providerVersion = ''}) =>
      parseMap(
        jsonDecode(json) as Map<String, Object?>,
        providerVersion: providerVersion,
      );

  ProviderSchemaIR parseMap(
    Map<String, Object?> root, {
    String providerVersion = '',
  }) {
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
    final providerKey = schemas.keys.first;
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
    final dataSchemas =
        (providerBody['data_source_schemas'] as Map?)
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
      description: _sanitizeDescription(block['description'] as String?),
      deprecationMessage: body['deprecation_message'] as String?,
    );
  }

  // hashicorp/google schemas occasionally ship over-escaped apostrophes (\');
  // leave $ intact because enum wire values are parsed from descriptions.
  static String? _sanitizeDescription(String? s) {
    if (s == null) return null;
    return s.replaceAll(r"\'", "'");
  }

  BlockDef _parseBlock(Map<String, Object?> block) {
    final attrs = <Attribute>[];
    final nested = <NestedBlockDef>[];
    final attrMap =
        (block['attributes'] as Map?)?.cast<String, Object?>() ?? const {};
    for (final entry in attrMap.entries) {
      final body = (entry.value as Map).cast<String, Object?>();
      if (body.containsKey('nested_type')) {
        nested.add(_parseNestedAttribute(entry.key, body));
      } else {
        attrs.add(_parseAttribute(entry.key, body));
      }
    }
    final blockMap =
        (block['block_types'] as Map?)?.cast<String, Object?>() ?? const {};
    for (final entry in blockMap.entries) {
      nested.add(
        _parseNestedBlock(
          entry.key,
          (entry.value as Map).cast<String, Object?>(),
        ),
      );
    }
    return BlockDef(
      attributes: attrs,
      nestedBlocks: nested,
      description: _sanitizeDescription(block['description'] as String?),
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
      description: _sanitizeDescription(body['description'] as String?),
      defaultValue: body['default'],
    );
  }

  // Terraform Plugin Framework expresses object attributes via nested_type
  // rather than block_types; map required to minItems: 1 to match SDKv2 blocks.
  NestedBlockDef _parseNestedAttribute(String name, Map<String, Object?> body) {
    final nestedType = (body['nested_type'] as Map).cast<String, Object?>();
    final required = body['required'] as bool? ?? false;
    return NestedBlockDef(
      name: name,
      nesting: _decodeNestingMode(nestedType['nesting_mode'], name),
      minItems: required ? 1 : null,
      maxItems: null,
      block: _parseBlock(nestedType),
      constraints: Constraints(
        required: required,
        optional: body['optional'] as bool? ?? false,
        computed: body['computed'] as bool? ?? false,
        sensitive: body['sensitive'] as bool? ?? false,
        deprecationMessage: _deprecationMessage(body),
      ),
      description: _sanitizeDescription(body['description'] as String?),
    );
  }

  NestingMode _decodeNestingMode(Object? raw, String name) => switch (raw) {
    'single' => NestingMode.single,
    'list' => NestingMode.list,
    'set' => NestingMode.set,
    'map' => NestingMode.map,
    'group' => NestingMode.group,
    final other => throw FormatException(
      'Unknown nesting_mode: $other for nested block $name',
    ),
  };

  NestedBlockDef _parseNestedBlock(String name, Map<String, Object?> body) {
    return NestedBlockDef(
      name: name,
      nesting: _decodeNestingMode(body['nesting_mode'], name),
      minItems: (body['min_items'] as num?)?.toInt(),
      maxItems: (body['max_items'] as num?)?.toInt(),
      block: _parseBlock((body['block'] as Map).cast<String, Object?>()),
      constraints: Constraints(
        required: (body['min_items'] as num? ?? 0) >= 1,
        optional: (body['min_items'] as num? ?? 0) == 0,
        deprecationMessage: _deprecationMessage(body),
      ),
      description: _sanitizeDescription(
        (body['block'] as Map?)?['description'] as String?,
      ),
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
