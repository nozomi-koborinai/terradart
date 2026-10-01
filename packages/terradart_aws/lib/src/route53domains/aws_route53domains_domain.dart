// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53domains_domain`.
const Set<String> _awsRoute53domainsDomainSensitive = <String>{};

/// Typed helper for the `admin_contact` block of
/// `aws_route53domains_domain` (derived from provider schema).
@immutable
final class Route53domainsDomainAdminContact {
  const Route53domainsDomainAdminContact({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.contactType,
    this.countryCode,
    this.email,
    this.fax,
    this.firstName,
    this.lastName,
    this.organizationName,
    this.phoneNumber,
    this.state,
    this.zipCode,
    this.extraParam,
  });

  final TfArg<String>? addressLine1;

  final TfArg<String>? addressLine2;

  final TfArg<String>? city;

  final TfArg<Route53domainsDomainContactType>? contactType;

  final TfArg<Route53domainsDomainCountryCode>? countryCode;

  final TfArg<String>? email;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  final List<Route53domainsDomainExtraParam>? extraParam;

  Map<String, Object?> encode() => {
    'address_line_1': ?addressLine1?.toTfJson(),
    'address_line_2': ?addressLine2?.toTfJson(),
    'city': ?city?.toTfJson(),
    'contact_type': ?contactType?.toTfJson(),
    'country_code': ?countryCode?.toTfJson(),
    'email': ?email?.toTfJson(),
    'fax': ?fax?.toTfJson(),
    'first_name': ?firstName?.toTfJson(),
    'last_name': ?lastName?.toTfJson(),
    'organization_name': ?organizationName?.toTfJson(),
    'phone_number': ?phoneNumber?.toTfJson(),
    'state': ?state?.toTfJson(),
    'zip_code': ?zipCode?.toTfJson(),
    if (extraParam != null)
      'extra_param': [for (final e in extraParam!) e.encode()],
  };
}

/// `contact_type` — derived from the provider schema description.
enum Route53domainsDomainContactType implements TerraformEnum {
  person('PERSON'),
  company('COMPANY'),
  association('ASSOCIATION'),
  publicBody('PUBLIC_BODY'),
  reseller('RESELLER');

  const Route53domainsDomainContactType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `country_code` — derived from the provider schema description.
enum Route53domainsDomainCountryCode implements TerraformEnum {
  ac('AC'),
  ad('AD'),
  ae('AE'),
  af('AF'),
  ag('AG'),
  ai('AI'),
  al('AL'),
  am('AM'),
  an('AN'),
  ao('AO'),
  aq('AQ'),
  ar('AR'),
  as('AS'),
  at('AT'),
  au('AU'),
  aw('AW'),
  ax('AX'),
  az('AZ'),
  ba('BA'),
  bb('BB'),
  bd('BD'),
  be('BE'),
  bf('BF'),
  bg('BG'),
  bh('BH'),
  bi('BI'),
  bj('BJ'),
  bl('BL'),
  bm('BM'),
  bn('BN'),
  bo('BO'),
  bq('BQ'),
  br('BR'),
  bs('BS'),
  bt('BT'),
  bv('BV'),
  bw('BW'),
  by('BY'),
  bz('BZ'),
  ca('CA'),
  cc('CC'),
  cd('CD'),
  cf('CF'),
  cg('CG'),
  ch('CH'),
  ci('CI'),
  ck('CK'),
  cl('CL'),
  cm('CM'),
  cn('CN'),
  co('CO'),
  cr('CR'),
  cu('CU'),
  cv('CV'),
  cw('CW'),
  cx('CX'),
  cy('CY'),
  cz('CZ'),
  de('DE'),
  dj('DJ'),
  dk('DK'),
  dm('DM'),
  doCase('DO'),
  dz('DZ'),
  ec('EC'),
  ee('EE'),
  eg('EG'),
  eh('EH'),
  er('ER'),
  es('ES'),
  et('ET'),
  fi('FI'),
  fj('FJ'),
  fk('FK'),
  fm('FM'),
  fo('FO'),
  fr('FR'),
  ga('GA'),
  gb('GB'),
  gd('GD'),
  ge('GE'),
  gf('GF'),
  gg('GG'),
  gh('GH'),
  gi('GI'),
  gl('GL'),
  gm('GM'),
  gn('GN'),
  gp('GP'),
  gq('GQ'),
  gr('GR'),
  gs('GS'),
  gt('GT'),
  gu('GU'),
  gw('GW'),
  gy('GY'),
  hk('HK'),
  hm('HM'),
  hn('HN'),
  hr('HR'),
  ht('HT'),
  hu('HU'),
  id('ID'),
  ie('IE'),
  il('IL'),
  im('IM'),
  inCase('IN'),
  io('IO'),
  iq('IQ'),
  ir('IR'),
  isCase('IS'),
  it('IT'),
  je('JE'),
  jm('JM'),
  jo('JO'),
  jp('JP'),
  ke('KE'),
  kg('KG'),
  kh('KH'),
  ki('KI'),
  km('KM'),
  kn('KN'),
  kp('KP'),
  kr('KR'),
  kw('KW'),
  ky('KY'),
  kz('KZ'),
  la('LA'),
  lb('LB'),
  lc('LC'),
  li('LI'),
  lk('LK'),
  lr('LR'),
  ls('LS'),
  lt('LT'),
  lu('LU'),
  lv('LV'),
  ly('LY'),
  ma('MA'),
  mc('MC'),
  md('MD'),
  me('ME'),
  mf('MF'),
  mg('MG'),
  mh('MH'),
  mk('MK'),
  ml('ML'),
  mm('MM'),
  mn('MN'),
  mo('MO'),
  mp('MP'),
  mq('MQ'),
  mr('MR'),
  ms('MS'),
  mt('MT'),
  mu('MU'),
  mv('MV'),
  mw('MW'),
  mx('MX'),
  my('MY'),
  mz('MZ'),
  na('NA'),
  nc('NC'),
  ne('NE'),
  nf('NF'),
  ng('NG'),
  ni('NI'),
  nl('NL'),
  no('NO'),
  np('NP'),
  nr('NR'),
  nu('NU'),
  nz('NZ'),
  om('OM'),
  pa('PA'),
  pe('PE'),
  pf('PF'),
  pg('PG'),
  ph('PH'),
  pk('PK'),
  pl('PL'),
  pm('PM'),
  pn('PN'),
  pr('PR'),
  ps('PS'),
  pt('PT'),
  pw('PW'),
  py('PY'),
  qa('QA'),
  re('RE'),
  ro('RO'),
  rs('RS'),
  ru('RU'),
  rw('RW'),
  sa('SA'),
  sb('SB'),
  sc('SC'),
  sd('SD'),
  se('SE'),
  sg('SG'),
  sh('SH'),
  si('SI'),
  sj('SJ'),
  sk('SK'),
  sl('SL'),
  sm('SM'),
  sn('SN'),
  so('SO'),
  sr('SR'),
  ss('SS'),
  st('ST'),
  sv('SV'),
  sx('SX'),
  sy('SY'),
  sz('SZ'),
  tc('TC'),
  td('TD'),
  tf('TF'),
  tg('TG'),
  th('TH'),
  tj('TJ'),
  tk('TK'),
  tl('TL'),
  tm('TM'),
  tn('TN'),
  to('TO'),
  tp('TP'),
  tr('TR'),
  tt('TT'),
  tv('TV'),
  tw('TW'),
  tz('TZ'),
  ua('UA'),
  ug('UG'),
  us('US'),
  uy('UY'),
  uz('UZ'),
  va('VA'),
  vc('VC'),
  ve('VE'),
  vg('VG'),
  vi('VI'),
  vn('VN'),
  vu('VU'),
  wf('WF'),
  ws('WS'),
  ye('YE'),
  yt('YT'),
  za('ZA'),
  zm('ZM'),
  zw('ZW');

  const Route53domainsDomainCountryCode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `admin_contact.extra_param` block of
/// `aws_route53domains_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Route53domainsDomainExtraParam {
  const Route53domainsDomainExtraParam({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `registrant_contact` block of
/// `aws_route53domains_domain` (derived from provider schema).
@immutable
final class Route53domainsDomainRegistrantContact {
  const Route53domainsDomainRegistrantContact({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.contactType,
    this.countryCode,
    this.email,
    this.fax,
    this.firstName,
    this.lastName,
    this.organizationName,
    this.phoneNumber,
    this.state,
    this.zipCode,
    this.extraParam,
  });

  final TfArg<String>? addressLine1;

  final TfArg<String>? addressLine2;

  final TfArg<String>? city;

  final TfArg<Route53domainsDomainContactType>? contactType;

  final TfArg<Route53domainsDomainCountryCode>? countryCode;

  final TfArg<String>? email;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  final List<Route53domainsDomainExtraParam>? extraParam;

  Map<String, Object?> encode() => {
    'address_line_1': ?addressLine1?.toTfJson(),
    'address_line_2': ?addressLine2?.toTfJson(),
    'city': ?city?.toTfJson(),
    'contact_type': ?contactType?.toTfJson(),
    'country_code': ?countryCode?.toTfJson(),
    'email': ?email?.toTfJson(),
    'fax': ?fax?.toTfJson(),
    'first_name': ?firstName?.toTfJson(),
    'last_name': ?lastName?.toTfJson(),
    'organization_name': ?organizationName?.toTfJson(),
    'phone_number': ?phoneNumber?.toTfJson(),
    'state': ?state?.toTfJson(),
    'zip_code': ?zipCode?.toTfJson(),
    if (extraParam != null)
      'extra_param': [for (final e in extraParam!) e.encode()],
  };
}

/// Typed helper for the `tech_contact` block of
/// `aws_route53domains_domain` (derived from provider schema).
@immutable
final class Route53domainsDomainTechContact {
  const Route53domainsDomainTechContact({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.contactType,
    this.countryCode,
    this.email,
    this.fax,
    this.firstName,
    this.lastName,
    this.organizationName,
    this.phoneNumber,
    this.state,
    this.zipCode,
    this.extraParam,
  });

  final TfArg<String>? addressLine1;

  final TfArg<String>? addressLine2;

  final TfArg<String>? city;

  final TfArg<Route53domainsDomainContactType>? contactType;

  final TfArg<Route53domainsDomainCountryCode>? countryCode;

  final TfArg<String>? email;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  final List<Route53domainsDomainExtraParam>? extraParam;

  Map<String, Object?> encode() => {
    'address_line_1': ?addressLine1?.toTfJson(),
    'address_line_2': ?addressLine2?.toTfJson(),
    'city': ?city?.toTfJson(),
    'contact_type': ?contactType?.toTfJson(),
    'country_code': ?countryCode?.toTfJson(),
    'email': ?email?.toTfJson(),
    'fax': ?fax?.toTfJson(),
    'first_name': ?firstName?.toTfJson(),
    'last_name': ?lastName?.toTfJson(),
    'organization_name': ?organizationName?.toTfJson(),
    'phone_number': ?phoneNumber?.toTfJson(),
    'state': ?state?.toTfJson(),
    'zip_code': ?zipCode?.toTfJson(),
    if (extraParam != null)
      'extra_param': [for (final e in extraParam!) e.encode()],
  };
}

/// Factory wrapper for `aws_route53domains_domain`.
final class AwsRoute53domainsDomain extends Resource {
  static const String tfType = 'aws_route53domains_domain';

  AwsRoute53domainsDomain(
    super.localName, {
    TfArg<bool>? adminPrivacy,
    TfArg<bool>? autoRenew,
    TfArg<List<Map<String, Object?>>>? billingContact,
    TfArg<bool>? billingPrivacy,
    required TfArg<String> domainName,
    TfArg<num>? durationInYears,
    TfArg<List<Map<String, Object?>>>? nameServer,
    TfArg<bool>? registrantPrivacy,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? techPrivacy,
    TfArg<bool>? transferLock,
    List<Route53domainsDomainAdminContact>? adminContact,
    List<Route53domainsDomainRegistrantContact>? registrantContact,
    List<Route53domainsDomainTechContact>? techContact,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_privacy': ?adminPrivacy,
           'auto_renew': ?autoRenew,
           'billing_contact': ?billingContact,
           'billing_privacy': ?billingPrivacy,
           'domain_name': domainName,
           'duration_in_years': ?durationInYears,
           'name_server': ?nameServer,
           'registrant_privacy': ?registrantPrivacy,
           'tags': ?tags,
           'tech_privacy': ?techPrivacy,
           'transfer_lock': ?transferLock,
           if (adminContact != null)
             'admin_contact': TfArg.literal([
               for (final e in adminContact) e.encode(),
             ]),
           if (registrantContact != null)
             'registrant_contact': TfArg.literal([
               for (final e in registrantContact) e.encode(),
             ]),
           if (techContact != null)
             'tech_contact': TfArg.literal([
               for (final e in techContact) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53domainsDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53domainsDomain>`.
  RefTo<AwsRoute53domainsDomain> get ref => RefTo.of(this);

  /// Reference to `abuse_contact_email` attribute.
  TfRef<String> get abuseContactEmail =>
      TfRef.attribute<String>(this, 'abuse_contact_email');

  /// Reference to `abuse_contact_phone` attribute.
  TfRef<String> get abuseContactPhone =>
      TfRef.attribute<String>(this, 'abuse_contact_phone');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `registrar_name` attribute.
  TfRef<String> get registrarName =>
      TfRef.attribute<String>(this, 'registrar_name');

  /// Reference to `registrar_url` attribute.
  TfRef<String> get registrarUrl =>
      TfRef.attribute<String>(this, 'registrar_url');

  /// Reference to `status_list` attribute.
  TfRef<List<String>> get statusList =>
      TfRef.attribute<List<String>>(this, 'status_list');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `updated_date` attribute.
  TfRef<String> get updatedDate =>
      TfRef.attribute<String>(this, 'updated_date');

  /// Reference to `whois_server` attribute.
  TfRef<String> get whoisServer =>
      TfRef.attribute<String>(this, 'whois_server');

  /// Reference to `admin_privacy` attribute.
  TfRef<bool> get adminPrivacy => TfRef.attribute<bool>(this, 'admin_privacy');

  /// Reference to `auto_renew` attribute.
  TfRef<bool> get autoRenew => TfRef.attribute<bool>(this, 'auto_renew');

  /// Reference to `billing_contact` attribute.
  TfRef<List<Map<String, Object?>>> get billingContact =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'billing_contact');

  /// Reference to `billing_privacy` attribute.
  TfRef<bool> get billingPrivacy =>
      TfRef.attribute<bool>(this, 'billing_privacy');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `duration_in_years` attribute.
  TfRef<num> get durationInYears =>
      TfRef.attribute<num>(this, 'duration_in_years');

  /// Reference to `name_server` attribute.
  TfRef<List<Map<String, Object?>>> get nameServer =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'name_server');

  /// Reference to `registrant_privacy` attribute.
  TfRef<bool> get registrantPrivacy =>
      TfRef.attribute<bool>(this, 'registrant_privacy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tech_privacy` attribute.
  TfRef<bool> get techPrivacy => TfRef.attribute<bool>(this, 'tech_privacy');

  /// Reference to `transfer_lock` attribute.
  TfRef<bool> get transferLock => TfRef.attribute<bool>(this, 'transfer_lock');
}
