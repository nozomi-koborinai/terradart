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

  final Route53domainsDomainContactType? contactType;

  final Route53domainsDomainCountryCode? countryCode;

  final TfArg<String>? email;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  final List<Route53domainsDomainExtraParam>? extraParam;

  @internal
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
extension type const Route53domainsDomainContactType._(TfArg<String> _)
    implements TfArg<String> {
  Route53domainsDomainContactType.variable(String name)
    : this._(TfArg.variable(name));
  Route53domainsDomainContactType.expression(String template)
    : this._(TfArg.expression(template));
  const Route53domainsDomainContactType.arg(TfArg<String> arg) : this._(arg);

  static const person = Route53domainsDomainContactType._(
    TfArgLiteral('PERSON'),
  );
  static const company = Route53domainsDomainContactType._(
    TfArgLiteral('COMPANY'),
  );
  static const association = Route53domainsDomainContactType._(
    TfArgLiteral('ASSOCIATION'),
  );
  static const publicBody = Route53domainsDomainContactType._(
    TfArgLiteral('PUBLIC_BODY'),
  );
  static const reseller = Route53domainsDomainContactType._(
    TfArgLiteral('RESELLER'),
  );

  static const List<Route53domainsDomainContactType> values = [
    person,
    company,
    association,
    publicBody,
    reseller,
  ];
}

/// `country_code` — derived from the provider schema description.
extension type const Route53domainsDomainCountryCode._(TfArg<String> _)
    implements TfArg<String> {
  Route53domainsDomainCountryCode.variable(String name)
    : this._(TfArg.variable(name));
  Route53domainsDomainCountryCode.expression(String template)
    : this._(TfArg.expression(template));
  const Route53domainsDomainCountryCode.arg(TfArg<String> arg) : this._(arg);

  static const ac = Route53domainsDomainCountryCode._(TfArgLiteral('AC'));
  static const ad = Route53domainsDomainCountryCode._(TfArgLiteral('AD'));
  static const ae = Route53domainsDomainCountryCode._(TfArgLiteral('AE'));
  static const af = Route53domainsDomainCountryCode._(TfArgLiteral('AF'));
  static const ag = Route53domainsDomainCountryCode._(TfArgLiteral('AG'));
  static const ai = Route53domainsDomainCountryCode._(TfArgLiteral('AI'));
  static const al = Route53domainsDomainCountryCode._(TfArgLiteral('AL'));
  static const am = Route53domainsDomainCountryCode._(TfArgLiteral('AM'));
  static const an = Route53domainsDomainCountryCode._(TfArgLiteral('AN'));
  static const ao = Route53domainsDomainCountryCode._(TfArgLiteral('AO'));
  static const aq = Route53domainsDomainCountryCode._(TfArgLiteral('AQ'));
  static const ar = Route53domainsDomainCountryCode._(TfArgLiteral('AR'));
  static const as = Route53domainsDomainCountryCode._(TfArgLiteral('AS'));
  static const at = Route53domainsDomainCountryCode._(TfArgLiteral('AT'));
  static const au = Route53domainsDomainCountryCode._(TfArgLiteral('AU'));
  static const aw = Route53domainsDomainCountryCode._(TfArgLiteral('AW'));
  static const ax = Route53domainsDomainCountryCode._(TfArgLiteral('AX'));
  static const az = Route53domainsDomainCountryCode._(TfArgLiteral('AZ'));
  static const ba = Route53domainsDomainCountryCode._(TfArgLiteral('BA'));
  static const bb = Route53domainsDomainCountryCode._(TfArgLiteral('BB'));
  static const bd = Route53domainsDomainCountryCode._(TfArgLiteral('BD'));
  static const be = Route53domainsDomainCountryCode._(TfArgLiteral('BE'));
  static const bf = Route53domainsDomainCountryCode._(TfArgLiteral('BF'));
  static const bg = Route53domainsDomainCountryCode._(TfArgLiteral('BG'));
  static const bh = Route53domainsDomainCountryCode._(TfArgLiteral('BH'));
  static const bi = Route53domainsDomainCountryCode._(TfArgLiteral('BI'));
  static const bj = Route53domainsDomainCountryCode._(TfArgLiteral('BJ'));
  static const bl = Route53domainsDomainCountryCode._(TfArgLiteral('BL'));
  static const bm = Route53domainsDomainCountryCode._(TfArgLiteral('BM'));
  static const bn = Route53domainsDomainCountryCode._(TfArgLiteral('BN'));
  static const bo = Route53domainsDomainCountryCode._(TfArgLiteral('BO'));
  static const bq = Route53domainsDomainCountryCode._(TfArgLiteral('BQ'));
  static const br = Route53domainsDomainCountryCode._(TfArgLiteral('BR'));
  static const bs = Route53domainsDomainCountryCode._(TfArgLiteral('BS'));
  static const bt = Route53domainsDomainCountryCode._(TfArgLiteral('BT'));
  static const bv = Route53domainsDomainCountryCode._(TfArgLiteral('BV'));
  static const bw = Route53domainsDomainCountryCode._(TfArgLiteral('BW'));
  static const by = Route53domainsDomainCountryCode._(TfArgLiteral('BY'));
  static const bz = Route53domainsDomainCountryCode._(TfArgLiteral('BZ'));
  static const ca = Route53domainsDomainCountryCode._(TfArgLiteral('CA'));
  static const cc = Route53domainsDomainCountryCode._(TfArgLiteral('CC'));
  static const cd = Route53domainsDomainCountryCode._(TfArgLiteral('CD'));
  static const cf = Route53domainsDomainCountryCode._(TfArgLiteral('CF'));
  static const cg = Route53domainsDomainCountryCode._(TfArgLiteral('CG'));
  static const ch = Route53domainsDomainCountryCode._(TfArgLiteral('CH'));
  static const ci = Route53domainsDomainCountryCode._(TfArgLiteral('CI'));
  static const ck = Route53domainsDomainCountryCode._(TfArgLiteral('CK'));
  static const cl = Route53domainsDomainCountryCode._(TfArgLiteral('CL'));
  static const cm = Route53domainsDomainCountryCode._(TfArgLiteral('CM'));
  static const cn = Route53domainsDomainCountryCode._(TfArgLiteral('CN'));
  static const co = Route53domainsDomainCountryCode._(TfArgLiteral('CO'));
  static const cr = Route53domainsDomainCountryCode._(TfArgLiteral('CR'));
  static const cu = Route53domainsDomainCountryCode._(TfArgLiteral('CU'));
  static const cv = Route53domainsDomainCountryCode._(TfArgLiteral('CV'));
  static const cw = Route53domainsDomainCountryCode._(TfArgLiteral('CW'));
  static const cx = Route53domainsDomainCountryCode._(TfArgLiteral('CX'));
  static const cy = Route53domainsDomainCountryCode._(TfArgLiteral('CY'));
  static const cz = Route53domainsDomainCountryCode._(TfArgLiteral('CZ'));
  static const de = Route53domainsDomainCountryCode._(TfArgLiteral('DE'));
  static const dj = Route53domainsDomainCountryCode._(TfArgLiteral('DJ'));
  static const dk = Route53domainsDomainCountryCode._(TfArgLiteral('DK'));
  static const dm = Route53domainsDomainCountryCode._(TfArgLiteral('DM'));
  static const doCase = Route53domainsDomainCountryCode._(TfArgLiteral('DO'));
  static const dz = Route53domainsDomainCountryCode._(TfArgLiteral('DZ'));
  static const ec = Route53domainsDomainCountryCode._(TfArgLiteral('EC'));
  static const ee = Route53domainsDomainCountryCode._(TfArgLiteral('EE'));
  static const eg = Route53domainsDomainCountryCode._(TfArgLiteral('EG'));
  static const eh = Route53domainsDomainCountryCode._(TfArgLiteral('EH'));
  static const er = Route53domainsDomainCountryCode._(TfArgLiteral('ER'));
  static const es = Route53domainsDomainCountryCode._(TfArgLiteral('ES'));
  static const et = Route53domainsDomainCountryCode._(TfArgLiteral('ET'));
  static const fi = Route53domainsDomainCountryCode._(TfArgLiteral('FI'));
  static const fj = Route53domainsDomainCountryCode._(TfArgLiteral('FJ'));
  static const fk = Route53domainsDomainCountryCode._(TfArgLiteral('FK'));
  static const fm = Route53domainsDomainCountryCode._(TfArgLiteral('FM'));
  static const fo = Route53domainsDomainCountryCode._(TfArgLiteral('FO'));
  static const fr = Route53domainsDomainCountryCode._(TfArgLiteral('FR'));
  static const ga = Route53domainsDomainCountryCode._(TfArgLiteral('GA'));
  static const gb = Route53domainsDomainCountryCode._(TfArgLiteral('GB'));
  static const gd = Route53domainsDomainCountryCode._(TfArgLiteral('GD'));
  static const ge = Route53domainsDomainCountryCode._(TfArgLiteral('GE'));
  static const gf = Route53domainsDomainCountryCode._(TfArgLiteral('GF'));
  static const gg = Route53domainsDomainCountryCode._(TfArgLiteral('GG'));
  static const gh = Route53domainsDomainCountryCode._(TfArgLiteral('GH'));
  static const gi = Route53domainsDomainCountryCode._(TfArgLiteral('GI'));
  static const gl = Route53domainsDomainCountryCode._(TfArgLiteral('GL'));
  static const gm = Route53domainsDomainCountryCode._(TfArgLiteral('GM'));
  static const gn = Route53domainsDomainCountryCode._(TfArgLiteral('GN'));
  static const gp = Route53domainsDomainCountryCode._(TfArgLiteral('GP'));
  static const gq = Route53domainsDomainCountryCode._(TfArgLiteral('GQ'));
  static const gr = Route53domainsDomainCountryCode._(TfArgLiteral('GR'));
  static const gs = Route53domainsDomainCountryCode._(TfArgLiteral('GS'));
  static const gt = Route53domainsDomainCountryCode._(TfArgLiteral('GT'));
  static const gu = Route53domainsDomainCountryCode._(TfArgLiteral('GU'));
  static const gw = Route53domainsDomainCountryCode._(TfArgLiteral('GW'));
  static const gy = Route53domainsDomainCountryCode._(TfArgLiteral('GY'));
  static const hk = Route53domainsDomainCountryCode._(TfArgLiteral('HK'));
  static const hm = Route53domainsDomainCountryCode._(TfArgLiteral('HM'));
  static const hn = Route53domainsDomainCountryCode._(TfArgLiteral('HN'));
  static const hr = Route53domainsDomainCountryCode._(TfArgLiteral('HR'));
  static const ht = Route53domainsDomainCountryCode._(TfArgLiteral('HT'));
  static const hu = Route53domainsDomainCountryCode._(TfArgLiteral('HU'));
  static const id = Route53domainsDomainCountryCode._(TfArgLiteral('ID'));
  static const ie = Route53domainsDomainCountryCode._(TfArgLiteral('IE'));
  static const il = Route53domainsDomainCountryCode._(TfArgLiteral('IL'));
  static const im = Route53domainsDomainCountryCode._(TfArgLiteral('IM'));
  static const inCase = Route53domainsDomainCountryCode._(TfArgLiteral('IN'));
  static const io = Route53domainsDomainCountryCode._(TfArgLiteral('IO'));
  static const iq = Route53domainsDomainCountryCode._(TfArgLiteral('IQ'));
  static const ir = Route53domainsDomainCountryCode._(TfArgLiteral('IR'));
  static const isCase = Route53domainsDomainCountryCode._(TfArgLiteral('IS'));
  static const it = Route53domainsDomainCountryCode._(TfArgLiteral('IT'));
  static const je = Route53domainsDomainCountryCode._(TfArgLiteral('JE'));
  static const jm = Route53domainsDomainCountryCode._(TfArgLiteral('JM'));
  static const jo = Route53domainsDomainCountryCode._(TfArgLiteral('JO'));
  static const jp = Route53domainsDomainCountryCode._(TfArgLiteral('JP'));
  static const ke = Route53domainsDomainCountryCode._(TfArgLiteral('KE'));
  static const kg = Route53domainsDomainCountryCode._(TfArgLiteral('KG'));
  static const kh = Route53domainsDomainCountryCode._(TfArgLiteral('KH'));
  static const ki = Route53domainsDomainCountryCode._(TfArgLiteral('KI'));
  static const km = Route53domainsDomainCountryCode._(TfArgLiteral('KM'));
  static const kn = Route53domainsDomainCountryCode._(TfArgLiteral('KN'));
  static const kp = Route53domainsDomainCountryCode._(TfArgLiteral('KP'));
  static const kr = Route53domainsDomainCountryCode._(TfArgLiteral('KR'));
  static const kw = Route53domainsDomainCountryCode._(TfArgLiteral('KW'));
  static const ky = Route53domainsDomainCountryCode._(TfArgLiteral('KY'));
  static const kz = Route53domainsDomainCountryCode._(TfArgLiteral('KZ'));
  static const la = Route53domainsDomainCountryCode._(TfArgLiteral('LA'));
  static const lb = Route53domainsDomainCountryCode._(TfArgLiteral('LB'));
  static const lc = Route53domainsDomainCountryCode._(TfArgLiteral('LC'));
  static const li = Route53domainsDomainCountryCode._(TfArgLiteral('LI'));
  static const lk = Route53domainsDomainCountryCode._(TfArgLiteral('LK'));
  static const lr = Route53domainsDomainCountryCode._(TfArgLiteral('LR'));
  static const ls = Route53domainsDomainCountryCode._(TfArgLiteral('LS'));
  static const lt = Route53domainsDomainCountryCode._(TfArgLiteral('LT'));
  static const lu = Route53domainsDomainCountryCode._(TfArgLiteral('LU'));
  static const lv = Route53domainsDomainCountryCode._(TfArgLiteral('LV'));
  static const ly = Route53domainsDomainCountryCode._(TfArgLiteral('LY'));
  static const ma = Route53domainsDomainCountryCode._(TfArgLiteral('MA'));
  static const mc = Route53domainsDomainCountryCode._(TfArgLiteral('MC'));
  static const md = Route53domainsDomainCountryCode._(TfArgLiteral('MD'));
  static const me = Route53domainsDomainCountryCode._(TfArgLiteral('ME'));
  static const mf = Route53domainsDomainCountryCode._(TfArgLiteral('MF'));
  static const mg = Route53domainsDomainCountryCode._(TfArgLiteral('MG'));
  static const mh = Route53domainsDomainCountryCode._(TfArgLiteral('MH'));
  static const mk = Route53domainsDomainCountryCode._(TfArgLiteral('MK'));
  static const ml = Route53domainsDomainCountryCode._(TfArgLiteral('ML'));
  static const mm = Route53domainsDomainCountryCode._(TfArgLiteral('MM'));
  static const mn = Route53domainsDomainCountryCode._(TfArgLiteral('MN'));
  static const mo = Route53domainsDomainCountryCode._(TfArgLiteral('MO'));
  static const mp = Route53domainsDomainCountryCode._(TfArgLiteral('MP'));
  static const mq = Route53domainsDomainCountryCode._(TfArgLiteral('MQ'));
  static const mr = Route53domainsDomainCountryCode._(TfArgLiteral('MR'));
  static const ms = Route53domainsDomainCountryCode._(TfArgLiteral('MS'));
  static const mt = Route53domainsDomainCountryCode._(TfArgLiteral('MT'));
  static const mu = Route53domainsDomainCountryCode._(TfArgLiteral('MU'));
  static const mv = Route53domainsDomainCountryCode._(TfArgLiteral('MV'));
  static const mw = Route53domainsDomainCountryCode._(TfArgLiteral('MW'));
  static const mx = Route53domainsDomainCountryCode._(TfArgLiteral('MX'));
  static const my = Route53domainsDomainCountryCode._(TfArgLiteral('MY'));
  static const mz = Route53domainsDomainCountryCode._(TfArgLiteral('MZ'));
  static const na = Route53domainsDomainCountryCode._(TfArgLiteral('NA'));
  static const nc = Route53domainsDomainCountryCode._(TfArgLiteral('NC'));
  static const ne = Route53domainsDomainCountryCode._(TfArgLiteral('NE'));
  static const nf = Route53domainsDomainCountryCode._(TfArgLiteral('NF'));
  static const ng = Route53domainsDomainCountryCode._(TfArgLiteral('NG'));
  static const ni = Route53domainsDomainCountryCode._(TfArgLiteral('NI'));
  static const nl = Route53domainsDomainCountryCode._(TfArgLiteral('NL'));
  static const no = Route53domainsDomainCountryCode._(TfArgLiteral('NO'));
  static const np = Route53domainsDomainCountryCode._(TfArgLiteral('NP'));
  static const nr = Route53domainsDomainCountryCode._(TfArgLiteral('NR'));
  static const nu = Route53domainsDomainCountryCode._(TfArgLiteral('NU'));
  static const nz = Route53domainsDomainCountryCode._(TfArgLiteral('NZ'));
  static const om = Route53domainsDomainCountryCode._(TfArgLiteral('OM'));
  static const pa = Route53domainsDomainCountryCode._(TfArgLiteral('PA'));
  static const pe = Route53domainsDomainCountryCode._(TfArgLiteral('PE'));
  static const pf = Route53domainsDomainCountryCode._(TfArgLiteral('PF'));
  static const pg = Route53domainsDomainCountryCode._(TfArgLiteral('PG'));
  static const ph = Route53domainsDomainCountryCode._(TfArgLiteral('PH'));
  static const pk = Route53domainsDomainCountryCode._(TfArgLiteral('PK'));
  static const pl = Route53domainsDomainCountryCode._(TfArgLiteral('PL'));
  static const pm = Route53domainsDomainCountryCode._(TfArgLiteral('PM'));
  static const pn = Route53domainsDomainCountryCode._(TfArgLiteral('PN'));
  static const pr = Route53domainsDomainCountryCode._(TfArgLiteral('PR'));
  static const ps = Route53domainsDomainCountryCode._(TfArgLiteral('PS'));
  static const pt = Route53domainsDomainCountryCode._(TfArgLiteral('PT'));
  static const pw = Route53domainsDomainCountryCode._(TfArgLiteral('PW'));
  static const py = Route53domainsDomainCountryCode._(TfArgLiteral('PY'));
  static const qa = Route53domainsDomainCountryCode._(TfArgLiteral('QA'));
  static const re = Route53domainsDomainCountryCode._(TfArgLiteral('RE'));
  static const ro = Route53domainsDomainCountryCode._(TfArgLiteral('RO'));
  static const rs = Route53domainsDomainCountryCode._(TfArgLiteral('RS'));
  static const ru = Route53domainsDomainCountryCode._(TfArgLiteral('RU'));
  static const rw = Route53domainsDomainCountryCode._(TfArgLiteral('RW'));
  static const sa = Route53domainsDomainCountryCode._(TfArgLiteral('SA'));
  static const sb = Route53domainsDomainCountryCode._(TfArgLiteral('SB'));
  static const sc = Route53domainsDomainCountryCode._(TfArgLiteral('SC'));
  static const sd = Route53domainsDomainCountryCode._(TfArgLiteral('SD'));
  static const se = Route53domainsDomainCountryCode._(TfArgLiteral('SE'));
  static const sg = Route53domainsDomainCountryCode._(TfArgLiteral('SG'));
  static const sh = Route53domainsDomainCountryCode._(TfArgLiteral('SH'));
  static const si = Route53domainsDomainCountryCode._(TfArgLiteral('SI'));
  static const sj = Route53domainsDomainCountryCode._(TfArgLiteral('SJ'));
  static const sk = Route53domainsDomainCountryCode._(TfArgLiteral('SK'));
  static const sl = Route53domainsDomainCountryCode._(TfArgLiteral('SL'));
  static const sm = Route53domainsDomainCountryCode._(TfArgLiteral('SM'));
  static const sn = Route53domainsDomainCountryCode._(TfArgLiteral('SN'));
  static const so = Route53domainsDomainCountryCode._(TfArgLiteral('SO'));
  static const sr = Route53domainsDomainCountryCode._(TfArgLiteral('SR'));
  static const ss = Route53domainsDomainCountryCode._(TfArgLiteral('SS'));
  static const st = Route53domainsDomainCountryCode._(TfArgLiteral('ST'));
  static const sv = Route53domainsDomainCountryCode._(TfArgLiteral('SV'));
  static const sx = Route53domainsDomainCountryCode._(TfArgLiteral('SX'));
  static const sy = Route53domainsDomainCountryCode._(TfArgLiteral('SY'));
  static const sz = Route53domainsDomainCountryCode._(TfArgLiteral('SZ'));
  static const tc = Route53domainsDomainCountryCode._(TfArgLiteral('TC'));
  static const td = Route53domainsDomainCountryCode._(TfArgLiteral('TD'));
  static const tf = Route53domainsDomainCountryCode._(TfArgLiteral('TF'));
  static const tg = Route53domainsDomainCountryCode._(TfArgLiteral('TG'));
  static const th = Route53domainsDomainCountryCode._(TfArgLiteral('TH'));
  static const tj = Route53domainsDomainCountryCode._(TfArgLiteral('TJ'));
  static const tk = Route53domainsDomainCountryCode._(TfArgLiteral('TK'));
  static const tl = Route53domainsDomainCountryCode._(TfArgLiteral('TL'));
  static const tm = Route53domainsDomainCountryCode._(TfArgLiteral('TM'));
  static const tn = Route53domainsDomainCountryCode._(TfArgLiteral('TN'));
  static const to = Route53domainsDomainCountryCode._(TfArgLiteral('TO'));
  static const tp = Route53domainsDomainCountryCode._(TfArgLiteral('TP'));
  static const tr = Route53domainsDomainCountryCode._(TfArgLiteral('TR'));
  static const tt = Route53domainsDomainCountryCode._(TfArgLiteral('TT'));
  static const tv = Route53domainsDomainCountryCode._(TfArgLiteral('TV'));
  static const tw = Route53domainsDomainCountryCode._(TfArgLiteral('TW'));
  static const tz = Route53domainsDomainCountryCode._(TfArgLiteral('TZ'));
  static const ua = Route53domainsDomainCountryCode._(TfArgLiteral('UA'));
  static const ug = Route53domainsDomainCountryCode._(TfArgLiteral('UG'));
  static const us = Route53domainsDomainCountryCode._(TfArgLiteral('US'));
  static const uy = Route53domainsDomainCountryCode._(TfArgLiteral('UY'));
  static const uz = Route53domainsDomainCountryCode._(TfArgLiteral('UZ'));
  static const va = Route53domainsDomainCountryCode._(TfArgLiteral('VA'));
  static const vc = Route53domainsDomainCountryCode._(TfArgLiteral('VC'));
  static const ve = Route53domainsDomainCountryCode._(TfArgLiteral('VE'));
  static const vg = Route53domainsDomainCountryCode._(TfArgLiteral('VG'));
  static const vi = Route53domainsDomainCountryCode._(TfArgLiteral('VI'));
  static const vn = Route53domainsDomainCountryCode._(TfArgLiteral('VN'));
  static const vu = Route53domainsDomainCountryCode._(TfArgLiteral('VU'));
  static const wf = Route53domainsDomainCountryCode._(TfArgLiteral('WF'));
  static const ws = Route53domainsDomainCountryCode._(TfArgLiteral('WS'));
  static const ye = Route53domainsDomainCountryCode._(TfArgLiteral('YE'));
  static const yt = Route53domainsDomainCountryCode._(TfArgLiteral('YT'));
  static const za = Route53domainsDomainCountryCode._(TfArgLiteral('ZA'));
  static const zm = Route53domainsDomainCountryCode._(TfArgLiteral('ZM'));
  static const zw = Route53domainsDomainCountryCode._(TfArgLiteral('ZW'));

  static const List<Route53domainsDomainCountryCode> values = [
    ac,
    ad,
    ae,
    af,
    ag,
    ai,
    al,
    am,
    an,
    ao,
    aq,
    ar,
    as,
    at,
    au,
    aw,
    ax,
    az,
    ba,
    bb,
    bd,
    be,
    bf,
    bg,
    bh,
    bi,
    bj,
    bl,
    bm,
    bn,
    bo,
    bq,
    br,
    bs,
    bt,
    bv,
    bw,
    by,
    bz,
    ca,
    cc,
    cd,
    cf,
    cg,
    ch,
    ci,
    ck,
    cl,
    cm,
    cn,
    co,
    cr,
    cu,
    cv,
    cw,
    cx,
    cy,
    cz,
    de,
    dj,
    dk,
    dm,
    doCase,
    dz,
    ec,
    ee,
    eg,
    eh,
    er,
    es,
    et,
    fi,
    fj,
    fk,
    fm,
    fo,
    fr,
    ga,
    gb,
    gd,
    ge,
    gf,
    gg,
    gh,
    gi,
    gl,
    gm,
    gn,
    gp,
    gq,
    gr,
    gs,
    gt,
    gu,
    gw,
    gy,
    hk,
    hm,
    hn,
    hr,
    ht,
    hu,
    id,
    ie,
    il,
    im,
    inCase,
    io,
    iq,
    ir,
    isCase,
    it,
    je,
    jm,
    jo,
    jp,
    ke,
    kg,
    kh,
    ki,
    km,
    kn,
    kp,
    kr,
    kw,
    ky,
    kz,
    la,
    lb,
    lc,
    li,
    lk,
    lr,
    ls,
    lt,
    lu,
    lv,
    ly,
    ma,
    mc,
    md,
    me,
    mf,
    mg,
    mh,
    mk,
    ml,
    mm,
    mn,
    mo,
    mp,
    mq,
    mr,
    ms,
    mt,
    mu,
    mv,
    mw,
    mx,
    my,
    mz,
    na,
    nc,
    ne,
    nf,
    ng,
    ni,
    nl,
    no,
    np,
    nr,
    nu,
    nz,
    om,
    pa,
    pe,
    pf,
    pg,
    ph,
    pk,
    pl,
    pm,
    pn,
    pr,
    ps,
    pt,
    pw,
    py,
    qa,
    re,
    ro,
    rs,
    ru,
    rw,
    sa,
    sb,
    sc,
    sd,
    se,
    sg,
    sh,
    si,
    sj,
    sk,
    sl,
    sm,
    sn,
    so,
    sr,
    ss,
    st,
    sv,
    sx,
    sy,
    sz,
    tc,
    td,
    tf,
    tg,
    th,
    tj,
    tk,
    tl,
    tm,
    tn,
    to,
    tp,
    tr,
    tt,
    tv,
    tw,
    tz,
    ua,
    ug,
    us,
    uy,
    uz,
    va,
    vc,
    ve,
    vg,
    vi,
    vn,
    vu,
    wf,
    ws,
    ye,
    yt,
    za,
    zm,
    zw,
  ];
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

  @internal
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

  final Route53domainsDomainContactType? contactType;

  final Route53domainsDomainCountryCode? countryCode;

  final TfArg<String>? email;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  final List<Route53domainsDomainExtraParam>? extraParam;

  @internal
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

  final Route53domainsDomainContactType? contactType;

  final Route53domainsDomainCountryCode? countryCode;

  final TfArg<String>? email;

  final TfArg<String>? fax;

  final TfArg<String>? firstName;

  final TfArg<String>? lastName;

  final TfArg<String>? organizationName;

  final TfArg<String>? phoneNumber;

  final TfArg<String>? state;

  final TfArg<String>? zipCode;

  final List<Route53domainsDomainExtraParam>? extraParam;

  @internal
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
