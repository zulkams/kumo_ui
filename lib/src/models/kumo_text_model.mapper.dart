// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'kumo_text_model.dart';

class KumoTextAlignMapper extends EnumMapper<KumoTextAlign> {
  KumoTextAlignMapper._();

  static KumoTextAlignMapper? _instance;
  static KumoTextAlignMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = KumoTextAlignMapper._());
    }
    return _instance!;
  }

  static KumoTextAlign fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  KumoTextAlign decode(dynamic value) {
    switch (value) {
      case r'left':
        return KumoTextAlign.left;
      case r'right':
        return KumoTextAlign.right;
      case r'center':
        return KumoTextAlign.center;
      case r'justify':
        return KumoTextAlign.justify;
      case r'start':
        return KumoTextAlign.start;
      case r'end':
        return KumoTextAlign.end;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(KumoTextAlign self) {
    switch (self) {
      case KumoTextAlign.left:
        return r'left';
      case KumoTextAlign.right:
        return r'right';
      case KumoTextAlign.center:
        return r'center';
      case KumoTextAlign.justify:
        return r'justify';
      case KumoTextAlign.start:
        return r'start';
      case KumoTextAlign.end:
        return r'end';
    }
  }
}

extension KumoTextAlignMapperExtension on KumoTextAlign {
  String toValue() {
    KumoTextAlignMapper.ensureInitialized();
    return MapperContainer.globals.toValue<KumoTextAlign>(this) as String;
  }
}

class KumoTextDirectionMapper extends EnumMapper<KumoTextDirection> {
  KumoTextDirectionMapper._();

  static KumoTextDirectionMapper? _instance;
  static KumoTextDirectionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = KumoTextDirectionMapper._());
    }
    return _instance!;
  }

  static KumoTextDirection fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  KumoTextDirection decode(dynamic value) {
    switch (value) {
      case r'ltr':
        return KumoTextDirection.ltr;
      case r'rtl':
        return KumoTextDirection.rtl;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(KumoTextDirection self) {
    switch (self) {
      case KumoTextDirection.ltr:
        return r'ltr';
      case KumoTextDirection.rtl:
        return r'rtl';
    }
  }
}

extension KumoTextDirectionMapperExtension on KumoTextDirection {
  String toValue() {
    KumoTextDirectionMapper.ensureInitialized();
    return MapperContainer.globals.toValue<KumoTextDirection>(this) as String;
  }
}

class KumoTextOverflowMapper extends EnumMapper<KumoTextOverflow> {
  KumoTextOverflowMapper._();

  static KumoTextOverflowMapper? _instance;
  static KumoTextOverflowMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = KumoTextOverflowMapper._());
    }
    return _instance!;
  }

  static KumoTextOverflow fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  KumoTextOverflow decode(dynamic value) {
    switch (value) {
      case r'clip':
        return KumoTextOverflow.clip;
      case r'ellipsis':
        return KumoTextOverflow.ellipsis;
      case r'fade':
        return KumoTextOverflow.fade;
      case r'visible':
        return KumoTextOverflow.visible;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(KumoTextOverflow self) {
    switch (self) {
      case KumoTextOverflow.clip:
        return r'clip';
      case KumoTextOverflow.ellipsis:
        return r'ellipsis';
      case KumoTextOverflow.fade:
        return r'fade';
      case KumoTextOverflow.visible:
        return r'visible';
    }
  }
}

extension KumoTextOverflowMapperExtension on KumoTextOverflow {
  String toValue() {
    KumoTextOverflowMapper.ensureInitialized();
    return MapperContainer.globals.toValue<KumoTextOverflow>(this) as String;
  }
}

class KumoTextWidthBasisMapper extends EnumMapper<KumoTextWidthBasis> {
  KumoTextWidthBasisMapper._();

  static KumoTextWidthBasisMapper? _instance;
  static KumoTextWidthBasisMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = KumoTextWidthBasisMapper._());
    }
    return _instance!;
  }

  static KumoTextWidthBasis fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  KumoTextWidthBasis decode(dynamic value) {
    switch (value) {
      case r'parent':
        return KumoTextWidthBasis.parent;
      case r'longestLine':
        return KumoTextWidthBasis.longestLine;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(KumoTextWidthBasis self) {
    switch (self) {
      case KumoTextWidthBasis.parent:
        return r'parent';
      case KumoTextWidthBasis.longestLine:
        return r'longestLine';
    }
  }
}

extension KumoTextWidthBasisMapperExtension on KumoTextWidthBasis {
  String toValue() {
    KumoTextWidthBasisMapper.ensureInitialized();
    return MapperContainer.globals.toValue<KumoTextWidthBasis>(this) as String;
  }
}

class KumoTextStyleModelMapper extends ClassMapperBase<KumoTextStyleModel> {
  KumoTextStyleModelMapper._();

  static KumoTextStyleModelMapper? _instance;
  static KumoTextStyleModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = KumoTextStyleModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'KumoTextStyleModel';

  static double? _$fontSize(KumoTextStyleModel v) => v.fontSize;
  static const Field<KumoTextStyleModel, double> _f$fontSize =
      Field('fontSize', _$fontSize, opt: true);
  static String? _$color(KumoTextStyleModel v) => v.color;
  static const Field<KumoTextStyleModel, String> _f$color =
      Field('color', _$color, opt: true);
  static String? _$backgroundColor(KumoTextStyleModel v) => v.backgroundColor;
  static const Field<KumoTextStyleModel, String> _f$backgroundColor =
      Field('backgroundColor', _$backgroundColor, opt: true);
  static String? _$fontWeight(KumoTextStyleModel v) => v.fontWeight;
  static const Field<KumoTextStyleModel, String> _f$fontWeight =
      Field('fontWeight', _$fontWeight, opt: true);
  static String? _$fontStyle(KumoTextStyleModel v) => v.fontStyle;
  static const Field<KumoTextStyleModel, String> _f$fontStyle =
      Field('fontStyle', _$fontStyle, opt: true);

  @override
  final MappableFields<KumoTextStyleModel> fields = const {
    #fontSize: _f$fontSize,
    #color: _f$color,
    #backgroundColor: _f$backgroundColor,
    #fontWeight: _f$fontWeight,
    #fontStyle: _f$fontStyle,
  };

  static KumoTextStyleModel _instantiate(DecodingData data) {
    return KumoTextStyleModel(
        fontSize: data.dec(_f$fontSize),
        color: data.dec(_f$color),
        backgroundColor: data.dec(_f$backgroundColor),
        fontWeight: data.dec(_f$fontWeight),
        fontStyle: data.dec(_f$fontStyle));
  }

  @override
  final Function instantiate = _instantiate;

  static KumoTextStyleModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<KumoTextStyleModel>(map);
  }

  static KumoTextStyleModel fromJson(String json) {
    return ensureInitialized().decodeJson<KumoTextStyleModel>(json);
  }
}

mixin KumoTextStyleModelMappable {
  String toJson() {
    return KumoTextStyleModelMapper.ensureInitialized()
        .encodeJson<KumoTextStyleModel>(this as KumoTextStyleModel);
  }

  Map<String, dynamic> toMap() {
    return KumoTextStyleModelMapper.ensureInitialized()
        .encodeMap<KumoTextStyleModel>(this as KumoTextStyleModel);
  }

  KumoTextStyleModelCopyWith<KumoTextStyleModel, KumoTextStyleModel,
          KumoTextStyleModel>
      get copyWith => _KumoTextStyleModelCopyWithImpl<KumoTextStyleModel,
          KumoTextStyleModel>(this as KumoTextStyleModel, $identity, $identity);
  @override
  String toString() {
    return KumoTextStyleModelMapper.ensureInitialized()
        .stringifyValue(this as KumoTextStyleModel);
  }

  @override
  bool operator ==(Object other) {
    return KumoTextStyleModelMapper.ensureInitialized()
        .equalsValue(this as KumoTextStyleModel, other);
  }

  @override
  int get hashCode {
    return KumoTextStyleModelMapper.ensureInitialized()
        .hashValue(this as KumoTextStyleModel);
  }
}

extension KumoTextStyleModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, KumoTextStyleModel, $Out> {
  KumoTextStyleModelCopyWith<$R, KumoTextStyleModel, $Out>
      get $asKumoTextStyleModel => $base.as(
          (v, t, t2) => _KumoTextStyleModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class KumoTextStyleModelCopyWith<$R, $In extends KumoTextStyleModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {double? fontSize,
      String? color,
      String? backgroundColor,
      String? fontWeight,
      String? fontStyle});
  KumoTextStyleModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _KumoTextStyleModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, KumoTextStyleModel, $Out>
    implements KumoTextStyleModelCopyWith<$R, KumoTextStyleModel, $Out> {
  _KumoTextStyleModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<KumoTextStyleModel> $mapper =
      KumoTextStyleModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? fontSize = $none,
          Object? color = $none,
          Object? backgroundColor = $none,
          Object? fontWeight = $none,
          Object? fontStyle = $none}) =>
      $apply(FieldCopyWithData({
        if (fontSize != $none) #fontSize: fontSize,
        if (color != $none) #color: color,
        if (backgroundColor != $none) #backgroundColor: backgroundColor,
        if (fontWeight != $none) #fontWeight: fontWeight,
        if (fontStyle != $none) #fontStyle: fontStyle
      }));
  @override
  KumoTextStyleModel $make(CopyWithData data) => KumoTextStyleModel(
      fontSize: data.get(#fontSize, or: $value.fontSize),
      color: data.get(#color, or: $value.color),
      backgroundColor: data.get(#backgroundColor, or: $value.backgroundColor),
      fontWeight: data.get(#fontWeight, or: $value.fontWeight),
      fontStyle: data.get(#fontStyle, or: $value.fontStyle));

  @override
  KumoTextStyleModelCopyWith<$R2, KumoTextStyleModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _KumoTextStyleModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class KumoStrutStyleModelMapper extends ClassMapperBase<KumoStrutStyleModel> {
  KumoStrutStyleModelMapper._();

  static KumoStrutStyleModelMapper? _instance;
  static KumoStrutStyleModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = KumoStrutStyleModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'KumoStrutStyleModel';

  static double? _$fontSize(KumoStrutStyleModel v) => v.fontSize;
  static const Field<KumoStrutStyleModel, double> _f$fontSize =
      Field('fontSize', _$fontSize, opt: true);

  @override
  final MappableFields<KumoStrutStyleModel> fields = const {
    #fontSize: _f$fontSize,
  };

  static KumoStrutStyleModel _instantiate(DecodingData data) {
    return KumoStrutStyleModel(fontSize: data.dec(_f$fontSize));
  }

  @override
  final Function instantiate = _instantiate;

  static KumoStrutStyleModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<KumoStrutStyleModel>(map);
  }

  static KumoStrutStyleModel fromJson(String json) {
    return ensureInitialized().decodeJson<KumoStrutStyleModel>(json);
  }
}

mixin KumoStrutStyleModelMappable {
  String toJson() {
    return KumoStrutStyleModelMapper.ensureInitialized()
        .encodeJson<KumoStrutStyleModel>(this as KumoStrutStyleModel);
  }

  Map<String, dynamic> toMap() {
    return KumoStrutStyleModelMapper.ensureInitialized()
        .encodeMap<KumoStrutStyleModel>(this as KumoStrutStyleModel);
  }

  KumoStrutStyleModelCopyWith<KumoStrutStyleModel, KumoStrutStyleModel,
      KumoStrutStyleModel> get copyWith => _KumoStrutStyleModelCopyWithImpl<
          KumoStrutStyleModel, KumoStrutStyleModel>(
      this as KumoStrutStyleModel, $identity, $identity);
  @override
  String toString() {
    return KumoStrutStyleModelMapper.ensureInitialized()
        .stringifyValue(this as KumoStrutStyleModel);
  }

  @override
  bool operator ==(Object other) {
    return KumoStrutStyleModelMapper.ensureInitialized()
        .equalsValue(this as KumoStrutStyleModel, other);
  }

  @override
  int get hashCode {
    return KumoStrutStyleModelMapper.ensureInitialized()
        .hashValue(this as KumoStrutStyleModel);
  }
}

extension KumoStrutStyleModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, KumoStrutStyleModel, $Out> {
  KumoStrutStyleModelCopyWith<$R, KumoStrutStyleModel, $Out>
      get $asKumoStrutStyleModel => $base.as(
          (v, t, t2) => _KumoStrutStyleModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class KumoStrutStyleModelCopyWith<$R, $In extends KumoStrutStyleModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? fontSize});
  KumoStrutStyleModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _KumoStrutStyleModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, KumoStrutStyleModel, $Out>
    implements KumoStrutStyleModelCopyWith<$R, KumoStrutStyleModel, $Out> {
  _KumoStrutStyleModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<KumoStrutStyleModel> $mapper =
      KumoStrutStyleModelMapper.ensureInitialized();
  @override
  $R call({Object? fontSize = $none}) =>
      $apply(FieldCopyWithData({if (fontSize != $none) #fontSize: fontSize}));
  @override
  KumoStrutStyleModel $make(CopyWithData data) =>
      KumoStrutStyleModel(fontSize: data.get(#fontSize, or: $value.fontSize));

  @override
  KumoStrutStyleModelCopyWith<$R2, KumoStrutStyleModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _KumoStrutStyleModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class KumoWidgetModelMapper extends ClassMapperBase<KumoWidgetModel> {
  KumoWidgetModelMapper._();

  static KumoWidgetModelMapper? _instance;
  static KumoWidgetModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = KumoWidgetModelMapper._());
      KumoTextModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'KumoWidgetModel';

  @override
  final MappableFields<KumoWidgetModel> fields = const {};

  static KumoWidgetModel _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'KumoWidgetModel', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static KumoWidgetModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<KumoWidgetModel>(map);
  }

  static KumoWidgetModel fromJson(String json) {
    return ensureInitialized().decodeJson<KumoWidgetModel>(json);
  }
}

mixin KumoWidgetModelMappable {
  String toJson();
  Map<String, dynamic> toMap();
  KumoWidgetModelCopyWith<KumoWidgetModel, KumoWidgetModel, KumoWidgetModel>
      get copyWith;
}

abstract class KumoWidgetModelCopyWith<$R, $In extends KumoWidgetModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  KumoWidgetModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class KumoTextModelMapper extends SubClassMapperBase<KumoTextModel> {
  KumoTextModelMapper._();

  static KumoTextModelMapper? _instance;
  static KumoTextModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = KumoTextModelMapper._());
      KumoWidgetModelMapper.ensureInitialized().addSubMapper(_instance!);
      KumoTextStyleModelMapper.ensureInitialized();
      KumoStrutStyleModelMapper.ensureInitialized();
      KumoTextAlignMapper.ensureInitialized();
      KumoTextDirectionMapper.ensureInitialized();
      KumoTextOverflowMapper.ensureInitialized();
      KumoTextWidthBasisMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'KumoTextModel';

  static String _$data(KumoTextModel v) => v.data;
  static const Field<KumoTextModel, String> _f$data = Field('data', _$data);
  static KumoTextStyleModel? _$style(KumoTextModel v) => v.style;
  static const Field<KumoTextModel, KumoTextStyleModel> _f$style =
      Field('style', _$style, opt: true);
  static KumoStrutStyleModel? _$strutStyle(KumoTextModel v) => v.strutStyle;
  static const Field<KumoTextModel, KumoStrutStyleModel> _f$strutStyle =
      Field('strutStyle', _$strutStyle, opt: true);
  static KumoTextAlign? _$textAlign(KumoTextModel v) => v.textAlign;
  static const Field<KumoTextModel, KumoTextAlign> _f$textAlign =
      Field('textAlign', _$textAlign, opt: true);
  static KumoTextDirection? _$textDirection(KumoTextModel v) => v.textDirection;
  static const Field<KumoTextModel, KumoTextDirection> _f$textDirection =
      Field('textDirection', _$textDirection, opt: true);
  static Locale? _$locale(KumoTextModel v) => v.locale;
  static const Field<KumoTextModel, Locale> _f$locale =
      Field('locale', _$locale, opt: true);
  static bool? _$softWrap(KumoTextModel v) => v.softWrap;
  static const Field<KumoTextModel, bool> _f$softWrap =
      Field('softWrap', _$softWrap, opt: true);
  static KumoTextOverflow? _$overflow(KumoTextModel v) => v.overflow;
  static const Field<KumoTextModel, KumoTextOverflow> _f$overflow =
      Field('overflow', _$overflow, opt: true);
  static double? _$textScaleFactor(KumoTextModel v) => v.textScaleFactor;
  static const Field<KumoTextModel, double> _f$textScaleFactor =
      Field('textScaleFactor', _$textScaleFactor, opt: true);
  static double? _$textScaler(KumoTextModel v) => v.textScaler;
  static const Field<KumoTextModel, double> _f$textScaler =
      Field('textScaler', _$textScaler, opt: true);
  static int? _$maxLines(KumoTextModel v) => v.maxLines;
  static const Field<KumoTextModel, int> _f$maxLines =
      Field('maxLines', _$maxLines, opt: true);
  static String? _$semanticsLabel(KumoTextModel v) => v.semanticsLabel;
  static const Field<KumoTextModel, String> _f$semanticsLabel =
      Field('semanticsLabel', _$semanticsLabel, opt: true);
  static String? _$semanticsIdentifier(KumoTextModel v) =>
      v.semanticsIdentifier;
  static const Field<KumoTextModel, String> _f$semanticsIdentifier =
      Field('semanticsIdentifier', _$semanticsIdentifier, opt: true);
  static KumoTextWidthBasis? _$textWidthBasis(KumoTextModel v) =>
      v.textWidthBasis;
  static const Field<KumoTextModel, KumoTextWidthBasis> _f$textWidthBasis =
      Field('textWidthBasis', _$textWidthBasis, opt: true);
  static TextHeightBehavior? _$textHeightBehavior(KumoTextModel v) =>
      v.textHeightBehavior;
  static const Field<KumoTextModel, TextHeightBehavior> _f$textHeightBehavior =
      Field('textHeightBehavior', _$textHeightBehavior, opt: true);
  static String? _$selectionColor(KumoTextModel v) => v.selectionColor;
  static const Field<KumoTextModel, String> _f$selectionColor =
      Field('selectionColor', _$selectionColor, opt: true);

  @override
  final MappableFields<KumoTextModel> fields = const {
    #data: _f$data,
    #style: _f$style,
    #strutStyle: _f$strutStyle,
    #textAlign: _f$textAlign,
    #textDirection: _f$textDirection,
    #locale: _f$locale,
    #softWrap: _f$softWrap,
    #overflow: _f$overflow,
    #textScaleFactor: _f$textScaleFactor,
    #textScaler: _f$textScaler,
    #maxLines: _f$maxLines,
    #semanticsLabel: _f$semanticsLabel,
    #semanticsIdentifier: _f$semanticsIdentifier,
    #textWidthBasis: _f$textWidthBasis,
    #textHeightBehavior: _f$textHeightBehavior,
    #selectionColor: _f$selectionColor,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'Text';
  @override
  late final ClassMapperBase superMapper =
      KumoWidgetModelMapper.ensureInitialized();

  static KumoTextModel _instantiate(DecodingData data) {
    return KumoTextModel(
        data: data.dec(_f$data),
        style: data.dec(_f$style),
        strutStyle: data.dec(_f$strutStyle),
        textAlign: data.dec(_f$textAlign),
        textDirection: data.dec(_f$textDirection),
        locale: data.dec(_f$locale),
        softWrap: data.dec(_f$softWrap),
        overflow: data.dec(_f$overflow),
        textScaleFactor: data.dec(_f$textScaleFactor),
        textScaler: data.dec(_f$textScaler),
        maxLines: data.dec(_f$maxLines),
        semanticsLabel: data.dec(_f$semanticsLabel),
        semanticsIdentifier: data.dec(_f$semanticsIdentifier),
        textWidthBasis: data.dec(_f$textWidthBasis),
        textHeightBehavior: data.dec(_f$textHeightBehavior),
        selectionColor: data.dec(_f$selectionColor));
  }

  @override
  final Function instantiate = _instantiate;

  static KumoTextModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<KumoTextModel>(map);
  }

  static KumoTextModel fromJson(String json) {
    return ensureInitialized().decodeJson<KumoTextModel>(json);
  }
}

mixin KumoTextModelMappable {
  String toJson() {
    return KumoTextModelMapper.ensureInitialized()
        .encodeJson<KumoTextModel>(this as KumoTextModel);
  }

  Map<String, dynamic> toMap() {
    return KumoTextModelMapper.ensureInitialized()
        .encodeMap<KumoTextModel>(this as KumoTextModel);
  }

  KumoTextModelCopyWith<KumoTextModel, KumoTextModel, KumoTextModel>
      get copyWith => _KumoTextModelCopyWithImpl<KumoTextModel, KumoTextModel>(
          this as KumoTextModel, $identity, $identity);
  @override
  String toString() {
    return KumoTextModelMapper.ensureInitialized()
        .stringifyValue(this as KumoTextModel);
  }

  @override
  bool operator ==(Object other) {
    return KumoTextModelMapper.ensureInitialized()
        .equalsValue(this as KumoTextModel, other);
  }

  @override
  int get hashCode {
    return KumoTextModelMapper.ensureInitialized()
        .hashValue(this as KumoTextModel);
  }
}

extension KumoTextModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, KumoTextModel, $Out> {
  KumoTextModelCopyWith<$R, KumoTextModel, $Out> get $asKumoTextModel =>
      $base.as((v, t, t2) => _KumoTextModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class KumoTextModelCopyWith<$R, $In extends KumoTextModel, $Out>
    implements KumoWidgetModelCopyWith<$R, $In, $Out> {
  KumoTextStyleModelCopyWith<$R, KumoTextStyleModel, KumoTextStyleModel>?
      get style;
  KumoStrutStyleModelCopyWith<$R, KumoStrutStyleModel, KumoStrutStyleModel>?
      get strutStyle;
  @override
  $R call(
      {String? data,
      KumoTextStyleModel? style,
      KumoStrutStyleModel? strutStyle,
      KumoTextAlign? textAlign,
      KumoTextDirection? textDirection,
      Locale? locale,
      bool? softWrap,
      KumoTextOverflow? overflow,
      double? textScaleFactor,
      double? textScaler,
      int? maxLines,
      String? semanticsLabel,
      String? semanticsIdentifier,
      KumoTextWidthBasis? textWidthBasis,
      TextHeightBehavior? textHeightBehavior,
      String? selectionColor});
  KumoTextModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _KumoTextModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, KumoTextModel, $Out>
    implements KumoTextModelCopyWith<$R, KumoTextModel, $Out> {
  _KumoTextModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<KumoTextModel> $mapper =
      KumoTextModelMapper.ensureInitialized();
  @override
  KumoTextStyleModelCopyWith<$R, KumoTextStyleModel, KumoTextStyleModel>?
      get style => $value.style?.copyWith.$chain((v) => call(style: v));
  @override
  KumoStrutStyleModelCopyWith<$R, KumoStrutStyleModel, KumoStrutStyleModel>?
      get strutStyle =>
          $value.strutStyle?.copyWith.$chain((v) => call(strutStyle: v));
  @override
  $R call(
          {String? data,
          Object? style = $none,
          Object? strutStyle = $none,
          Object? textAlign = $none,
          Object? textDirection = $none,
          Object? locale = $none,
          Object? softWrap = $none,
          Object? overflow = $none,
          Object? textScaleFactor = $none,
          Object? textScaler = $none,
          Object? maxLines = $none,
          Object? semanticsLabel = $none,
          Object? semanticsIdentifier = $none,
          Object? textWidthBasis = $none,
          Object? textHeightBehavior = $none,
          Object? selectionColor = $none}) =>
      $apply(FieldCopyWithData({
        if (data != null) #data: data,
        if (style != $none) #style: style,
        if (strutStyle != $none) #strutStyle: strutStyle,
        if (textAlign != $none) #textAlign: textAlign,
        if (textDirection != $none) #textDirection: textDirection,
        if (locale != $none) #locale: locale,
        if (softWrap != $none) #softWrap: softWrap,
        if (overflow != $none) #overflow: overflow,
        if (textScaleFactor != $none) #textScaleFactor: textScaleFactor,
        if (textScaler != $none) #textScaler: textScaler,
        if (maxLines != $none) #maxLines: maxLines,
        if (semanticsLabel != $none) #semanticsLabel: semanticsLabel,
        if (semanticsIdentifier != $none)
          #semanticsIdentifier: semanticsIdentifier,
        if (textWidthBasis != $none) #textWidthBasis: textWidthBasis,
        if (textHeightBehavior != $none)
          #textHeightBehavior: textHeightBehavior,
        if (selectionColor != $none) #selectionColor: selectionColor
      }));
  @override
  KumoTextModel $make(CopyWithData data) => KumoTextModel(
      data: data.get(#data, or: $value.data),
      style: data.get(#style, or: $value.style),
      strutStyle: data.get(#strutStyle, or: $value.strutStyle),
      textAlign: data.get(#textAlign, or: $value.textAlign),
      textDirection: data.get(#textDirection, or: $value.textDirection),
      locale: data.get(#locale, or: $value.locale),
      softWrap: data.get(#softWrap, or: $value.softWrap),
      overflow: data.get(#overflow, or: $value.overflow),
      textScaleFactor: data.get(#textScaleFactor, or: $value.textScaleFactor),
      textScaler: data.get(#textScaler, or: $value.textScaler),
      maxLines: data.get(#maxLines, or: $value.maxLines),
      semanticsLabel: data.get(#semanticsLabel, or: $value.semanticsLabel),
      semanticsIdentifier:
          data.get(#semanticsIdentifier, or: $value.semanticsIdentifier),
      textWidthBasis: data.get(#textWidthBasis, or: $value.textWidthBasis),
      textHeightBehavior:
          data.get(#textHeightBehavior, or: $value.textHeightBehavior),
      selectionColor: data.get(#selectionColor, or: $value.selectionColor));

  @override
  KumoTextModelCopyWith<$R2, KumoTextModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _KumoTextModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
