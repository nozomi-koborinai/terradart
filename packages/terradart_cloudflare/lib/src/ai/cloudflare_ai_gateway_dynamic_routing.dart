// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_ai_gateway_dynamic_routing`.
const Set<String> _cloudflareAiGatewayDynamicRoutingSensitive = <String>{};

/// Typed helper for the `elements` block of
/// `cloudflare_ai_gateway_dynamic_routing` (derived from provider schema).
@immutable
final class AiGatewayDynamicRoutingElements {
  const AiGatewayDynamicRoutingElements({
    required this.id,
    required this.type,
    required this.outputs,
    this.properties,
  });

  final TfArg<String> id;

  final TfArg<AiGatewayDynamicRoutingElementsType> type;

  final AiGatewayDynamicRoutingElementsOutputs outputs;

  final AiGatewayDynamicRoutingElementsProperties? properties;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'type': type.toTfJson(),
    'outputs': outputs.encode(),
    'properties': ?properties?.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum AiGatewayDynamicRoutingElementsType implements TerraformEnum {
  start('start'),
  conditional('conditional'),
  percentage('percentage'),
  rate('rate'),
  model('model'),
  end('end');

  const AiGatewayDynamicRoutingElementsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `elements.outputs` block of
/// `cloudflare_ai_gateway_dynamic_routing` (derived from provider schema).
@immutable
final class AiGatewayDynamicRoutingElementsOutputs {
  const AiGatewayDynamicRoutingElementsOutputs({
    this.elementId,
    this.fallback,
    this.falseCase,
    this.next,
    this.success,
    this.trueCase,
  });

  final TfArg<String>? elementId;

  final AiGatewayDynamicRoutingElementsOutputsFallback? fallback;

  final AiGatewayDynamicRoutingElementsOutputsFalse? falseCase;

  final AiGatewayDynamicRoutingElementsOutputsNext? next;

  final AiGatewayDynamicRoutingElementsOutputsSuccess? success;

  final AiGatewayDynamicRoutingElementsOutputsTrue? trueCase;

  Map<String, Object?> encode() => {
    'element_id': ?elementId?.toTfJson(),
    'fallback': ?fallback?.encode(),
    'false': ?falseCase?.encode(),
    'next': ?next?.encode(),
    'success': ?success?.encode(),
    'true': ?trueCase?.encode(),
  };
}

/// Typed helper for the `elements.outputs.fallback` block of
/// `cloudflare_ai_gateway_dynamic_routing` (derived from provider schema).
@immutable
final class AiGatewayDynamicRoutingElementsOutputsFallback {
  const AiGatewayDynamicRoutingElementsOutputsFallback({
    required this.elementId,
  });

  final TfArg<String> elementId;

  Map<String, Object?> encode() => {'element_id': elementId.toTfJson()};
}

/// Typed helper for the `elements.outputs.false` block of
/// `cloudflare_ai_gateway_dynamic_routing` (derived from provider schema).
@immutable
final class AiGatewayDynamicRoutingElementsOutputsFalse {
  const AiGatewayDynamicRoutingElementsOutputsFalse({required this.elementId});

  final TfArg<String> elementId;

  Map<String, Object?> encode() => {'element_id': elementId.toTfJson()};
}

/// Typed helper for the `elements.outputs.next` block of
/// `cloudflare_ai_gateway_dynamic_routing` (derived from provider schema).
@immutable
final class AiGatewayDynamicRoutingElementsOutputsNext {
  const AiGatewayDynamicRoutingElementsOutputsNext({required this.elementId});

  final TfArg<String> elementId;

  Map<String, Object?> encode() => {'element_id': elementId.toTfJson()};
}

/// Typed helper for the `elements.outputs.success` block of
/// `cloudflare_ai_gateway_dynamic_routing` (derived from provider schema).
@immutable
final class AiGatewayDynamicRoutingElementsOutputsSuccess {
  const AiGatewayDynamicRoutingElementsOutputsSuccess({
    required this.elementId,
  });

  final TfArg<String> elementId;

  Map<String, Object?> encode() => {'element_id': elementId.toTfJson()};
}

/// Typed helper for the `elements.outputs.true` block of
/// `cloudflare_ai_gateway_dynamic_routing` (derived from provider schema).
@immutable
final class AiGatewayDynamicRoutingElementsOutputsTrue {
  const AiGatewayDynamicRoutingElementsOutputsTrue({required this.elementId});

  final TfArg<String> elementId;

  Map<String, Object?> encode() => {'element_id': elementId.toTfJson()};
}

/// Typed helper for the `elements.properties` block of
/// `cloudflare_ai_gateway_dynamic_routing` (derived from provider schema).
@immutable
final class AiGatewayDynamicRoutingElementsProperties {
  const AiGatewayDynamicRoutingElementsProperties({
    this.aiGatewayDynamicRoutingProvider,
    this.conditions,
    this.key,
    this.limit,
    this.limitType,
    this.model,
    this.retries,
    this.timeout,
    this.window,
  });

  final TfArg<String>? aiGatewayDynamicRoutingProvider;

  final TfArg<String>? conditions;

  final TfArg<String>? key;

  final TfArg<num>? limit;

  final TfArg<AiGatewayDynamicRoutingElementsPropertiesLimitType>? limitType;

  final TfArg<String>? model;

  final TfArg<num>? retries;

  final TfArg<num>? timeout;

  final TfArg<num>? window;

  Map<String, Object?> encode() => {
    'ai_gateway_dynamic_routing_provider': ?aiGatewayDynamicRoutingProvider
        ?.toTfJson(),
    'conditions': ?conditions?.toTfJson(),
    'key': ?key?.toTfJson(),
    'limit': ?limit?.toTfJson(),
    'limit_type': ?limitType?.toTfJson(),
    'model': ?model?.toTfJson(),
    'retries': ?retries?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
    'window': ?window?.toTfJson(),
  };
}

/// `limit_type` — derived from the provider schema description.
enum AiGatewayDynamicRoutingElementsPropertiesLimitType
    implements TerraformEnum {
  count('count'),
  cost('cost');

  const AiGatewayDynamicRoutingElementsPropertiesLimitType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_ai_gateway_dynamic_routing`.
///
/// Accepted Permissions
///
/// - `AI Gateway Read` - `AI Gateway Write`
final class CloudflareAiGatewayDynamicRouting extends Resource {
  static const String tfType = 'cloudflare_ai_gateway_dynamic_routing';

  CloudflareAiGatewayDynamicRouting({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> gatewayId,
    required TfArg<String> name,
    required List<AiGatewayDynamicRoutingElements> elements,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'gateway_id': gatewayId,
           'name': name,
           'elements': TfArg.literal([for (final e in elements) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAiGatewayDynamicRoutingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAiGatewayDynamicRouting>`.
  RefTo<CloudflareAiGatewayDynamicRouting> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `success` attribute.
  TfRef<bool> get success => TfRef.attribute<bool>(this, 'success');
}
