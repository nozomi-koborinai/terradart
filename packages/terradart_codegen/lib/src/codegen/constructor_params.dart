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
///   (computed-only — no input role) or `name == 'id'` (identity field
///   exposed via TfRef getter, not a constructor arg).
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
/// role) and the synthetic `id` identity field (exposed via a TfRef getter,
/// not as a constructor arg). Shared with [WrapperEmitter] (and the catalog
/// metadata emitter) so all surfaces filter identically.
bool skipAttribute(Attribute attr) {
  final isIdAttribute = attr.name == 'id';
  return attr.constraints.computedOnly || isIdAttribute;
}

/// Returns true when [block] must be excluded from the constructor / catalog.
///
/// Excludes the Terraform-internal `timeouts` block, which is SDK metadata
/// rather than a user-facing input. Shared with [WrapperEmitter] (and the
/// catalog metadata emitter) so all surfaces filter identically.
bool skipNestedBlock(NestedBlockDef block) {
  return block.name == 'timeouts';
}
