// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_start_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppStartState _$AppStartStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'authenticated':
      return Authenticated.fromJson(json);
    case 'unauthenticated':
      return Unauthenticated.fromJson(json);
    case 'verified':
      return Verified.fromJson(json);
    case 'pendingApproval':
      return PendingApproval.fromJson(json);
    case 'initial':
      return Initial.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppStartState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppStartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() pendingApproval,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? verified,
    TResult? Function()? pendingApproval,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? pendingApproval,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(PendingApproval value) pendingApproval,
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Verified value)? verified,
    TResult? Function(PendingApproval value)? pendingApproval,
    TResult? Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(PendingApproval value)? pendingApproval,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStartStateCopyWith<$Res> {
  factory $AppStartStateCopyWith(
          AppStartState value, $Res Function(AppStartState) then) =
      _$AppStartStateCopyWithImpl<$Res, AppStartState>;
}

/// @nodoc
class _$AppStartStateCopyWithImpl<$Res, $Val extends AppStartState>
    implements $AppStartStateCopyWith<$Res> {
  _$AppStartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AppStartStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl({final String? $type})
      : $type = $type ?? 'authenticated';

  factory _$AuthenticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppStartState.authenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() pendingApproval,
    required TResult Function() initial,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? verified,
    TResult? Function()? pendingApproval,
    TResult? Function()? initial,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? pendingApproval,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(PendingApproval value) pendingApproval,
    required TResult Function(Initial value) initial,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Verified value)? verified,
    TResult? Function(PendingApproval value)? pendingApproval,
    TResult? Function(Initial value)? initial,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(PendingApproval value)? pendingApproval,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatedImplToJson(
      this,
    );
  }
}

abstract class Authenticated implements AppStartState {
  const factory Authenticated() = _$AuthenticatedImpl;

  factory Authenticated.fromJson(Map<String, dynamic> json) =
      _$AuthenticatedImpl.fromJson;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AppStartStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl({final String? $type})
      : $type = $type ?? 'unauthenticated';

  factory _$UnauthenticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnauthenticatedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppStartState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() pendingApproval,
    required TResult Function() initial,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? verified,
    TResult? Function()? pendingApproval,
    TResult? Function()? initial,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? pendingApproval,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(PendingApproval value) pendingApproval,
    required TResult Function(Initial value) initial,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Verified value)? verified,
    TResult? Function(PendingApproval value)? pendingApproval,
    TResult? Function(Initial value)? initial,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(PendingApproval value)? pendingApproval,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnauthenticatedImplToJson(
      this,
    );
  }
}

abstract class Unauthenticated implements AppStartState {
  const factory Unauthenticated() = _$UnauthenticatedImpl;

  factory Unauthenticated.fromJson(Map<String, dynamic> json) =
      _$UnauthenticatedImpl.fromJson;
}

/// @nodoc
abstract class _$$VerifiedImplCopyWith<$Res> {
  factory _$$VerifiedImplCopyWith(
          _$VerifiedImpl value, $Res Function(_$VerifiedImpl) then) =
      __$$VerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifiedImplCopyWithImpl<$Res>
    extends _$AppStartStateCopyWithImpl<$Res, _$VerifiedImpl>
    implements _$$VerifiedImplCopyWith<$Res> {
  __$$VerifiedImplCopyWithImpl(
      _$VerifiedImpl _value, $Res Function(_$VerifiedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$VerifiedImpl implements Verified {
  const _$VerifiedImpl({final String? $type}) : $type = $type ?? 'verified';

  factory _$VerifiedImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppStartState.verified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifiedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() pendingApproval,
    required TResult Function() initial,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? verified,
    TResult? Function()? pendingApproval,
    TResult? Function()? initial,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? pendingApproval,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(PendingApproval value) pendingApproval,
    required TResult Function(Initial value) initial,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Verified value)? verified,
    TResult? Function(PendingApproval value)? pendingApproval,
    TResult? Function(Initial value)? initial,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(PendingApproval value)? pendingApproval,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifiedImplToJson(
      this,
    );
  }
}

abstract class Verified implements AppStartState {
  const factory Verified() = _$VerifiedImpl;

  factory Verified.fromJson(Map<String, dynamic> json) =
      _$VerifiedImpl.fromJson;
}

/// @nodoc
abstract class _$$PendingApprovalImplCopyWith<$Res> {
  factory _$$PendingApprovalImplCopyWith(_$PendingApprovalImpl value,
          $Res Function(_$PendingApprovalImpl) then) =
      __$$PendingApprovalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PendingApprovalImplCopyWithImpl<$Res>
    extends _$AppStartStateCopyWithImpl<$Res, _$PendingApprovalImpl>
    implements _$$PendingApprovalImplCopyWith<$Res> {
  __$$PendingApprovalImplCopyWithImpl(
      _$PendingApprovalImpl _value, $Res Function(_$PendingApprovalImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PendingApprovalImpl implements PendingApproval {
  const _$PendingApprovalImpl({final String? $type})
      : $type = $type ?? 'pendingApproval';

  factory _$PendingApprovalImpl.fromJson(Map<String, dynamic> json) =>
      _$$PendingApprovalImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppStartState.pendingApproval()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PendingApprovalImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() pendingApproval,
    required TResult Function() initial,
  }) {
    return pendingApproval();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? verified,
    TResult? Function()? pendingApproval,
    TResult? Function()? initial,
  }) {
    return pendingApproval?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? pendingApproval,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (pendingApproval != null) {
      return pendingApproval();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(PendingApproval value) pendingApproval,
    required TResult Function(Initial value) initial,
  }) {
    return pendingApproval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Verified value)? verified,
    TResult? Function(PendingApproval value)? pendingApproval,
    TResult? Function(Initial value)? initial,
  }) {
    return pendingApproval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(PendingApproval value)? pendingApproval,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (pendingApproval != null) {
      return pendingApproval(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PendingApprovalImplToJson(
      this,
    );
  }
}

abstract class PendingApproval implements AppStartState {
  const factory PendingApproval() = _$PendingApprovalImpl;

  factory PendingApproval.fromJson(Map<String, dynamic> json) =
      _$PendingApprovalImpl.fromJson;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$InitialImpl implements Initial {
  const _$InitialImpl({final String? $type}) : $type = $type ?? 'initial';

  factory _$InitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppStartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() verified,
    required TResult Function() pendingApproval,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? verified,
    TResult? Function()? pendingApproval,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? verified,
    TResult Function()? pendingApproval,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Verified value) verified,
    required TResult Function(PendingApproval value) pendingApproval,
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Verified value)? verified,
    TResult? Function(PendingApproval value)? pendingApproval,
    TResult? Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Verified value)? verified,
    TResult Function(PendingApproval value)? pendingApproval,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialImplToJson(
      this,
    );
  }
}

abstract class Initial implements AppStartState {
  const factory Initial() = _$InitialImpl;

  factory Initial.fromJson(Map<String, dynamic> json) = _$InitialImpl.fromJson;
}
