/// Decision-table placeholder for a `TfRef<T>`.
///
/// schemantic concrete classes require non-nullable values in their
/// constructors. When the user passes `TfArg.ref(...)`, we still need
/// *some* value to construct the schemantic instance for downstream
/// validation hooks. This helper supplies type-correct dummies.
///
/// schemantic validation must be skipped when any `TfArgRef` is present
/// in the same factory call — synth handles the substitution at emit time.
T placeholderFor<T>() {
  if (T == String) return '' as T;
  if (T == int) return 0 as T;
  if (T == double) return 0.0 as T;
  if (T == num) return 0 as T;
  if (T == bool) return false as T;

  // Generic List / Map fall through to runtime-typed empties.
  final empty = _emptyForGeneric<T>();
  if (empty != null) return empty;

  throw UnsupportedError(
    'placeholderFor<$T>() is not supported. '
    'Add a case in lib/src/placeholder.dart or use TfArg.literal(...).',
  );
}

/// Returns a runtime-typed empty `List` or `Map` if `T` is one of those
/// generic shapes, otherwise null. We spell the const literals as
/// `List<Never>` / `Map<Never, Never>` so they remain assignable to any
/// `List<E>` / `Map<K, V>` while satisfying strict-inference.
T? _emptyForGeneric<T>() {
  const list = <Never>[];
  if (list is T) return list as T;
  const map = <Never, Never>{};
  if (map is T) return map as T;
  return null;
}
