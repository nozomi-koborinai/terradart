import 'package:terradart_codegen/src/codegen/enum_value_parser.dart';
import 'package:test/test.dart';

void main() {
  test('bracket JSON-ish list', () {
    expect(
      parseEnumValuesFromDescription(
        'Mode. Possible values: ["BASIC", "ADVANCED"]',
      ),
      ['BASIC', 'ADVANCED'],
    );
  });
  test('valid-values-are quoted prose', () {
    expect(
      parseEnumValuesFromDescription(
        'Valid values are: "PAGELESS", "PAGINATED".',
      ),
      ['PAGELESS', 'PAGINATED'],
    );
  });
  test('bare screaming list', () {
    expect(
      parseEnumValuesFromDescription(
        'Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY',
      ),
      ['JOB_TYPE_UNSPECIFIED', 'PIPELINE', 'QUERY'],
    );
  });
  test('null and <2 values reject', () {
    expect(parseEnumValuesFromDescription(null), isNull);
    expect(parseEnumValuesFromDescription('Possible values: ["ONLY"]'), isNull);
  });

  test('a sentence that opens with One of quoted values', () {
    expect(
      parseEnumValuesFromDescription(
        'The mode in which to attach this disk. One of "READ_ONLY" or '
        '"READ_WRITE". Default is READ_WRITE.',
      ),
      ['READ_ONLY', 'READ_WRITE'],
    );
    expect(
      parseEnumValuesFromDescription(
        'The deployment source type. Must be one of "code" or "template".',
      ),
      ['code', 'template'],
    );
    expect(parseEnumValuesFromDescription('One of "A", "B", or "C"'), [
      'A',
      'B',
      'C',
    ]);
  });

  test('a mid-sentence one of constrains part of the value', () {
    expect(
      parseEnumValuesFromDescription(
        'The forward proxy URI. Note that the scheme must be one of "http" '
        'or "https", and the port must be supplied.',
      ),
      isNull,
    );
  });

  test('the value can only be one of names the input itself', () {
    expect(
      parseEnumValuesFromDescription(
        'The geographic location. The value can only be one of "global", '
        '"us" and "eu".',
      ),
      ['global', 'us', 'eu'],
    );
  });

  group('a values cue', () {
    test('Possible values separated by spaces', () {
      expect(
        parseEnumValuesFromDescription(
          'The replication mode. Possible values: SYNCHRONOUS ASYNCHRONOUS',
        ),
        ['SYNCHRONOUS', 'ASYNCHRONOUS'],
      );
      expect(
        parseEnumValuesFromDescription(
          'Possible values: UTF-8 UTF-16BE X86_64 (64-bit) ARM64.',
        ),
        ['UTF-8', 'UTF-16BE', 'X86_64', 'ARM64'],
      );
    });
    test('Allowed, Supported, Valid and Accepted values', () {
      expect(
        parseEnumValuesFromDescription('Allowed values are "http1" and "h2c".'),
        ['http1', 'h2c'],
      );
      expect(
        parseEnumValuesFromDescription(
          "Supported values include: 'FAIL_OPEN', 'FAIL_CLOSED'.",
        ),
        ['FAIL_OPEN', 'FAIL_CLOSED'],
      );
      expect(
        parseEnumValuesFromDescription(
          'Valid values: DEPRIVILEGE, DELETE, DISABLE.',
        ),
        ['DEPRIVILEGE', 'DELETE', 'DISABLE'],
      );
      expect(
        parseEnumValuesFromDescription(
          'Accepted values are PRIMARY or SECONDARY. Defaults to PRIMARY.',
        ),
        ['PRIMARY', 'SECONDARY'],
      );
      expect(
        parseEnumValuesFromDescription(
          'The action. Supported\nvalues: CREATE_EVENT UPDATE_EVENT',
        ),
        ['CREATE_EVENT', 'UPDATE_EVENT'],
      );
    });
    test('quoting, bullets and lead-ins', () {
      expect(
        parseEnumValuesFromDescription('Possible values: `TRUE`, `FALSE`.'),
        ['TRUE', 'FALSE'],
      );
      expect(
        parseEnumValuesFromDescription(
          'Valid values are: - "coffee_shop" - "keyboard" -"office_1"',
        ),
        ['coffee_shop', 'keyboard', 'office_1'],
      );
      expect(
        parseEnumValuesFromDescription(
          'Allowed values are (case insensitive): ALL, READ, WRITE. See '
          'the docs.',
        ),
        ['ALL', 'READ', 'WRITE'],
      );
      expect(
        parseEnumValuesFromDescription(
          'The PMU level. Valid values for the level of PMU are "STANDARD", '
          '"ENHANCED", and "ARCHITECTURAL".',
        ),
        ['STANDARD', 'ENHANCED', 'ARCHITECTURAL'],
      );
      expect(
        parseEnumValuesFromDescription(
          'The tier. [Valid values](https://example.com/Tier) include: '
          '"TIER_1" and "TIER_UNSPECIFIED".',
        ),
        ['TIER_1', 'TIER_UNSPECIFIED'],
      );
      expect(
        parseEnumValuesFromDescription(
          'The location of the registry. One of ASIA, EU, US or not '
          'specified. See the docs.',
        ),
        ['ASIA', 'EU', 'US'],
      );
    });
    test('a bullet list with glosses reads the item heads', () {
      expect(
        parseEnumValuesFromDescription(
          'Default is NONE. Possible values are: * REPLACE * RESTART * NONE',
        ),
        ['REPLACE', 'RESTART', 'NONE'],
      );
      expect(
        parseEnumValuesFromDescription(
          'The value must be one of the followings: * UNIT_L2_NORM: Unit L2 '
          'normalization type * NONE: No normalization type is specified.',
        ),
        ['UNIT_L2_NORM', 'NONE'],
      );
    });
    test('paths, URLs and templates are formats, not values', () {
      expect(
        parseEnumValuesFromDescription(
          'For example, the following are valid values:  * '
          "'https://www.googleapis.com/compute/v1/projects/p/zones/z/"
          "storagePoolTypes/hyperdisk-balanced' * 'hyperdisk-throughput'",
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription(
          "Must be in one of the following formats: * 'projects/{{project}}' "
          "* 'organizations/{{organization}}'",
        ),
        isNull,
      );
    });
    test('a parenthetical gloss is not a value', () {
      expect(
        parseEnumValuesFromDescription(
          'Possible values: HTTP1 (HTTP/1) HTTP2 (HTTP/2 over TLS)',
        ),
        ['HTTP1', 'HTTP2'],
      );
    });
    test('a list the description calls partial stays a string', () {
      const flexShielding =
          'You must specify exactly one FlexShieldingRegion. Possible values '
          'include `AFRICA_SOUTH1`, `ME_CENTRAL1`, `EUROPE_WEST3`, and '
          '`US_EAST5`. See [FlexShieldingRegion](https://cloud.google.com/'
          'media-cdn/docs/reference/rest/v1/projects.locations.'
          'edgeCacheOrigins#FlexShieldingRegion) for the full list of '
          'supported regions.';
      const complianceModes =
          'Currently supported values are `fips` (FIPS-approved curves) and '
          '`pqh` (post-quantum hybrid). Future modes (e.g. `cnsa2`) may be '
          'added; clients should treat unknown values as opaque strings.';
      for (final d in [flexShielding, complianceModes]) {
        expect(describesOpenSet(d), isTrue, reason: d);
        expect(parseEnumValuesFromDescription(d), isNull, reason: d);
      }
      expect(
        describesOpenSet('Possible values are `READ` and `WRITE`.'),
        isFalse,
      );
    });

    test('near misses stay a string', () {
      expect(
        parseEnumValuesFromDescription(
          'Valid values for the level are described in the API reference.',
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription(
          'Possible values: ASIA, EU, US or any other region.',
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription(
          "Supported values: 'a', 'b', and other connector IDs.",
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription('Allowed values: any IPv4 CIDR range.'),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription('Possible values: SINGLE_VALUE'),
        isNull,
      );
    });
  });

  group('an unquoted One of', () {
    test('Set to one of and one of the following values', () {
      expect(
        parseEnumValuesFromDescription(
          'Maintenance handling. Set to one of: DEFAULT, RESTART_IN_PLACE, or '
          'MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT.',
        ),
        ['DEFAULT', 'RESTART_IN_PLACE', 'MIGRATE_WITHIN_NODE_GROUP'],
      );
      expect(
        parseEnumValuesFromDescription(
          'TDX is an Intel feature. One of the following values is required: '
          'SEV, SEV_SNP, TDX. If SEV_SNP, more applies.',
        ),
        ['SEV', 'SEV_SNP', 'TDX'],
      );
      expect(
        parseEnumValuesFromDescription(
          "The type could be one of the following value: 'MEMORY_OPTIMIZED', "
          "'GENERAL_PURPOSE' and 'GRAPHICS_OPTIMIZED_G2'",
        ),
        ['MEMORY_OPTIMIZED', 'GENERAL_PURPOSE', 'GRAPHICS_OPTIMIZED_G2'],
      );
    });
    test('opens a sentence', () {
      expect(
        parseEnumValuesFromDescription(
          'The disk interface. One of SCSI or NVME.',
        ),
        ['SCSI', 'NVME'],
      );
      expect(
        parseEnumValuesFromDescription(
          'Where the hook runs. Must be one of PreProxyFlowHook, '
          'PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.',
        ),
        [
          'PreProxyFlowHook',
          'PostProxyFlowHook',
          'PreTargetFlowHook',
          'PostTargetFlowHook',
        ],
      );
    });
    test('near misses stay a string', () {
      expect(
        parseEnumValuesFromDescription(
          'The identity provider. One of Google or Microsoft.',
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription(
          'One of SUBNETWORK or NETWORK must be set.',
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription(
          'The target, which must be one of SCSI or NVME.',
        ),
        isNull,
      );
    });
  });

  group('a definition list', () {
    test('reads one quoted value per line after the cue', () {
      expect(
        parseEnumValuesFromDescription(
          'The type of the validation. Possible values:\n'
          '"manual": The system waits for an end-user approval.\n'
          '"time": The system waits for a user specified duration.',
        ),
        ['manual', 'time'],
      );
    });

    test('a single definition or trailing prose stays a string', () {
      expect(
        parseEnumValuesFromDescription(
          'The mode. Possible values:\n"manual": The system waits.',
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription(
          'The mode. Possible values:\n'
          '"manual": The system waits.\n'
          '"time": The system waits.\n'
          'See the guide for details.',
        ),
        isNull,
      );
    });
  });

  group('either X or Y', () {
    test('closes a clause', () {
      expect(
        parseEnumValuesFromDescription(
          'The mode in which to attach this disk, either READ_WRITE or '
          'READ_ONLY.',
        ),
        ['READ_WRITE', 'READ_ONLY'],
      );
      expect(
        parseEnumValuesFromDescription('The protocol, either "tcp" or "udp".'),
        ['tcp', 'udp'],
      );
      expect(
        parseEnumValuesFromDescription(
          'Desired status. Either "RUNNING", "SUSPENDED" or "TERMINATED".',
        ),
        ['RUNNING', 'SUSPENDED', 'TERMINATED'],
      );
      expect(
        parseEnumValuesFromDescription(
          "Should be either 'ENABLED' or 'DISABLED'. Defaults to 'ENABLED'.",
        ),
        ['ENABLED', 'DISABLED'],
      );
      expect(
        parseEnumValuesFromDescription(
          'The action. Can currently be either "allow", "deny" or '
          '"goto_next".',
        ),
        ['allow', 'deny', 'goto_next'],
      );
      expect(
        parseEnumValuesFromDescription(
          'The type of disk, can be either "SCRATCH" or "PERSISTENT".',
        ),
        ['SCRATCH', 'PERSISTENT'],
      );
    });
    test('near misses stay a string', () {
      expect(
        parseEnumValuesFromDescription(
          'The URL of parent prefix. Either PublicAdvertisedPrefix or '
          'PublicDelegatedPrefix.',
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription(
          'The name, either FOO or BAR followed by a suffix.',
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription(
          'Set either the network or the subnetwork.',
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription(
          'Required unless type is set to either CLOUD_IAM_USER or '
          'CLOUD_IAM_SERVICE_ACCOUNT.',
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription(
          'This IP address can be either from your on-premise gateway or '
          'another provider.',
        ),
        isNull,
      );
      expect(
        parseEnumValuesFromDescription(
          "The folder. Note that either [FOLDER_ID] or 'folders/[FOLDER_ID]' "
          'is accepted.',
        ),
        isNull,
      );
    });
  });

  group('parseAvailableValues', () {
    test('reads the quoted Stainless line', () {
      expect(
        parseAvailableValues(
          'The configuration target.\n'
          'Available values: "ip", "ip6", "ip_range", "asn".',
        ),
        ['ip', 'ip6', 'ip_range', 'asn'],
      );
    });
    test('keeps dots and stops at the first unquoted text', () {
      expect(
        parseAvailableValues(
          'Available values: "apac", "weur".  Note: `location` is only '
          'honored the first time.',
        ),
        ['apac', 'weur'],
      );
      expect(parseAvailableValues('Available values: "cloudflare.standard".'), [
        'cloudflare.standard',
      ]);
    });
    test('ignores unquoted numbers and other dialects', () {
      expect(parseAvailableValues('Available values: 301, 302, 307.'), isNull);
      expect(parseAvailableValues('Possible values: ["A", "B"]'), isNull);
      expect(parseAvailableValues(null), isNull);
    });
    test('an expression attribute lists fields, not values', () {
      expect(
        parseAvailableValues(
          'The wirefilter expression to match registrations. Available '
          'values: "identity.name", "identity.email".',
        ),
        isNull,
      );
      expect(
        parseAvailableValues(
          'The action to take if the expression matches\n'
          'Available values: "allow", "log".',
        ),
        ['allow', 'log'],
      );
    });
    test('the lane-wide parser does not read it', () {
      expect(
        parseEnumValuesFromDescription('Available values: "a", "b".'),
        isNull,
      );
    });
  });
}
