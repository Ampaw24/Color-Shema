
class Data {
  String? mode;
  String? count;
  List<Colors>? colors;
  Seed? seed;
  Image2? image;
  Links2? links;
  Embedded2? embedded;

  Data({this.mode, this.count, this.colors, this.seed, this.image, this.links, this.embedded});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["mode"] is String) {
      mode = json["mode"];
    }
    if(json["count"] is String) {
      count = json["count"];
    }
    if(json["colors"] is List) {
      colors = json["colors"] == null ? null : (json["colors"] as List).map((e) => Colors.fromJson(e)).toList();
    }
    if(json["seed"] is Map) {
      seed = json["seed"] == null ? null : Seed.fromJson(json["seed"]);
    }
    if(json["image"] is Map) {
      image = json["image"] == null ? null : Image2.fromJson(json["image"]);
    }
    if(json["_links"] is Map) {
      links = json["_links"] == null ? null : Links2.fromJson(json["_links"]);
    }
    if(json["_embedded"] is Map) {
      embedded = json["_embedded"] == null ? null : Embedded2.fromJson(json["_embedded"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["mode"] = mode;
    _data["count"] = count;
    if(colors != null) {
      _data["colors"] = colors?.map((e) => e.toJson()).toList();
    }
    if(seed != null) {
      _data["seed"] = seed?.toJson();
    }
    if(image != null) {
      _data["image"] = image?.toJson();
    }
    if(links != null) {
      _data["_links"] = links?.toJson();
    }
    if(embedded != null) {
      _data["_embedded"] = embedded?.toJson();
    }
    return _data;
  }
}

class Embedded2 {
  Embedded2();

  Embedded2.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class Links2 {
  String? self;
  Schemes? schemes;

  Links2({this.self, this.schemes});

  Links2.fromJson(Map<String, dynamic> json) {
    if(json["self"] is String) {
      self = json["self"];
    }
    if(json["schemes"] is Map) {
      schemes = json["schemes"] == null ? null : Schemes.fromJson(json["schemes"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["self"] = self;
    if(schemes != null) {
      _data["schemes"] = schemes?.toJson();
    }
    return _data;
  }
}

class Schemes {
  String? monochrome;
  String? monochromeDark;
  String? monochromeLight;
  String? analogic;
  String? complement;
  String? analogicComplement;
  String? triad;
  String? quad;

  Schemes({this.monochrome, this.monochromeDark, this.monochromeLight, this.analogic, this.complement, this.analogicComplement, this.triad, this.quad});

  Schemes.fromJson(Map<String, dynamic> json) {
    if(json["monochrome"] is String) {
      monochrome = json["monochrome"];
    }
    if(json["monochrome-dark"] is String) {
      monochromeDark = json["monochrome-dark"];
    }
    if(json["monochrome-light"] is String) {
      monochromeLight = json["monochrome-light"];
    }
    if(json["analogic"] is String) {
      analogic = json["analogic"];
    }
    if(json["complement"] is String) {
      complement = json["complement"];
    }
    if(json["analogic-complement"] is String) {
      analogicComplement = json["analogic-complement"];
    }
    if(json["triad"] is String) {
      triad = json["triad"];
    }
    if(json["quad"] is String) {
      quad = json["quad"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["monochrome"] = monochrome;
    _data["monochrome-dark"] = monochromeDark;
    _data["monochrome-light"] = monochromeLight;
    _data["analogic"] = analogic;
    _data["complement"] = complement;
    _data["analogic-complement"] = analogicComplement;
    _data["triad"] = triad;
    _data["quad"] = quad;
    return _data;
  }
}

class Image2 {
  String? bare;
  String? named;

  Image2({this.bare, this.named});

  Image2.fromJson(Map<String, dynamic> json) {
    if(json["bare"] is String) {
      bare = json["bare"];
    }
    if(json["named"] is String) {
      named = json["named"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bare"] = bare;
    _data["named"] = named;
    return _data;
  }
}

class Seed {
  Hex1? hex;
  Rgb1? rgb;
  Hsl1? hsl;
  Hsv1? hsv;
  Name1? name;
  Cmyk1? cmyk;
  Xyz1? xyz;
  Image1? image;
  Contrast1? contrast;
  Links1? links;
  Embedded1? embedded;

  Seed({this.hex, this.rgb, this.hsl, this.hsv, this.name, this.cmyk, this.xyz, this.image, this.contrast, this.links, this.embedded});

  Seed.fromJson(Map<String, dynamic> json) {
    if(json["hex"] is Map) {
      hex = json["hex"] == null ? null : Hex1.fromJson(json["hex"]);
    }
    if(json["rgb"] is Map) {
      rgb = json["rgb"] == null ? null : Rgb1.fromJson(json["rgb"]);
    }
    if(json["hsl"] is Map) {
      hsl = json["hsl"] == null ? null : Hsl1.fromJson(json["hsl"]);
    }
    if(json["hsv"] is Map) {
      hsv = json["hsv"] == null ? null : Hsv1.fromJson(json["hsv"]);
    }
    if(json["name"] is Map) {
      name = json["name"] == null ? null : Name1.fromJson(json["name"]);
    }
    if(json["cmyk"] is Map) {
      cmyk = json["cmyk"] == null ? null : Cmyk1.fromJson(json["cmyk"]);
    }
    if(json["XYZ"] is Map) {
      xyz = json["XYZ"] == null ? null : Xyz1.fromJson(json["XYZ"]);
    }
    if(json["image"] is Map) {
      image = json["image"] == null ? null : Image1.fromJson(json["image"]);
    }
    if(json["contrast"] is Map) {
      contrast = json["contrast"] == null ? null : Contrast1.fromJson(json["contrast"]);
    }
    if(json["_links"] is Map) {
      links = json["_links"] == null ? null : Links1.fromJson(json["_links"]);
    }
    if(json["_embedded"] is Map) {
      embedded = json["_embedded"] == null ? null : Embedded1.fromJson(json["_embedded"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(hex != null) {
      _data["hex"] = hex?.toJson();
    }
    if(rgb != null) {
      _data["rgb"] = rgb?.toJson();
    }
    if(hsl != null) {
      _data["hsl"] = hsl?.toJson();
    }
    if(hsv != null) {
      _data["hsv"] = hsv?.toJson();
    }
    if(name != null) {
      _data["name"] = name?.toJson();
    }
    if(cmyk != null) {
      _data["cmyk"] = cmyk?.toJson();
    }
    if(xyz != null) {
      _data["XYZ"] = xyz?.toJson();
    }
    if(image != null) {
      _data["image"] = image?.toJson();
    }
    if(contrast != null) {
      _data["contrast"] = contrast?.toJson();
    }
    if(links != null) {
      _data["_links"] = links?.toJson();
    }
    if(embedded != null) {
      _data["_embedded"] = embedded?.toJson();
    }
    return _data;
  }
}

class Embedded1 {
  Embedded1();

  Embedded1.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class Links1 {
  Self1? self;

  Links1({this.self});

  Links1.fromJson(Map<String, dynamic> json) {
    if(json["self"] is Map) {
      self = json["self"] == null ? null : Self1.fromJson(json["self"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(self != null) {
      _data["self"] = self?.toJson();
    }
    return _data;
  }
}

class Self1 {
  String? href;

  Self1({this.href});

  Self1.fromJson(Map<String, dynamic> json) {
    if(json["href"] is String) {
      href = json["href"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["href"] = href;
    return _data;
  }
}

class Contrast1 {
  String? value;

  Contrast1({this.value});

  Contrast1.fromJson(Map<String, dynamic> json) {
    if(json["value"] is String) {
      value = json["value"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    return _data;
  }
}

class Image1 {
  String? bare;
  String? named;

  Image1({this.bare, this.named});

  Image1.fromJson(Map<String, dynamic> json) {
    if(json["bare"] is String) {
      bare = json["bare"];
    }
    if(json["named"] is String) {
      named = json["named"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bare"] = bare;
    _data["named"] = named;
    return _data;
  }
}

class Xyz1 {
  Fraction9? fraction;
  String? value;
  int? x;
  int? y;
  int? z;

  Xyz1({this.fraction, this.value, this.x, this.y, this.z});

  Xyz1.fromJson(Map<String, dynamic> json) {
    if(json["fraction"] is Map) {
      fraction = json["fraction"] == null ? null : Fraction9.fromJson(json["fraction"]);
    }
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["X"] is int) {
      x = json["X"];
    }
    if(json["Y"] is int) {
      y = json["Y"];
    }
    if(json["Z"] is int) {
      z = json["Z"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fraction != null) {
      _data["fraction"] = fraction?.toJson();
    }
    _data["value"] = value;
    _data["X"] = x;
    _data["Y"] = y;
    _data["Z"] = z;
    return _data;
  }
}

class Fraction9 {
  double? x;
  double? y;
  double? z;

  Fraction9({this.x, this.y, this.z});

  Fraction9.fromJson(Map<String, dynamic> json) {
    if(json["X"] is double) {
      x = json["X"];
    }
    if(json["Y"] is double) {
      y = json["Y"];
    }
    if(json["Z"] is double) {
      z = json["Z"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["X"] = x;
    _data["Y"] = y;
    _data["Z"] = z;
    return _data;
  }
}

class Cmyk1 {
  Fraction8? fraction;
  String? value;
  int? c;
  int? m;
  int? y;
  int? k;

  Cmyk1({this.fraction, this.value, this.c, this.m, this.y, this.k});

  Cmyk1.fromJson(Map<String, dynamic> json) {
    if(json["fraction"] is Map) {
      fraction = json["fraction"] == null ? null : Fraction8.fromJson(json["fraction"]);
    }
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["c"] is int) {
      c = json["c"];
    }
    if(json["m"] is int) {
      m = json["m"];
    }
    if(json["y"] is int) {
      y = json["y"];
    }
    if(json["k"] is int) {
      k = json["k"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fraction != null) {
      _data["fraction"] = fraction?.toJson();
    }
    _data["value"] = value;
    _data["c"] = c;
    _data["m"] = m;
    _data["y"] = y;
    _data["k"] = k;
    return _data;
  }
}

class Fraction8 {
  int? c;
  double? m;
  int? y;
  double? k;

  Fraction8({this.c, this.m, this.y, this.k});

  Fraction8.fromJson(Map<String, dynamic> json) {
    if(json["c"] is int) {
      c = json["c"];
    }
    if(json["m"] is double) {
      m = json["m"];
    }
    if(json["y"] is int) {
      y = json["y"];
    }
    if(json["k"] is double) {
      k = json["k"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["c"] = c;
    _data["m"] = m;
    _data["y"] = y;
    _data["k"] = k;
    return _data;
  }
}

class Name1 {
  String? value;
  String? closestNamedHex;
  bool? exactMatchName;
  int? distance;

  Name1({this.value, this.closestNamedHex, this.exactMatchName, this.distance});

  Name1.fromJson(Map<String, dynamic> json) {
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["closest_named_hex"] is String) {
      closestNamedHex = json["closest_named_hex"];
    }
    if(json["exact_match_name"] is bool) {
      exactMatchName = json["exact_match_name"];
    }
    if(json["distance"] is int) {
      distance = json["distance"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    _data["closest_named_hex"] = closestNamedHex;
    _data["exact_match_name"] = exactMatchName;
    _data["distance"] = distance;
    return _data;
  }
}

class Hsv1 {
  Fraction7? fraction;
  String? value;
  int? h;
  int? s;
  int? v;

  Hsv1({this.fraction, this.value, this.h, this.s, this.v});

  Hsv1.fromJson(Map<String, dynamic> json) {
    if(json["fraction"] is Map) {
      fraction = json["fraction"] == null ? null : Fraction7.fromJson(json["fraction"]);
    }
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["h"] is int) {
      h = json["h"];
    }
    if(json["s"] is int) {
      s = json["s"];
    }
    if(json["v"] is int) {
      v = json["v"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fraction != null) {
      _data["fraction"] = fraction?.toJson();
    }
    _data["value"] = value;
    _data["h"] = h;
    _data["s"] = s;
    _data["v"] = v;
    return _data;
  }
}

class Fraction7 {
  double? h;
  int? s;
  double? v;

  Fraction7({this.h, this.s, this.v});

  Fraction7.fromJson(Map<String, dynamic> json) {
    if(json["h"] is double) {
      h = json["h"];
    }
    if(json["s"] is int) {
      s = json["s"];
    }
    if(json["v"] is double) {
      v = json["v"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["h"] = h;
    _data["s"] = s;
    _data["v"] = v;
    return _data;
  }
}

class Hsl1 {
  Fraction6? fraction;
  int? h;
  int? s;
  int? l;
  String? value;

  Hsl1({this.fraction, this.h, this.s, this.l, this.value});

  Hsl1.fromJson(Map<String, dynamic> json) {
    if(json["fraction"] is Map) {
      fraction = json["fraction"] == null ? null : Fraction6.fromJson(json["fraction"]);
    }
    if(json["h"] is int) {
      h = json["h"];
    }
    if(json["s"] is int) {
      s = json["s"];
    }
    if(json["l"] is int) {
      l = json["l"];
    }
    if(json["value"] is String) {
      value = json["value"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fraction != null) {
      _data["fraction"] = fraction?.toJson();
    }
    _data["h"] = h;
    _data["s"] = s;
    _data["l"] = l;
    _data["value"] = value;
    return _data;
  }
}

class Fraction6 {
  double? h;
  int? s;
  double? l;

  Fraction6({this.h, this.s, this.l});

  Fraction6.fromJson(Map<String, dynamic> json) {
    if(json["h"] is double) {
      h = json["h"];
    }
    if(json["s"] is int) {
      s = json["s"];
    }
    if(json["l"] is double) {
      l = json["l"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["h"] = h;
    _data["s"] = s;
    _data["l"] = l;
    return _data;
  }
}

class Rgb1 {
  Fraction5? fraction;
  int? r;
  int? g;
  int? b;
  String? value;

  Rgb1({this.fraction, this.r, this.g, this.b, this.value});

  Rgb1.fromJson(Map<String, dynamic> json) {
    if(json["fraction"] is Map) {
      fraction = json["fraction"] == null ? null : Fraction5.fromJson(json["fraction"]);
    }
    if(json["r"] is int) {
      r = json["r"];
    }
    if(json["g"] is int) {
      g = json["g"];
    }
    if(json["b"] is int) {
      b = json["b"];
    }
    if(json["value"] is String) {
      value = json["value"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fraction != null) {
      _data["fraction"] = fraction?.toJson();
    }
    _data["r"] = r;
    _data["g"] = g;
    _data["b"] = b;
    _data["value"] = value;
    return _data;
  }
}

class Fraction5 {
  int? r;
  double? g;
  double? b;

  Fraction5({this.r, this.g, this.b});

  Fraction5.fromJson(Map<String, dynamic> json) {
    if(json["r"] is int) {
      r = json["r"];
    }
    if(json["g"] is double) {
      g = json["g"];
    }
    if(json["b"] is double) {
      b = json["b"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["r"] = r;
    _data["g"] = g;
    _data["b"] = b;
    return _data;
  }
}

class Hex1 {
  String? value;
  String? clean;

  Hex1({this.value, this.clean});

  Hex1.fromJson(Map<String, dynamic> json) {
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["clean"] is String) {
      clean = json["clean"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    _data["clean"] = clean;
    return _data;
  }
}

class Colors {
  Hex? hex;
  Rgb? rgb;
  Hsl? hsl;
  Hsv? hsv;
  Name? name;
  Cmyk? cmyk;
  Xyz? xyz;
  Image? image;
  Contrast? contrast;
  Links? links;
  Embedded? embedded;

  Colors({this.hex, this.rgb, this.hsl, this.hsv, this.name, this.cmyk, this.xyz, this.image, this.contrast, this.links, this.embedded});

  Colors.fromJson(Map<String, dynamic> json) {
    if(json["hex"] is Map) {
      hex = json["hex"] == null ? null : Hex.fromJson(json["hex"]);
    }
    if(json["rgb"] is Map) {
      rgb = json["rgb"] == null ? null : Rgb.fromJson(json["rgb"]);
    }
    if(json["hsl"] is Map) {
      hsl = json["hsl"] == null ? null : Hsl.fromJson(json["hsl"]);
    }
    if(json["hsv"] is Map) {
      hsv = json["hsv"] == null ? null : Hsv.fromJson(json["hsv"]);
    }
    if(json["name"] is Map) {
      name = json["name"] == null ? null : Name.fromJson(json["name"]);
    }
    if(json["cmyk"] is Map) {
      cmyk = json["cmyk"] == null ? null : Cmyk.fromJson(json["cmyk"]);
    }
    if(json["XYZ"] is Map) {
      xyz = json["XYZ"] == null ? null : Xyz.fromJson(json["XYZ"]);
    }
    if(json["image"] is Map) {
      image = json["image"] == null ? null : Image.fromJson(json["image"]);
    }
    if(json["contrast"] is Map) {
      contrast = json["contrast"] == null ? null : Contrast.fromJson(json["contrast"]);
    }
    if(json["_links"] is Map) {
      links = json["_links"] == null ? null : Links.fromJson(json["_links"]);
    }
    if(json["_embedded"] is Map) {
      embedded = json["_embedded"] == null ? null : Embedded.fromJson(json["_embedded"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(hex != null) {
      _data["hex"] = hex?.toJson();
    }
    if(rgb != null) {
      _data["rgb"] = rgb?.toJson();
    }
    if(hsl != null) {
      _data["hsl"] = hsl?.toJson();
    }
    if(hsv != null) {
      _data["hsv"] = hsv?.toJson();
    }
    if(name != null) {
      _data["name"] = name?.toJson();
    }
    if(cmyk != null) {
      _data["cmyk"] = cmyk?.toJson();
    }
    if(xyz != null) {
      _data["XYZ"] = xyz?.toJson();
    }
    if(image != null) {
      _data["image"] = image?.toJson();
    }
    if(contrast != null) {
      _data["contrast"] = contrast?.toJson();
    }
    if(links != null) {
      _data["_links"] = links?.toJson();
    }
    if(embedded != null) {
      _data["_embedded"] = embedded?.toJson();
    }
    return _data;
  }
}

class Embedded {
  Embedded();

  Embedded.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class Links {
  Self? self;

  Links({this.self});

  Links.fromJson(Map<String, dynamic> json) {
    if(json["self"] is Map) {
      self = json["self"] == null ? null : Self.fromJson(json["self"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(self != null) {
      _data["self"] = self?.toJson();
    }
    return _data;
  }
}

class Self {
  String? href;

  Self({this.href});

  Self.fromJson(Map<String, dynamic> json) {
    if(json["href"] is String) {
      href = json["href"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["href"] = href;
    return _data;
  }
}

class Contrast {
  String? value;

  Contrast({this.value});

  Contrast.fromJson(Map<String, dynamic> json) {
    if(json["value"] is String) {
      value = json["value"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    return _data;
  }
}

class Image {
  String? bare;
  String? named;

  Image({this.bare, this.named});

  Image.fromJson(Map<String, dynamic> json) {
    if(json["bare"] is String) {
      bare = json["bare"];
    }
    if(json["named"] is String) {
      named = json["named"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bare"] = bare;
    _data["named"] = named;
    return _data;
  }
}

class Xyz {
  Fraction4? fraction;
  String? value;
  int? x;
  int? y;
  int? z;

  Xyz({this.fraction, this.value, this.x, this.y, this.z});

  Xyz.fromJson(Map<String, dynamic> json) {
    if(json["fraction"] is Map) {
      fraction = json["fraction"] == null ? null : Fraction4.fromJson(json["fraction"]);
    }
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["X"] is int) {
      x = json["X"];
    }
    if(json["Y"] is int) {
      y = json["Y"];
    }
    if(json["Z"] is int) {
      z = json["Z"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fraction != null) {
      _data["fraction"] = fraction?.toJson();
    }
    _data["value"] = value;
    _data["X"] = x;
    _data["Y"] = y;
    _data["Z"] = z;
    return _data;
  }
}

class Fraction4 {
  double? x;
  double? y;
  double? z;

  Fraction4({this.x, this.y, this.z});

  Fraction4.fromJson(Map<String, dynamic> json) {
    if(json["X"] is double) {
      x = json["X"];
    }
    if(json["Y"] is double) {
      y = json["Y"];
    }
    if(json["Z"] is double) {
      z = json["Z"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["X"] = x;
    _data["Y"] = y;
    _data["Z"] = z;
    return _data;
  }
}

class Cmyk {
  Fraction3? fraction;
  String? value;
  int? c;
  int? m;
  int? y;
  int? k;

  Cmyk({this.fraction, this.value, this.c, this.m, this.y, this.k});

  Cmyk.fromJson(Map<String, dynamic> json) {
    if(json["fraction"] is Map) {
      fraction = json["fraction"] == null ? null : Fraction3.fromJson(json["fraction"]);
    }
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["c"] is int) {
      c = json["c"];
    }
    if(json["m"] is int) {
      m = json["m"];
    }
    if(json["y"] is int) {
      y = json["y"];
    }
    if(json["k"] is int) {
      k = json["k"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fraction != null) {
      _data["fraction"] = fraction?.toJson();
    }
    _data["value"] = value;
    _data["c"] = c;
    _data["m"] = m;
    _data["y"] = y;
    _data["k"] = k;
    return _data;
  }
}

class Fraction3 {
  double? c;
  double? m;
  int? y;
  double? k;

  Fraction3({this.c, this.m, this.y, this.k});

  Fraction3.fromJson(Map<String, dynamic> json) {
    if(json["c"] is double) {
      c = json["c"];
    }
    if(json["m"] is double) {
      m = json["m"];
    }
    if(json["y"] is int) {
      y = json["y"];
    }
    if(json["k"] is double) {
      k = json["k"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["c"] = c;
    _data["m"] = m;
    _data["y"] = y;
    _data["k"] = k;
    return _data;
  }
}

class Name {
  String? value;
  String? closestNamedHex;
  bool? exactMatchName;
  int? distance;

  Name({this.value, this.closestNamedHex, this.exactMatchName, this.distance});

  Name.fromJson(Map<String, dynamic> json) {
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["closest_named_hex"] is String) {
      closestNamedHex = json["closest_named_hex"];
    }
    if(json["exact_match_name"] is bool) {
      exactMatchName = json["exact_match_name"];
    }
    if(json["distance"] is int) {
      distance = json["distance"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    _data["closest_named_hex"] = closestNamedHex;
    _data["exact_match_name"] = exactMatchName;
    _data["distance"] = distance;
    return _data;
  }
}

class Hsv {
  Fraction2? fraction;
  String? value;
  int? h;
  int? s;
  int? v;

  Hsv({this.fraction, this.value, this.h, this.s, this.v});

  Hsv.fromJson(Map<String, dynamic> json) {
    if(json["fraction"] is Map) {
      fraction = json["fraction"] == null ? null : Fraction2.fromJson(json["fraction"]);
    }
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["h"] is int) {
      h = json["h"];
    }
    if(json["s"] is int) {
      s = json["s"];
    }
    if(json["v"] is int) {
      v = json["v"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fraction != null) {
      _data["fraction"] = fraction?.toJson();
    }
    _data["value"] = value;
    _data["h"] = h;
    _data["s"] = s;
    _data["v"] = v;
    return _data;
  }
}

class Fraction2 {
  double? h;
  double? s;
  double? v;

  Fraction2({this.h, this.s, this.v});

  Fraction2.fromJson(Map<String, dynamic> json) {
    if(json["h"] is double) {
      h = json["h"];
    }
    if(json["s"] is double) {
      s = json["s"];
    }
    if(json["v"] is double) {
      v = json["v"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["h"] = h;
    _data["s"] = s;
    _data["v"] = v;
    return _data;
  }
}

class Hsl {
  Fraction1? fraction;
  int? h;
  int? s;
  int? l;
  String? value;

  Hsl({this.fraction, this.h, this.s, this.l, this.value});

  Hsl.fromJson(Map<String, dynamic> json) {
    if(json["fraction"] is Map) {
      fraction = json["fraction"] == null ? null : Fraction1.fromJson(json["fraction"]);
    }
    if(json["h"] is int) {
      h = json["h"];
    }
    if(json["s"] is int) {
      s = json["s"];
    }
    if(json["l"] is int) {
      l = json["l"];
    }
    if(json["value"] is String) {
      value = json["value"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fraction != null) {
      _data["fraction"] = fraction?.toJson();
    }
    _data["h"] = h;
    _data["s"] = s;
    _data["l"] = l;
    _data["value"] = value;
    return _data;
  }
}

class Fraction1 {
  double? h;
  double? s;
  double? l;

  Fraction1({this.h, this.s, this.l});

  Fraction1.fromJson(Map<String, dynamic> json) {
    if(json["h"] is double) {
      h = json["h"];
    }
    if(json["s"] is double) {
      s = json["s"];
    }
    if(json["l"] is double) {
      l = json["l"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["h"] = h;
    _data["s"] = s;
    _data["l"] = l;
    return _data;
  }
}

class Rgb {
  Fraction? fraction;
  int? r;
  int? g;
  int? b;
  String? value;

  Rgb({this.fraction, this.r, this.g, this.b, this.value});

  Rgb.fromJson(Map<String, dynamic> json) {
    if(json["fraction"] is Map) {
      fraction = json["fraction"] == null ? null : Fraction.fromJson(json["fraction"]);
    }
    if(json["r"] is int) {
      r = json["r"];
    }
    if(json["g"] is int) {
      g = json["g"];
    }
    if(json["b"] is int) {
      b = json["b"];
    }
    if(json["value"] is String) {
      value = json["value"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fraction != null) {
      _data["fraction"] = fraction?.toJson();
    }
    _data["r"] = r;
    _data["g"] = g;
    _data["b"] = b;
    _data["value"] = value;
    return _data;
  }
}

class Fraction {
  double? r;
  double? g;
  double? b;

  Fraction({this.r, this.g, this.b});

  Fraction.fromJson(Map<String, dynamic> json) {
    if(json["r"] is double) {
      r = json["r"];
    }
    if(json["g"] is double) {
      g = json["g"];
    }
    if(json["b"] is double) {
      b = json["b"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["r"] = r;
    _data["g"] = g;
    _data["b"] = b;
    return _data;
  }
}

class Hex {
  String? value;
  String? clean;

  Hex({this.value, this.clean});

  Hex.fromJson(Map<String, dynamic> json) {
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["clean"] is String) {
      clean = json["clean"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    _data["clean"] = clean;
    return _data;
  }
}