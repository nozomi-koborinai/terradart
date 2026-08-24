import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/resource_def.dart';

/// Returns the ordered list of snake-case slot names for a wrapper constructor.
///
/// This encodes the single source-of-truth for parameter ordering used by
/// [WrapperEmitter] (and, later, by the catalog metadata emitter) so both
/// surfaces produce an identical ordering.
///
/// The returned list excludes the super-parameters that frame the slot list
/// (`localName`, `lifecycle`, `dependsOn`) — those are always emitted by the
/// caller as fixed bookends.
///
/// ## Ordering rule
///
/// If [paramOrder] is non-null, a copy of it is returned verbatim. The
/// override list may include virtual slot names (not present in the IR) and
/// may omit IR slots that the override intentionally suppresses
/// (virtual-fan-out pattern). Resolution of each name (IR slot vs. customSlot)
/// is the caller's responsibility.
///
/// If [paramOrder] is null, IR-natural order is used:
/// 1. Eligible attributes from [ResourceDef.root.attributes], in IR order
///    (alphabetical, because the Terraform JSON schema parser preserves the
///    JSON key order, which is alphabetical).
/// 2. Eligible nested blocks from [ResourceDef.root.nestedBlocks], in IR
///    order (also alphabetical).
///
/// **Filtering rules** (applied only when [paramOrder] is null):
/// - Attributes are excluded if: [Constraints.computedOnly] holds
///   (computed-only — no input role) or `name == 'id'` **and** the slot is
///   not required (synthetic identity exposed via a TfRef getter). A
///   **required** `id` stays in the constructor — plugin-framework providers
///   such as Cloudflare use it as a create-time input (gateway id, image
///   id, …).
/// - Nested blocks are excluded if: `name == 'timeouts'` (Terraform-internal
///   SDK metadata, not a user-facing input).
List<String> orderedConstructorParams(
    ResourceDef def, List<String>? paramOrder) {
  // Defensive copy: callers (e.g. the catalog emitter) must not be able to
  // mutate the override's stored `paramOrder` list through the return value.
  if (paramOrder != null) return List<String>.of(paramOrder);
  return _naturalOrderNames(def);
}

/// IR-natural order: eligible attributes first, then eligible nested blocks.
List<String> _naturalOrderNames(ResourceDef def) {
  final out = <String>[];
  for (final attr in def.root.attributes) {
    if (skipAttribute(attr)) continue;
    out.add(attr.name);
  }
  for (final nested in def.root.nestedBlocks) {
    if (skipNestedBlock(nested)) continue;
    out.add(nested.name);
  }
  return out;
}

/// Returns true when [attr] must be excluded from the constructor / catalog.
///
/// Excludes computed-only attributes ([Constraints.computedOnly] — no input
/// role) and a **synthetic** `id` (optional/computed identity getter). A
/// required `id` is a user-supplied create/lookup argument and stays in the
/// constructor. Shared with [WrapperEmitter] / [DataSourceWrapperEmitter]
/// (and the catalog metadata emitter) so all surfaces filter identically.
bool skipAttribute(Attribute attr) {
  final isSyntheticId = attr.name == 'id' && !attr.constraints.required;
  return attr.constraints.computedOnly || isSyntheticId;
}

/// Data-source skip is the same filter as [skipAttribute]: computed-only
/// attributes, and `id` only when it is not a required lookup key.
///
/// Data sources reuse `id` as the lookup argument on singular reads (e.g.
/// `appwrite_auth_team`); resource wrappers keep a required create-time
/// `id` the same way (e.g. `cloudflare_ai_gateway`). Shared with
/// [DataSourceWrapperEmitter] and the catalog metadata emitter so those
/// surfaces cannot drift.
bool skipDataSourceAttribute(Attribute attr) => skipAttribute(attr);

/// Ordered snake-case slot names for a **data source** wrapper constructor.
///
/// Same [paramOrder] contract as [orderedConstructorParams]: a non-null
/// override list is returned verbatim. Natural order uses
/// [skipDataSourceAttribute] instead of [skipAttribute] so a required
/// lookup `id` stays in the constructor and the catalog.
List<String> orderedDataSourceConstructorParams(
  ResourceDef def,
  List<String>? paramOrder,
) {
  if (paramOrder != null) return List<String>.of(paramOrder);
  final out = <String>[];
  for (final attr in def.root.attributes) {
    if (skipDataSourceAttribute(attr)) continue;
    out.add(attr.name);
  }
  for (final nested in def.root.nestedBlocks) {
    if (skipNestedBlock(nested)) continue;
    out.add(nested.name);
  }
  return out;
}

/// Returns true when [block] must be excluded from the constructor / catalog.
///
/// Excludes the Terraform-internal `timeouts` block (SDK metadata rather
/// than a user-facing input) and computed-only blocks — plugin-framework
/// `nested_type` attributes normalize into nested blocks, so a read-only
/// object attribute (e.g. cloudflare's `meta`) carries
/// [Constraints.computedOnly] and has no input role, mirroring
/// [skipAttribute]. Shared with [WrapperEmitter] (and the catalog metadata
/// emitter) so all surfaces filter identically.
bool skipNestedBlock(NestedBlockDef block) {
  return block.name == 'timeouts' || block.constraints.computedOnly;
}
