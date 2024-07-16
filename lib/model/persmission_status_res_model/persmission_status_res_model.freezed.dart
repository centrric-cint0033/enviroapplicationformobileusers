// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persmission_status_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersmissionStatusResModel _$PersmissionStatusResModelFromJson(
    Map<String, dynamic> json) {
  return _PersmissionStatusResModel.fromJson(json);
}

/// @nodoc
mixin _$PersmissionStatusResModel {
  Team? get team => throw _privateConstructorUsedError;
  Site? get site => throw _privateConstructorUsedError;
  Home? get home => throw _privateConstructorUsedError;
  Vehicle? get vehicle => throw _privateConstructorUsedError;
  Sales? get sales => throw _privateConstructorUsedError;
  Scheduling? get scheduling => throw _privateConstructorUsedError;
  Ohs? get ohs => throw _privateConstructorUsedError;
  Intranet? get intranet => throw _privateConstructorUsedError;
  Accounts? get accounts => throw _privateConstructorUsedError;
  Invoice? get invoice => throw _privateConstructorUsedError;
  @JsonKey(name: 'web_app_login_access')
  bool? get webAppLoginAccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_user_permission')
  String? get currentUserPermission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersmissionStatusResModelCopyWith<PersmissionStatusResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersmissionStatusResModelCopyWith<$Res> {
  factory $PersmissionStatusResModelCopyWith(PersmissionStatusResModel value,
          $Res Function(PersmissionStatusResModel) then) =
      _$PersmissionStatusResModelCopyWithImpl<$Res, PersmissionStatusResModel>;
  @useResult
  $Res call(
      {Team? team,
      Site? site,
      Home? home,
      Vehicle? vehicle,
      Sales? sales,
      Scheduling? scheduling,
      Ohs? ohs,
      Intranet? intranet,
      Accounts? accounts,
      Invoice? invoice,
      @JsonKey(name: 'web_app_login_access') bool? webAppLoginAccess,
      @JsonKey(name: 'current_user_permission') String? currentUserPermission});

  $TeamCopyWith<$Res>? get team;
  $SiteCopyWith<$Res>? get site;
  $HomeCopyWith<$Res>? get home;
  $VehicleCopyWith<$Res>? get vehicle;
  $SalesCopyWith<$Res>? get sales;
  $SchedulingCopyWith<$Res>? get scheduling;
  $OhsCopyWith<$Res>? get ohs;
  $IntranetCopyWith<$Res>? get intranet;
  $AccountsCopyWith<$Res>? get accounts;
  $InvoiceCopyWith<$Res>? get invoice;
}

/// @nodoc
class _$PersmissionStatusResModelCopyWithImpl<$Res,
        $Val extends PersmissionStatusResModel>
    implements $PersmissionStatusResModelCopyWith<$Res> {
  _$PersmissionStatusResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = freezed,
    Object? site = freezed,
    Object? home = freezed,
    Object? vehicle = freezed,
    Object? sales = freezed,
    Object? scheduling = freezed,
    Object? ohs = freezed,
    Object? intranet = freezed,
    Object? accounts = freezed,
    Object? invoice = freezed,
    Object? webAppLoginAccess = freezed,
    Object? currentUserPermission = freezed,
  }) {
    return _then(_value.copyWith(
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as Site?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
      sales: freezed == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as Sales?,
      scheduling: freezed == scheduling
          ? _value.scheduling
          : scheduling // ignore: cast_nullable_to_non_nullable
              as Scheduling?,
      ohs: freezed == ohs
          ? _value.ohs
          : ohs // ignore: cast_nullable_to_non_nullable
              as Ohs?,
      intranet: freezed == intranet
          ? _value.intranet
          : intranet // ignore: cast_nullable_to_non_nullable
              as Intranet?,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as Accounts?,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      webAppLoginAccess: freezed == webAppLoginAccess
          ? _value.webAppLoginAccess
          : webAppLoginAccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentUserPermission: freezed == currentUserPermission
          ? _value.currentUserPermission
          : currentUserPermission // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $TeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SiteCopyWith<$Res>? get site {
    if (_value.site == null) {
      return null;
    }

    return $SiteCopyWith<$Res>(_value.site!, (value) {
      return _then(_value.copyWith(site: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeCopyWith<$Res>? get home {
    if (_value.home == null) {
      return null;
    }

    return $HomeCopyWith<$Res>(_value.home!, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $VehicleCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SalesCopyWith<$Res>? get sales {
    if (_value.sales == null) {
      return null;
    }

    return $SalesCopyWith<$Res>(_value.sales!, (value) {
      return _then(_value.copyWith(sales: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SchedulingCopyWith<$Res>? get scheduling {
    if (_value.scheduling == null) {
      return null;
    }

    return $SchedulingCopyWith<$Res>(_value.scheduling!, (value) {
      return _then(_value.copyWith(scheduling: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OhsCopyWith<$Res>? get ohs {
    if (_value.ohs == null) {
      return null;
    }

    return $OhsCopyWith<$Res>(_value.ohs!, (value) {
      return _then(_value.copyWith(ohs: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IntranetCopyWith<$Res>? get intranet {
    if (_value.intranet == null) {
      return null;
    }

    return $IntranetCopyWith<$Res>(_value.intranet!, (value) {
      return _then(_value.copyWith(intranet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountsCopyWith<$Res>? get accounts {
    if (_value.accounts == null) {
      return null;
    }

    return $AccountsCopyWith<$Res>(_value.accounts!, (value) {
      return _then(_value.copyWith(accounts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<$Res>? get invoice {
    if (_value.invoice == null) {
      return null;
    }

    return $InvoiceCopyWith<$Res>(_value.invoice!, (value) {
      return _then(_value.copyWith(invoice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersmissionStatusResModelImplCopyWith<$Res>
    implements $PersmissionStatusResModelCopyWith<$Res> {
  factory _$$PersmissionStatusResModelImplCopyWith(
          _$PersmissionStatusResModelImpl value,
          $Res Function(_$PersmissionStatusResModelImpl) then) =
      __$$PersmissionStatusResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Team? team,
      Site? site,
      Home? home,
      Vehicle? vehicle,
      Sales? sales,
      Scheduling? scheduling,
      Ohs? ohs,
      Intranet? intranet,
      Accounts? accounts,
      Invoice? invoice,
      @JsonKey(name: 'web_app_login_access') bool? webAppLoginAccess,
      @JsonKey(name: 'current_user_permission') String? currentUserPermission});

  @override
  $TeamCopyWith<$Res>? get team;
  @override
  $SiteCopyWith<$Res>? get site;
  @override
  $HomeCopyWith<$Res>? get home;
  @override
  $VehicleCopyWith<$Res>? get vehicle;
  @override
  $SalesCopyWith<$Res>? get sales;
  @override
  $SchedulingCopyWith<$Res>? get scheduling;
  @override
  $OhsCopyWith<$Res>? get ohs;
  @override
  $IntranetCopyWith<$Res>? get intranet;
  @override
  $AccountsCopyWith<$Res>? get accounts;
  @override
  $InvoiceCopyWith<$Res>? get invoice;
}

/// @nodoc
class __$$PersmissionStatusResModelImplCopyWithImpl<$Res>
    extends _$PersmissionStatusResModelCopyWithImpl<$Res,
        _$PersmissionStatusResModelImpl>
    implements _$$PersmissionStatusResModelImplCopyWith<$Res> {
  __$$PersmissionStatusResModelImplCopyWithImpl(
      _$PersmissionStatusResModelImpl _value,
      $Res Function(_$PersmissionStatusResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = freezed,
    Object? site = freezed,
    Object? home = freezed,
    Object? vehicle = freezed,
    Object? sales = freezed,
    Object? scheduling = freezed,
    Object? ohs = freezed,
    Object? intranet = freezed,
    Object? accounts = freezed,
    Object? invoice = freezed,
    Object? webAppLoginAccess = freezed,
    Object? currentUserPermission = freezed,
  }) {
    return _then(_$PersmissionStatusResModelImpl(
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as Site?,
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Home?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
      sales: freezed == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as Sales?,
      scheduling: freezed == scheduling
          ? _value.scheduling
          : scheduling // ignore: cast_nullable_to_non_nullable
              as Scheduling?,
      ohs: freezed == ohs
          ? _value.ohs
          : ohs // ignore: cast_nullable_to_non_nullable
              as Ohs?,
      intranet: freezed == intranet
          ? _value.intranet
          : intranet // ignore: cast_nullable_to_non_nullable
              as Intranet?,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as Accounts?,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      webAppLoginAccess: freezed == webAppLoginAccess
          ? _value.webAppLoginAccess
          : webAppLoginAccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentUserPermission: freezed == currentUserPermission
          ? _value.currentUserPermission
          : currentUserPermission // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersmissionStatusResModelImpl implements _PersmissionStatusResModel {
  _$PersmissionStatusResModelImpl(
      {this.team,
      this.site,
      this.home,
      this.vehicle,
      this.sales,
      this.scheduling,
      this.ohs,
      this.intranet,
      this.accounts,
      this.invoice,
      @JsonKey(name: 'web_app_login_access') this.webAppLoginAccess,
      @JsonKey(name: 'current_user_permission') this.currentUserPermission});

  factory _$PersmissionStatusResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersmissionStatusResModelImplFromJson(json);

  @override
  final Team? team;
  @override
  final Site? site;
  @override
  final Home? home;
  @override
  final Vehicle? vehicle;
  @override
  final Sales? sales;
  @override
  final Scheduling? scheduling;
  @override
  final Ohs? ohs;
  @override
  final Intranet? intranet;
  @override
  final Accounts? accounts;
  @override
  final Invoice? invoice;
  @override
  @JsonKey(name: 'web_app_login_access')
  final bool? webAppLoginAccess;
  @override
  @JsonKey(name: 'current_user_permission')
  final String? currentUserPermission;

  @override
  String toString() {
    return 'PersmissionStatusResModel(team: $team, site: $site, home: $home, vehicle: $vehicle, sales: $sales, scheduling: $scheduling, ohs: $ohs, intranet: $intranet, accounts: $accounts, invoice: $invoice, webAppLoginAccess: $webAppLoginAccess, currentUserPermission: $currentUserPermission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersmissionStatusResModelImpl &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.sales, sales) || other.sales == sales) &&
            (identical(other.scheduling, scheduling) ||
                other.scheduling == scheduling) &&
            (identical(other.ohs, ohs) || other.ohs == ohs) &&
            (identical(other.intranet, intranet) ||
                other.intranet == intranet) &&
            (identical(other.accounts, accounts) ||
                other.accounts == accounts) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.webAppLoginAccess, webAppLoginAccess) ||
                other.webAppLoginAccess == webAppLoginAccess) &&
            (identical(other.currentUserPermission, currentUserPermission) ||
                other.currentUserPermission == currentUserPermission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      team,
      site,
      home,
      vehicle,
      sales,
      scheduling,
      ohs,
      intranet,
      accounts,
      invoice,
      webAppLoginAccess,
      currentUserPermission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersmissionStatusResModelImplCopyWith<_$PersmissionStatusResModelImpl>
      get copyWith => __$$PersmissionStatusResModelImplCopyWithImpl<
          _$PersmissionStatusResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersmissionStatusResModelImplToJson(
      this,
    );
  }
}

abstract class _PersmissionStatusResModel implements PersmissionStatusResModel {
  factory _PersmissionStatusResModel(
      {final Team? team,
      final Site? site,
      final Home? home,
      final Vehicle? vehicle,
      final Sales? sales,
      final Scheduling? scheduling,
      final Ohs? ohs,
      final Intranet? intranet,
      final Accounts? accounts,
      final Invoice? invoice,
      @JsonKey(name: 'web_app_login_access') final bool? webAppLoginAccess,
      @JsonKey(name: 'current_user_permission')
      final String? currentUserPermission}) = _$PersmissionStatusResModelImpl;

  factory _PersmissionStatusResModel.fromJson(Map<String, dynamic> json) =
      _$PersmissionStatusResModelImpl.fromJson;

  @override
  Team? get team;
  @override
  Site? get site;
  @override
  Home? get home;
  @override
  Vehicle? get vehicle;
  @override
  Sales? get sales;
  @override
  Scheduling? get scheduling;
  @override
  Ohs? get ohs;
  @override
  Intranet? get intranet;
  @override
  Accounts? get accounts;
  @override
  Invoice? get invoice;
  @override
  @JsonKey(name: 'web_app_login_access')
  bool? get webAppLoginAccess;
  @override
  @JsonKey(name: 'current_user_permission')
  String? get currentUserPermission;
  @override
  @JsonKey(ignore: true)
  _$$PersmissionStatusResModelImplCopyWith<_$PersmissionStatusResModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
