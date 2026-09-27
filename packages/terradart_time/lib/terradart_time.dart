/// `hashicorp/time` utilities — [TimeProvider] and [TimeSleep], the
/// propagation wait any provider package's stack can use.
library;

export 'src/time_provider.dart'
    show TimeProvider, kTimeProviderVersionConstraint;
export 'src/time_sleep.dart' show TimeSleep;
