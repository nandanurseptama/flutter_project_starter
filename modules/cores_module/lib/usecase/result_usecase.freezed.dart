// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultUsecase<Error, Success> {
  String get uuid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, Success success) ok,
    required TResult Function(String uuid, Error error) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid, Success success)? ok,
    TResult? Function(String uuid, Error error)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, Success success)? ok,
    TResult Function(String uuid, Error error)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Error, Success> value) ok,
    required TResult Function(Fail<Error, Success> value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Error, Success> value)? ok,
    TResult? Function(Fail<Error, Success> value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Error, Success> value)? ok,
    TResult Function(Fail<Error, Success> value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultUsecaseCopyWith<Error, Success, ResultUsecase<Error, Success>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultUsecaseCopyWith<Error, Success, $Res> {
  factory $ResultUsecaseCopyWith(ResultUsecase<Error, Success> value,
          $Res Function(ResultUsecase<Error, Success>) then) =
      _$ResultUsecaseCopyWithImpl<Error, Success, $Res,
          ResultUsecase<Error, Success>>;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class _$ResultUsecaseCopyWithImpl<Error, Success, $Res,
        $Val extends ResultUsecase<Error, Success>>
    implements $ResultUsecaseCopyWith<Error, Success, $Res> {
  _$ResultUsecaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OkCopyWith<Error, Success, $Res>
    implements $ResultUsecaseCopyWith<Error, Success, $Res> {
  factory _$$OkCopyWith(_$Ok<Error, Success> value,
          $Res Function(_$Ok<Error, Success>) then) =
      __$$OkCopyWithImpl<Error, Success, $Res>;
  @override
  @useResult
  $Res call({String uuid, Success success});
}

/// @nodoc
class __$$OkCopyWithImpl<Error, Success, $Res>
    extends _$ResultUsecaseCopyWithImpl<Error, Success, $Res,
        _$Ok<Error, Success>> implements _$$OkCopyWith<Error, Success, $Res> {
  __$$OkCopyWithImpl(
      _$Ok<Error, Success> _value, $Res Function(_$Ok<Error, Success>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? success = freezed,
  }) {
    return _then(_$Ok<Error, Success>(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as Success,
    ));
  }
}

/// @nodoc

class _$Ok<Error, Success> implements Ok<Error, Success> {
  _$Ok({required this.uuid, required this.success});

  @override
  final String uuid;
  @override
  final Success success;

  @override
  String toString() {
    return 'ResultUsecase<$Error, $Success>.ok(uuid: $uuid, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ok<Error, Success> &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkCopyWith<Error, Success, _$Ok<Error, Success>> get copyWith =>
      __$$OkCopyWithImpl<Error, Success, _$Ok<Error, Success>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, Success success) ok,
    required TResult Function(String uuid, Error error) fail,
  }) {
    return ok(uuid, success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid, Success success)? ok,
    TResult? Function(String uuid, Error error)? fail,
  }) {
    return ok?.call(uuid, success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, Success success)? ok,
    TResult Function(String uuid, Error error)? fail,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(uuid, success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Error, Success> value) ok,
    required TResult Function(Fail<Error, Success> value) fail,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Error, Success> value)? ok,
    TResult? Function(Fail<Error, Success> value)? fail,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Error, Success> value)? ok,
    TResult Function(Fail<Error, Success> value)? fail,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class Ok<Error, Success> implements ResultUsecase<Error, Success> {
  factory Ok({required final String uuid, required final Success success}) =
      _$Ok<Error, Success>;

  @override
  String get uuid;
  Success get success;
  @override
  @JsonKey(ignore: true)
  _$$OkCopyWith<Error, Success, _$Ok<Error, Success>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailCopyWith<Error, Success, $Res>
    implements $ResultUsecaseCopyWith<Error, Success, $Res> {
  factory _$$FailCopyWith(_$Fail<Error, Success> value,
          $Res Function(_$Fail<Error, Success>) then) =
      __$$FailCopyWithImpl<Error, Success, $Res>;
  @override
  @useResult
  $Res call({String uuid, Error error});
}

/// @nodoc
class __$$FailCopyWithImpl<Error, Success, $Res>
    extends _$ResultUsecaseCopyWithImpl<Error, Success, $Res,
        _$Fail<Error, Success>>
    implements _$$FailCopyWith<Error, Success, $Res> {
  __$$FailCopyWithImpl(_$Fail<Error, Success> _value,
      $Res Function(_$Fail<Error, Success>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? error = freezed,
  }) {
    return _then(_$Fail<Error, Success>(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$Fail<Error, Success> implements Fail<Error, Success> {
  _$Fail({required this.uuid, required this.error});

  @override
  final String uuid;
  @override
  final Error error;

  @override
  String toString() {
    return 'ResultUsecase<$Error, $Success>.fail(uuid: $uuid, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fail<Error, Success> &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailCopyWith<Error, Success, _$Fail<Error, Success>> get copyWith =>
      __$$FailCopyWithImpl<Error, Success, _$Fail<Error, Success>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, Success success) ok,
    required TResult Function(String uuid, Error error) fail,
  }) {
    return fail(uuid, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uuid, Success success)? ok,
    TResult? Function(String uuid, Error error)? fail,
  }) {
    return fail?.call(uuid, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, Success success)? ok,
    TResult Function(String uuid, Error error)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(uuid, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<Error, Success> value) ok,
    required TResult Function(Fail<Error, Success> value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<Error, Success> value)? ok,
    TResult? Function(Fail<Error, Success> value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<Error, Success> value)? ok,
    TResult Function(Fail<Error, Success> value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class Fail<Error, Success> implements ResultUsecase<Error, Success> {
  factory Fail({required final String uuid, required final Error error}) =
      _$Fail<Error, Success>;

  @override
  String get uuid;
  Error get error;
  @override
  @JsonKey(ignore: true)
  _$$FailCopyWith<Error, Success, _$Fail<Error, Success>> get copyWith =>
      throw _privateConstructorUsedError;
}
