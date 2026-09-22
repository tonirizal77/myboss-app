part of '../routers.dart';

class RouteCodec extends Codec<Object?, Object?> {
  const RouteCodec();

  @override
  Converter<Object?, Object?> get decoder => const _RouteCodecDecoder();

  @override
  Converter<Object?, Object?> get encoder => const _RouteCodecEncoder();
}

class _RouteCodecDecoder extends Converter<Object?, Object?> {
  const _RouteCodecDecoder();

  @override
  Object? convert(Object? input) {
    if (input == null) return null;

    if (input is Map && input.containsKey('__type__')) {
      final type = input['__type__'];
      if (type == 'PinFlowType') {
        return PinFlowType.values[input['index'] as int];
      }
    }

    if (input is Map) {
      return input.map((key, value) => MapEntry(key, convert(value)));
    }

    if (input is List) {
      return input.map((e) => convert(e)).toList();
    }

    return input;
  }
}

class _RouteCodecEncoder extends Converter<Object?, Object?> {
  const _RouteCodecEncoder();

  @override
  Object? convert(Object? input) {
    if (input == null) return null;

    if (input is PinFlowType) {
      return <Object?, Object?>{
        '__type__': 'PinFlowType',
        'index': input.index,
      };
    }

    if (input is Map) {
      return input.map((key, value) => MapEntry(key, convert(value)));
    }

    if (input is List) {
      return input.map((e) => convert(e)).toList();
    }

    return input;
  }
}
