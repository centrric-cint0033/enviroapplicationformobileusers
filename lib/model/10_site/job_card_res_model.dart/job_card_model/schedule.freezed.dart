// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  dynamic get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  dynamic get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  dynamic get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  dynamic get endTime => throw _privateConstructorUsedError;
  Vehicle? get vehicle => throw _privateConstructorUsedError;
  @JsonKey(name: 'prime_vehicle_driver')
  List<dynamic>? get primeVehicleDriver => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_vehicle_driver')
  List<dynamic>? get additionalVehicleDriver =>
      throw _privateConstructorUsedError;
  dynamic get signature => throw _privateConstructorUsedError;
  List<dynamic>? get team => throw _privateConstructorUsedError;
  List<dynamic>? get comments => throw _privateConstructorUsedError;
  List<dynamic>? get images => throw _privateConstructorUsedError;
  dynamic get completed => throw _privateConstructorUsedError;
  @JsonKey(name: 'signature_name')
  dynamic get signatureName => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchase_order')
  dynamic get purchaseOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_video')
  dynamic get jobVideo => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'dev_data')
  dynamic get devData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call(
      {dynamic id,
      dynamic status,
      @JsonKey(name: 'start_date') dynamic startDate,
      @JsonKey(name: 'start_time') dynamic startTime,
      @JsonKey(name: 'end_date') dynamic endDate,
      @JsonKey(name: 'end_time') dynamic endTime,
      Vehicle? vehicle,
      @JsonKey(name: 'prime_vehicle_driver') List<dynamic>? primeVehicleDriver,
      @JsonKey(name: 'additional_vehicle_driver')
      List<dynamic>? additionalVehicleDriver,
      dynamic signature,
      List<dynamic>? team,
      List<dynamic>? comments,
      List<dynamic>? images,
      dynamic completed,
      @JsonKey(name: 'signature_name') dynamic signatureName,
      @JsonKey(name: 'purchase_order') dynamic purchaseOrder,
      @JsonKey(name: 'job_video') dynamic jobVideo,
      bool? error,
      @JsonKey(name: 'dev_data') dynamic devData});

  $VehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? startDate = freezed,
    Object? startTime = freezed,
    Object? endDate = freezed,
    Object? endTime = freezed,
    Object? vehicle = freezed,
    Object? primeVehicleDriver = freezed,
    Object? additionalVehicleDriver = freezed,
    Object? signature = freezed,
    Object? team = freezed,
    Object? comments = freezed,
    Object? images = freezed,
    Object? completed = freezed,
    Object? signatureName = freezed,
    Object? purchaseOrder = freezed,
    Object? jobVideo = freezed,
    Object? error = freezed,
    Object? devData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
      primeVehicleDriver: freezed == primeVehicleDriver
          ? _value.primeVehicleDriver
          : primeVehicleDriver // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      additionalVehicleDriver: freezed == additionalVehicleDriver
          ? _value.additionalVehicleDriver
          : additionalVehicleDriver // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as dynamic,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      signatureName: freezed == signatureName
          ? _value.signatureName
          : signatureName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      purchaseOrder: freezed == purchaseOrder
          ? _value.purchaseOrder
          : purchaseOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jobVideo: freezed == jobVideo
          ? _value.jobVideo
          : jobVideo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      devData: freezed == devData
          ? _value.devData
          : devData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$ScheduleImplCopyWith<$Res>
    implements $ScheduleCopyWith<$Res> {
  factory _$$ScheduleImplCopyWith(
          _$ScheduleImpl value, $Res Function(_$ScheduleImpl) then) =
      __$$ScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      dynamic status,
      @JsonKey(name: 'start_date') dynamic startDate,
      @JsonKey(name: 'start_time') dynamic startTime,
      @JsonKey(name: 'end_date') dynamic endDate,
      @JsonKey(name: 'end_time') dynamic endTime,
      Vehicle? vehicle,
      @JsonKey(name: 'prime_vehicle_driver') List<dynamic>? primeVehicleDriver,
      @JsonKey(name: 'additional_vehicle_driver')
      List<dynamic>? additionalVehicleDriver,
      dynamic signature,
      List<dynamic>? team,
      List<dynamic>? comments,
      List<dynamic>? images,
      dynamic completed,
      @JsonKey(name: 'signature_name') dynamic signatureName,
      @JsonKey(name: 'purchase_order') dynamic purchaseOrder,
      @JsonKey(name: 'job_video') dynamic jobVideo,
      bool? error,
      @JsonKey(name: 'dev_data') dynamic devData});

  @override
  $VehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class __$$ScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$ScheduleImpl>
    implements _$$ScheduleImplCopyWith<$Res> {
  __$$ScheduleImplCopyWithImpl(
      _$ScheduleImpl _value, $Res Function(_$ScheduleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? startDate = freezed,
    Object? startTime = freezed,
    Object? endDate = freezed,
    Object? endTime = freezed,
    Object? vehicle = freezed,
    Object? primeVehicleDriver = freezed,
    Object? additionalVehicleDriver = freezed,
    Object? signature = freezed,
    Object? team = freezed,
    Object? comments = freezed,
    Object? images = freezed,
    Object? completed = freezed,
    Object? signatureName = freezed,
    Object? purchaseOrder = freezed,
    Object? jobVideo = freezed,
    Object? error = freezed,
    Object? devData = freezed,
  }) {
    return _then(_$ScheduleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
      primeVehicleDriver: freezed == primeVehicleDriver
          ? _value._primeVehicleDriver
          : primeVehicleDriver // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      additionalVehicleDriver: freezed == additionalVehicleDriver
          ? _value._additionalVehicleDriver
          : additionalVehicleDriver // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as dynamic,
      team: freezed == team
          ? _value._team
          : team // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      signatureName: freezed == signatureName
          ? _value.signatureName
          : signatureName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      purchaseOrder: freezed == purchaseOrder
          ? _value.purchaseOrder
          : purchaseOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jobVideo: freezed == jobVideo
          ? _value.jobVideo
          : jobVideo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      devData: freezed == devData
          ? _value.devData
          : devData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleImpl implements _Schedule {
  _$ScheduleImpl(
      {this.id,
      this.status,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'end_time') this.endTime,
      this.vehicle,
      @JsonKey(name: 'prime_vehicle_driver')
      final List<dynamic>? primeVehicleDriver,
      @JsonKey(name: 'additional_vehicle_driver')
      final List<dynamic>? additionalVehicleDriver,
      this.signature,
      final List<dynamic>? team,
      final List<dynamic>? comments,
      final List<dynamic>? images,
      this.completed,
      @JsonKey(name: 'signature_name') this.signatureName,
      @JsonKey(name: 'purchase_order') this.purchaseOrder,
      @JsonKey(name: 'job_video') this.jobVideo,
      this.error,
      @JsonKey(name: 'dev_data') this.devData})
      : _primeVehicleDriver = primeVehicleDriver,
        _additionalVehicleDriver = additionalVehicleDriver,
        _team = team,
        _comments = comments,
        _images = images;

  factory _$ScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleImplFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic status;
  @override
  @JsonKey(name: 'start_date')
  final dynamic startDate;
  @override
  @JsonKey(name: 'start_time')
  final dynamic startTime;
  @override
  @JsonKey(name: 'end_date')
  final dynamic endDate;
  @override
  @JsonKey(name: 'end_time')
  final dynamic endTime;
  @override
  final Vehicle? vehicle;
  final List<dynamic>? _primeVehicleDriver;
  @override
  @JsonKey(name: 'prime_vehicle_driver')
  List<dynamic>? get primeVehicleDriver {
    final value = _primeVehicleDriver;
    if (value == null) return null;
    if (_primeVehicleDriver is EqualUnmodifiableListView)
      return _primeVehicleDriver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _additionalVehicleDriver;
  @override
  @JsonKey(name: 'additional_vehicle_driver')
  List<dynamic>? get additionalVehicleDriver {
    final value = _additionalVehicleDriver;
    if (value == null) return null;
    if (_additionalVehicleDriver is EqualUnmodifiableListView)
      return _additionalVehicleDriver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic signature;
  final List<dynamic>? _team;
  @override
  List<dynamic>? get team {
    final value = _team;
    if (value == null) return null;
    if (_team is EqualUnmodifiableListView) return _team;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _comments;
  @override
  List<dynamic>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _images;
  @override
  List<dynamic>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic completed;
  @override
  @JsonKey(name: 'signature_name')
  final dynamic signatureName;
  @override
  @JsonKey(name: 'purchase_order')
  final dynamic purchaseOrder;
  @override
  @JsonKey(name: 'job_video')
  final dynamic jobVideo;
  @override
  final bool? error;
  @override
  @JsonKey(name: 'dev_data')
  final dynamic devData;

  @override
  String toString() {
    return 'Schedule(id: $id, status: $status, startDate: $startDate, startTime: $startTime, endDate: $endDate, endTime: $endTime, vehicle: $vehicle, primeVehicleDriver: $primeVehicleDriver, additionalVehicleDriver: $additionalVehicleDriver, signature: $signature, team: $team, comments: $comments, images: $images, completed: $completed, signatureName: $signatureName, purchaseOrder: $purchaseOrder, jobVideo: $jobVideo, error: $error, devData: $devData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            const DeepCollectionEquality()
                .equals(other._primeVehicleDriver, _primeVehicleDriver) &&
            const DeepCollectionEquality().equals(
                other._additionalVehicleDriver, _additionalVehicleDriver) &&
            const DeepCollectionEquality().equals(other.signature, signature) &&
            const DeepCollectionEquality().equals(other._team, _team) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.completed, completed) &&
            const DeepCollectionEquality()
                .equals(other.signatureName, signatureName) &&
            const DeepCollectionEquality()
                .equals(other.purchaseOrder, purchaseOrder) &&
            const DeepCollectionEquality().equals(other.jobVideo, jobVideo) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.devData, devData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(startTime),
        const DeepCollectionEquality().hash(endDate),
        const DeepCollectionEquality().hash(endTime),
        vehicle,
        const DeepCollectionEquality().hash(_primeVehicleDriver),
        const DeepCollectionEquality().hash(_additionalVehicleDriver),
        const DeepCollectionEquality().hash(signature),
        const DeepCollectionEquality().hash(_team),
        const DeepCollectionEquality().hash(_comments),
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(completed),
        const DeepCollectionEquality().hash(signatureName),
        const DeepCollectionEquality().hash(purchaseOrder),
        const DeepCollectionEquality().hash(jobVideo),
        error,
        const DeepCollectionEquality().hash(devData)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      __$$ScheduleImplCopyWithImpl<_$ScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleImplToJson(
      this,
    );
  }
}

abstract class _Schedule implements Schedule {
  factory _Schedule(
      {final dynamic id,
      final dynamic status,
      @JsonKey(name: 'start_date') final dynamic startDate,
      @JsonKey(name: 'start_time') final dynamic startTime,
      @JsonKey(name: 'end_date') final dynamic endDate,
      @JsonKey(name: 'end_time') final dynamic endTime,
      final Vehicle? vehicle,
      @JsonKey(name: 'prime_vehicle_driver')
      final List<dynamic>? primeVehicleDriver,
      @JsonKey(name: 'additional_vehicle_driver')
      final List<dynamic>? additionalVehicleDriver,
      final dynamic signature,
      final List<dynamic>? team,
      final List<dynamic>? comments,
      final List<dynamic>? images,
      final dynamic completed,
      @JsonKey(name: 'signature_name') final dynamic signatureName,
      @JsonKey(name: 'purchase_order') final dynamic purchaseOrder,
      @JsonKey(name: 'job_video') final dynamic jobVideo,
      final bool? error,
      @JsonKey(name: 'dev_data') final dynamic devData}) = _$ScheduleImpl;

  factory _Schedule.fromJson(Map<String, dynamic> json) =
      _$ScheduleImpl.fromJson;

  @override
  dynamic get id;
  @override
  dynamic get status;
  @override
  @JsonKey(name: 'start_date')
  dynamic get startDate;
  @override
  @JsonKey(name: 'start_time')
  dynamic get startTime;
  @override
  @JsonKey(name: 'end_date')
  dynamic get endDate;
  @override
  @JsonKey(name: 'end_time')
  dynamic get endTime;
  @override
  Vehicle? get vehicle;
  @override
  @JsonKey(name: 'prime_vehicle_driver')
  List<dynamic>? get primeVehicleDriver;
  @override
  @JsonKey(name: 'additional_vehicle_driver')
  List<dynamic>? get additionalVehicleDriver;
  @override
  dynamic get signature;
  @override
  List<dynamic>? get team;
  @override
  List<dynamic>? get comments;
  @override
  List<dynamic>? get images;
  @override
  dynamic get completed;
  @override
  @JsonKey(name: 'signature_name')
  dynamic get signatureName;
  @override
  @JsonKey(name: 'purchase_order')
  dynamic get purchaseOrder;
  @override
  @JsonKey(name: 'job_video')
  dynamic get jobVideo;
  @override
  bool? get error;
  @override
  @JsonKey(name: 'dev_data')
  dynamic get devData;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
