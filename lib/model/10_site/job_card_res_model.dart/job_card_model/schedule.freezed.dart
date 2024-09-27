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
  List<PrimeVehicleDriver>? get primeVehicleDriver =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_vehicle_driver')
  List<AdditionalVehicleDriver>? get additionalVehicleDriver =>
      throw _privateConstructorUsedError;
  dynamic get signature => throw _privateConstructorUsedError;
  List<dynamic>? get team => throw _privateConstructorUsedError;
  @JsonKey(name: "comments")
  List<Comment>? get comments => throw _privateConstructorUsedError;
  List<dynamic>? get images => throw _privateConstructorUsedError;
  dynamic get completed => throw _privateConstructorUsedError;
  @JsonKey(name: 'signature_name')
  dynamic get signatureName => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchase_order')
  dynamic get purchaseOrder => throw _privateConstructorUsedError;
  @JobVideoConverter()
  @JsonKey(name: "job_video")
  List<Job>? get jobVideo => throw _privateConstructorUsedError;
  bool? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'extracted_waste_type')
  dynamic get extractedWasteType => throw _privateConstructorUsedError;
  @JsonKey(name: 'extracted_litres_of_waste')
  dynamic get extractedLitresOfWaste => throw _privateConstructorUsedError;
  @JsonKey(name: 'before_pics')
  List<BeforePic>? get beforePics => throw _privateConstructorUsedError;
  @JsonKey(name: 'after_pics')
  List<BeforePic>? get afterPics => throw _privateConstructorUsedError;
  @JsonKey(name: 'dev_data')
  dynamic get devData => throw _privateConstructorUsedError;
  @JsonKey(name: 'depart_enviro_facility')
  dynamic get departEnviroFacility => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_job')
  dynamic get startJob => throw _privateConstructorUsedError;
  @JsonKey(name: 'finish_job')
  dynamic get finishJob => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrive_at_waste_depot')
  dynamic get arriveAtWasteDepot => throw _privateConstructorUsedError;
  @JsonKey(name: 'depart_waste_depot')
  dynamic get departWasteDepot => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrive_enviro_facility')
  dynamic get arriveEnviroFacility => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'prime_vehicle_driver')
      List<PrimeVehicleDriver>? primeVehicleDriver,
      @JsonKey(name: 'additional_vehicle_driver')
      List<AdditionalVehicleDriver>? additionalVehicleDriver,
      dynamic signature,
      List<dynamic>? team,
      @JsonKey(name: "comments") List<Comment>? comments,
      List<dynamic>? images,
      dynamic completed,
      @JsonKey(name: 'signature_name') dynamic signatureName,
      @JsonKey(name: 'purchase_order') dynamic purchaseOrder,
      @JobVideoConverter() @JsonKey(name: "job_video") List<Job>? jobVideo,
      bool? error,
      @JsonKey(name: 'extracted_waste_type') dynamic extractedWasteType,
      @JsonKey(name: 'extracted_litres_of_waste')
      dynamic extractedLitresOfWaste,
      @JsonKey(name: 'before_pics') List<BeforePic>? beforePics,
      @JsonKey(name: 'after_pics') List<BeforePic>? afterPics,
      @JsonKey(name: 'dev_data') dynamic devData,
      @JsonKey(name: 'depart_enviro_facility') dynamic departEnviroFacility,
      @JsonKey(name: 'start_job') dynamic startJob,
      @JsonKey(name: 'finish_job') dynamic finishJob,
      @JsonKey(name: 'arrive_at_waste_depot') dynamic arriveAtWasteDepot,
      @JsonKey(name: 'depart_waste_depot') dynamic departWasteDepot,
      @JsonKey(name: 'arrive_enviro_facility') dynamic arriveEnviroFacility});

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
    Object? extractedWasteType = freezed,
    Object? extractedLitresOfWaste = freezed,
    Object? beforePics = freezed,
    Object? afterPics = freezed,
    Object? devData = freezed,
    Object? departEnviroFacility = freezed,
    Object? startJob = freezed,
    Object? finishJob = freezed,
    Object? arriveAtWasteDepot = freezed,
    Object? departWasteDepot = freezed,
    Object? arriveEnviroFacility = freezed,
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
              as List<PrimeVehicleDriver>?,
      additionalVehicleDriver: freezed == additionalVehicleDriver
          ? _value.additionalVehicleDriver
          : additionalVehicleDriver // ignore: cast_nullable_to_non_nullable
              as List<AdditionalVehicleDriver>?,
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
              as List<Comment>?,
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
              as List<Job>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      extractedWasteType: freezed == extractedWasteType
          ? _value.extractedWasteType
          : extractedWasteType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      extractedLitresOfWaste: freezed == extractedLitresOfWaste
          ? _value.extractedLitresOfWaste
          : extractedLitresOfWaste // ignore: cast_nullable_to_non_nullable
              as dynamic,
      beforePics: freezed == beforePics
          ? _value.beforePics
          : beforePics // ignore: cast_nullable_to_non_nullable
              as List<BeforePic>?,
      afterPics: freezed == afterPics
          ? _value.afterPics
          : afterPics // ignore: cast_nullable_to_non_nullable
              as List<BeforePic>?,
      devData: freezed == devData
          ? _value.devData
          : devData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      departEnviroFacility: freezed == departEnviroFacility
          ? _value.departEnviroFacility
          : departEnviroFacility // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startJob: freezed == startJob
          ? _value.startJob
          : startJob // ignore: cast_nullable_to_non_nullable
              as dynamic,
      finishJob: freezed == finishJob
          ? _value.finishJob
          : finishJob // ignore: cast_nullable_to_non_nullable
              as dynamic,
      arriveAtWasteDepot: freezed == arriveAtWasteDepot
          ? _value.arriveAtWasteDepot
          : arriveAtWasteDepot // ignore: cast_nullable_to_non_nullable
              as dynamic,
      departWasteDepot: freezed == departWasteDepot
          ? _value.departWasteDepot
          : departWasteDepot // ignore: cast_nullable_to_non_nullable
              as dynamic,
      arriveEnviroFacility: freezed == arriveEnviroFacility
          ? _value.arriveEnviroFacility
          : arriveEnviroFacility // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'prime_vehicle_driver')
      List<PrimeVehicleDriver>? primeVehicleDriver,
      @JsonKey(name: 'additional_vehicle_driver')
      List<AdditionalVehicleDriver>? additionalVehicleDriver,
      dynamic signature,
      List<dynamic>? team,
      @JsonKey(name: "comments") List<Comment>? comments,
      List<dynamic>? images,
      dynamic completed,
      @JsonKey(name: 'signature_name') dynamic signatureName,
      @JsonKey(name: 'purchase_order') dynamic purchaseOrder,
      @JobVideoConverter() @JsonKey(name: "job_video") List<Job>? jobVideo,
      bool? error,
      @JsonKey(name: 'extracted_waste_type') dynamic extractedWasteType,
      @JsonKey(name: 'extracted_litres_of_waste')
      dynamic extractedLitresOfWaste,
      @JsonKey(name: 'before_pics') List<BeforePic>? beforePics,
      @JsonKey(name: 'after_pics') List<BeforePic>? afterPics,
      @JsonKey(name: 'dev_data') dynamic devData,
      @JsonKey(name: 'depart_enviro_facility') dynamic departEnviroFacility,
      @JsonKey(name: 'start_job') dynamic startJob,
      @JsonKey(name: 'finish_job') dynamic finishJob,
      @JsonKey(name: 'arrive_at_waste_depot') dynamic arriveAtWasteDepot,
      @JsonKey(name: 'depart_waste_depot') dynamic departWasteDepot,
      @JsonKey(name: 'arrive_enviro_facility') dynamic arriveEnviroFacility});

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
    Object? extractedWasteType = freezed,
    Object? extractedLitresOfWaste = freezed,
    Object? beforePics = freezed,
    Object? afterPics = freezed,
    Object? devData = freezed,
    Object? departEnviroFacility = freezed,
    Object? startJob = freezed,
    Object? finishJob = freezed,
    Object? arriveAtWasteDepot = freezed,
    Object? departWasteDepot = freezed,
    Object? arriveEnviroFacility = freezed,
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
              as List<PrimeVehicleDriver>?,
      additionalVehicleDriver: freezed == additionalVehicleDriver
          ? _value._additionalVehicleDriver
          : additionalVehicleDriver // ignore: cast_nullable_to_non_nullable
              as List<AdditionalVehicleDriver>?,
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
              as List<Comment>?,
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
          ? _value._jobVideo
          : jobVideo // ignore: cast_nullable_to_non_nullable
              as List<Job>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      extractedWasteType: freezed == extractedWasteType
          ? _value.extractedWasteType
          : extractedWasteType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      extractedLitresOfWaste: freezed == extractedLitresOfWaste
          ? _value.extractedLitresOfWaste
          : extractedLitresOfWaste // ignore: cast_nullable_to_non_nullable
              as dynamic,
      beforePics: freezed == beforePics
          ? _value._beforePics
          : beforePics // ignore: cast_nullable_to_non_nullable
              as List<BeforePic>?,
      afterPics: freezed == afterPics
          ? _value._afterPics
          : afterPics // ignore: cast_nullable_to_non_nullable
              as List<BeforePic>?,
      devData: freezed == devData
          ? _value.devData
          : devData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      departEnviroFacility: freezed == departEnviroFacility
          ? _value.departEnviroFacility
          : departEnviroFacility // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startJob: freezed == startJob
          ? _value.startJob
          : startJob // ignore: cast_nullable_to_non_nullable
              as dynamic,
      finishJob: freezed == finishJob
          ? _value.finishJob
          : finishJob // ignore: cast_nullable_to_non_nullable
              as dynamic,
      arriveAtWasteDepot: freezed == arriveAtWasteDepot
          ? _value.arriveAtWasteDepot
          : arriveAtWasteDepot // ignore: cast_nullable_to_non_nullable
              as dynamic,
      departWasteDepot: freezed == departWasteDepot
          ? _value.departWasteDepot
          : departWasteDepot // ignore: cast_nullable_to_non_nullable
              as dynamic,
      arriveEnviroFacility: freezed == arriveEnviroFacility
          ? _value.arriveEnviroFacility
          : arriveEnviroFacility // ignore: cast_nullable_to_non_nullable
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
      final List<PrimeVehicleDriver>? primeVehicleDriver,
      @JsonKey(name: 'additional_vehicle_driver')
      final List<AdditionalVehicleDriver>? additionalVehicleDriver,
      this.signature,
      final List<dynamic>? team,
      @JsonKey(name: "comments") final List<Comment>? comments,
      final List<dynamic>? images,
      this.completed,
      @JsonKey(name: 'signature_name') this.signatureName,
      @JsonKey(name: 'purchase_order') this.purchaseOrder,
      @JobVideoConverter()
      @JsonKey(name: "job_video")
      final List<Job>? jobVideo,
      this.error,
      @JsonKey(name: 'extracted_waste_type') this.extractedWasteType,
      @JsonKey(name: 'extracted_litres_of_waste') this.extractedLitresOfWaste,
      @JsonKey(name: 'before_pics') final List<BeforePic>? beforePics,
      @JsonKey(name: 'after_pics') final List<BeforePic>? afterPics,
      @JsonKey(name: 'dev_data') this.devData,
      @JsonKey(name: 'depart_enviro_facility') this.departEnviroFacility,
      @JsonKey(name: 'start_job') this.startJob,
      @JsonKey(name: 'finish_job') this.finishJob,
      @JsonKey(name: 'arrive_at_waste_depot') this.arriveAtWasteDepot,
      @JsonKey(name: 'depart_waste_depot') this.departWasteDepot,
      @JsonKey(name: 'arrive_enviro_facility') this.arriveEnviroFacility})
      : _primeVehicleDriver = primeVehicleDriver,
        _additionalVehicleDriver = additionalVehicleDriver,
        _team = team,
        _comments = comments,
        _images = images,
        _jobVideo = jobVideo,
        _beforePics = beforePics,
        _afterPics = afterPics;

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
  final List<PrimeVehicleDriver>? _primeVehicleDriver;
  @override
  @JsonKey(name: 'prime_vehicle_driver')
  List<PrimeVehicleDriver>? get primeVehicleDriver {
    final value = _primeVehicleDriver;
    if (value == null) return null;
    if (_primeVehicleDriver is EqualUnmodifiableListView)
      return _primeVehicleDriver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdditionalVehicleDriver>? _additionalVehicleDriver;
  @override
  @JsonKey(name: 'additional_vehicle_driver')
  List<AdditionalVehicleDriver>? get additionalVehicleDriver {
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

  final List<Comment>? _comments;
  @override
  @JsonKey(name: "comments")
  List<Comment>? get comments {
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
  final List<Job>? _jobVideo;
  @override
  @JobVideoConverter()
  @JsonKey(name: "job_video")
  List<Job>? get jobVideo {
    final value = _jobVideo;
    if (value == null) return null;
    if (_jobVideo is EqualUnmodifiableListView) return _jobVideo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? error;
  @override
  @JsonKey(name: 'extracted_waste_type')
  final dynamic extractedWasteType;
  @override
  @JsonKey(name: 'extracted_litres_of_waste')
  final dynamic extractedLitresOfWaste;
  final List<BeforePic>? _beforePics;
  @override
  @JsonKey(name: 'before_pics')
  List<BeforePic>? get beforePics {
    final value = _beforePics;
    if (value == null) return null;
    if (_beforePics is EqualUnmodifiableListView) return _beforePics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BeforePic>? _afterPics;
  @override
  @JsonKey(name: 'after_pics')
  List<BeforePic>? get afterPics {
    final value = _afterPics;
    if (value == null) return null;
    if (_afterPics is EqualUnmodifiableListView) return _afterPics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'dev_data')
  final dynamic devData;
  @override
  @JsonKey(name: 'depart_enviro_facility')
  final dynamic departEnviroFacility;
  @override
  @JsonKey(name: 'start_job')
  final dynamic startJob;
  @override
  @JsonKey(name: 'finish_job')
  final dynamic finishJob;
  @override
  @JsonKey(name: 'arrive_at_waste_depot')
  final dynamic arriveAtWasteDepot;
  @override
  @JsonKey(name: 'depart_waste_depot')
  final dynamic departWasteDepot;
  @override
  @JsonKey(name: 'arrive_enviro_facility')
  final dynamic arriveEnviroFacility;

  @override
  String toString() {
    return 'Schedule(id: $id, status: $status, startDate: $startDate, startTime: $startTime, endDate: $endDate, endTime: $endTime, vehicle: $vehicle, primeVehicleDriver: $primeVehicleDriver, additionalVehicleDriver: $additionalVehicleDriver, signature: $signature, team: $team, comments: $comments, images: $images, completed: $completed, signatureName: $signatureName, purchaseOrder: $purchaseOrder, jobVideo: $jobVideo, error: $error, extractedWasteType: $extractedWasteType, extractedLitresOfWaste: $extractedLitresOfWaste, beforePics: $beforePics, afterPics: $afterPics, devData: $devData, departEnviroFacility: $departEnviroFacility, startJob: $startJob, finishJob: $finishJob, arriveAtWasteDepot: $arriveAtWasteDepot, departWasteDepot: $departWasteDepot, arriveEnviroFacility: $arriveEnviroFacility)';
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
            const DeepCollectionEquality().equals(other._jobVideo, _jobVideo) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other.extractedWasteType, extractedWasteType) &&
            const DeepCollectionEquality()
                .equals(other.extractedLitresOfWaste, extractedLitresOfWaste) &&
            const DeepCollectionEquality()
                .equals(other._beforePics, _beforePics) &&
            const DeepCollectionEquality()
                .equals(other._afterPics, _afterPics) &&
            const DeepCollectionEquality().equals(other.devData, devData) &&
            const DeepCollectionEquality()
                .equals(other.departEnviroFacility, departEnviroFacility) &&
            const DeepCollectionEquality().equals(other.startJob, startJob) &&
            const DeepCollectionEquality().equals(other.finishJob, finishJob) &&
            const DeepCollectionEquality()
                .equals(other.arriveAtWasteDepot, arriveAtWasteDepot) &&
            const DeepCollectionEquality()
                .equals(other.departWasteDepot, departWasteDepot) &&
            const DeepCollectionEquality()
                .equals(other.arriveEnviroFacility, arriveEnviroFacility));
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
        const DeepCollectionEquality().hash(_jobVideo),
        error,
        const DeepCollectionEquality().hash(extractedWasteType),
        const DeepCollectionEquality().hash(extractedLitresOfWaste),
        const DeepCollectionEquality().hash(_beforePics),
        const DeepCollectionEquality().hash(_afterPics),
        const DeepCollectionEquality().hash(devData),
        const DeepCollectionEquality().hash(departEnviroFacility),
        const DeepCollectionEquality().hash(startJob),
        const DeepCollectionEquality().hash(finishJob),
        const DeepCollectionEquality().hash(arriveAtWasteDepot),
        const DeepCollectionEquality().hash(departWasteDepot),
        const DeepCollectionEquality().hash(arriveEnviroFacility)
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
      final List<PrimeVehicleDriver>? primeVehicleDriver,
      @JsonKey(name: 'additional_vehicle_driver')
      final List<AdditionalVehicleDriver>? additionalVehicleDriver,
      final dynamic signature,
      final List<dynamic>? team,
      @JsonKey(name: "comments") final List<Comment>? comments,
      final List<dynamic>? images,
      final dynamic completed,
      @JsonKey(name: 'signature_name') final dynamic signatureName,
      @JsonKey(name: 'purchase_order') final dynamic purchaseOrder,
      @JobVideoConverter()
      @JsonKey(name: "job_video")
      final List<Job>? jobVideo,
      final bool? error,
      @JsonKey(name: 'extracted_waste_type') final dynamic extractedWasteType,
      @JsonKey(name: 'extracted_litres_of_waste')
      final dynamic extractedLitresOfWaste,
      @JsonKey(name: 'before_pics') final List<BeforePic>? beforePics,
      @JsonKey(name: 'after_pics') final List<BeforePic>? afterPics,
      @JsonKey(name: 'dev_data') final dynamic devData,
      @JsonKey(name: 'depart_enviro_facility')
      final dynamic departEnviroFacility,
      @JsonKey(name: 'start_job') final dynamic startJob,
      @JsonKey(name: 'finish_job') final dynamic finishJob,
      @JsonKey(name: 'arrive_at_waste_depot') final dynamic arriveAtWasteDepot,
      @JsonKey(name: 'depart_waste_depot') final dynamic departWasteDepot,
      @JsonKey(name: 'arrive_enviro_facility')
      final dynamic arriveEnviroFacility}) = _$ScheduleImpl;

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
  List<PrimeVehicleDriver>? get primeVehicleDriver;
  @override
  @JsonKey(name: 'additional_vehicle_driver')
  List<AdditionalVehicleDriver>? get additionalVehicleDriver;
  @override
  dynamic get signature;
  @override
  List<dynamic>? get team;
  @override
  @JsonKey(name: "comments")
  List<Comment>? get comments;
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
  @JobVideoConverter()
  @JsonKey(name: "job_video")
  List<Job>? get jobVideo;
  @override
  bool? get error;
  @override
  @JsonKey(name: 'extracted_waste_type')
  dynamic get extractedWasteType;
  @override
  @JsonKey(name: 'extracted_litres_of_waste')
  dynamic get extractedLitresOfWaste;
  @override
  @JsonKey(name: 'before_pics')
  List<BeforePic>? get beforePics;
  @override
  @JsonKey(name: 'after_pics')
  List<BeforePic>? get afterPics;
  @override
  @JsonKey(name: 'dev_data')
  dynamic get devData;
  @override
  @JsonKey(name: 'depart_enviro_facility')
  dynamic get departEnviroFacility;
  @override
  @JsonKey(name: 'start_job')
  dynamic get startJob;
  @override
  @JsonKey(name: 'finish_job')
  dynamic get finishJob;
  @override
  @JsonKey(name: 'arrive_at_waste_depot')
  dynamic get arriveAtWasteDepot;
  @override
  @JsonKey(name: 'depart_waste_depot')
  dynamic get departWasteDepot;
  @override
  @JsonKey(name: 'arrive_enviro_facility')
  dynamic get arriveEnviroFacility;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobVideo _$JobVideoFromJson(Map<String, dynamic> json) {
  return _JobVideo.fromJson(json);
}

/// @nodoc
mixin _$JobVideo {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "video")
  String? get video => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "created_date_time")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "edited_date_time")
  String? get editedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobVideoCopyWith<JobVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobVideoCopyWith<$Res> {
  factory $JobVideoCopyWith(JobVideo value, $Res Function(JobVideo) then) =
      _$JobVideoCopyWithImpl<$Res, JobVideo>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "video") String? video,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "created_date_time") String? createdAt,
      @JsonKey(name: "edited_date_time") String? editedAt});
}

/// @nodoc
class _$JobVideoCopyWithImpl<$Res, $Val extends JobVideo>
    implements $JobVideoCopyWith<$Res> {
  _$JobVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? video = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? editedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      editedAt: freezed == editedAt
          ? _value.editedAt
          : editedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobVideoImplCopyWith<$Res>
    implements $JobVideoCopyWith<$Res> {
  factory _$$JobVideoImplCopyWith(
          _$JobVideoImpl value, $Res Function(_$JobVideoImpl) then) =
      __$$JobVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "video") String? video,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "created_date_time") String? createdAt,
      @JsonKey(name: "edited_date_time") String? editedAt});
}

/// @nodoc
class __$$JobVideoImplCopyWithImpl<$Res>
    extends _$JobVideoCopyWithImpl<$Res, _$JobVideoImpl>
    implements _$$JobVideoImplCopyWith<$Res> {
  __$$JobVideoImplCopyWithImpl(
      _$JobVideoImpl _value, $Res Function(_$JobVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? video = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? editedAt = freezed,
  }) {
    return _then(_$JobVideoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      editedAt: freezed == editedAt
          ? _value.editedAt
          : editedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobVideoImpl implements _JobVideo {
  const _$JobVideoImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "video") this.video,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "created_date_time") this.createdAt,
      @JsonKey(name: "edited_date_time") this.editedAt});

  factory _$JobVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobVideoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "video")
  final String? video;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "created_date_time")
  final String? createdAt;
  @override
  @JsonKey(name: "edited_date_time")
  final String? editedAt;

  @override
  String toString() {
    return 'JobVideo(id: $id, video: $video, name: $name, createdAt: $createdAt, editedAt: $editedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobVideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.editedAt, editedAt) ||
                other.editedAt == editedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, video, name, createdAt, editedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobVideoImplCopyWith<_$JobVideoImpl> get copyWith =>
      __$$JobVideoImplCopyWithImpl<_$JobVideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobVideoImplToJson(
      this,
    );
  }
}

abstract class _JobVideo implements JobVideo {
  const factory _JobVideo(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "video") final String? video,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "created_date_time") final String? createdAt,
          @JsonKey(name: "edited_date_time") final String? editedAt}) =
      _$JobVideoImpl;

  factory _JobVideo.fromJson(Map<String, dynamic> json) =
      _$JobVideoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "video")
  String? get video;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "created_date_time")
  String? get createdAt;
  @override
  @JsonKey(name: "edited_date_time")
  String? get editedAt;
  @override
  @JsonKey(ignore: true)
  _$$JobVideoImplCopyWith<_$JobVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
