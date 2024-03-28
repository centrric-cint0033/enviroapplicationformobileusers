// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleModelImpl _$$VehicleModelImplFromJson(Map<String, dynamic> json) =>
    _$VehicleModelImpl(
      id: json['id'] as int?,
      imageThumbnail: json['image_thumbnail'] as String?,
      image1: json['image1'] as String?,
      multipleImages: json['multiple_images'] as List<dynamic>?,
      tabType: json['tab_type'] as String?,
      vehicleType: json['vehicle_type'] as String?,
      activeStatus: json['active_status'] as bool?,
      previousRego: json['previous_rego'],
      registration: json['registration'] as String?,
      types: json['types'] as String?,
      year: json['year'],
      transmission: json['transmission'] as String?,
      fuel: json['fuel'] as String?,
      height: json['height'] as String?,
      width: json['width'] as String?,
      length: json['length'] as String?,
      litres: json['litres'] as String?,
      vinNumber: json['vin_number'] as String?,
      axies: json['axies'] as String?,
      dueRego: json['due_rego'] as String?,
      engineNumbers: json['engine_numbers'] as String?,
      eTag: json['e_tag'] as String?,
      insurance: json['insurance'] as String?,
      fuelCard: json['fuel_card'] as String?,
      fbt: json['fbt'] as String?,
      action: json['action'] as bool?,
      image2: json['image2'] as String?,
      image3: json['image3'] as String?,
      preinspectionRequired: json['preinspection_required'] as bool?,
      createdDateTime: json['created_date_time'] == null
          ? null
          : DateTime.parse(json['created_date_time'] as String),
      editedDateTime: json['edited_date_time'] == null
          ? null
          : DateTime.parse(json['edited_date_time'] as String),
      date: json['date'] as String?,
      time: json['time'] as String?,
      truckRego: json['truck_rego'] as String?,
      currentReadingBefore: json['current_reading_before'] as String?,
      readingAfterFilling: json['reading_after_filling'] as String?,
      filledBy: json['filled_by'] as String?,
      volumeUsedInLiter: json['volume_usedIn_liter'] as String?,
      vehicle: json['vehicle'] as int?,
      folder: json['folder'] as int?,
      description: json['description'] as String?,
      invoiceDate: json['invoice_date'] as String?,
      serviceDate: json['service_date'] as String?,
      ometer: json['ometer'] as String?,
      invoiceNumber: json['invoice_number'] as int?,
      serviceProvided: json['service_provided'] as String?,
      hours: json['hours'] as String?,
      lCost: json['l_cost'] as String?,
      sPart: json['s_part'] as String?,
      gst: json['gst'] as String?,
      totalCost: json['total_cost'] as String?,
      dateTime: json['date_time'] == null
          ? null
          : DateTime.parse(json['date_time'] as String),
      odometer: json['odometer'] as int?,
      odometdriverSignature: json['odometdriver_signature'] as String?,
      hourMeterStart: json['hour_meter_start'] as String?,
      fitForWork: json['fit_for_work'] as bool?,
      validDrivingLicense: json['Valid_driving_license'] as bool?,
      appropriatePpe: json['appropriate_ppe'] as bool?,
      engineOilLevel: json['engine_oil_level'] as bool?,
      warningSystem: json['warning_system'] as bool?,
      steering: json['steering'] as bool?,
      safetyEmergStop: json['safety_emerg_stop'] as bool?,
      handbreakAlarm: json['handbreak_alarm'] as bool?,
      ptoVacpump: json['pto_vacpump'] as bool?,
      horn: json['horn'] as bool?,
      revAlarmCamera: json['rev_alarm_camera'] as bool?,
      lightsHead: json['lights_head'] as bool?,
      lightsTail: json['lights_tail'] as bool?,
      lightBeacons: json['light_beacons'] as bool?,
      hazardLight: json['hazard_light'] as bool?,
      rimsWheelnut: json['rims_wheelnut'] as bool?,
      coolant: json['coolant'] as bool?,
      wheels: json['wheels'] as bool?,
      mirrorWindowscreen: json['mirror_windowscreen'] as bool?,
      structureBodywork: json['structure_bodywork'] as bool?,
      wipers: json['wipers'] as bool?,
      fuelLevelpump: json['fuel_levelpump'] as bool?,
      fuelLeveltruck: json['fuel_leveltruck'] as bool?,
      seatSeatbelt: json['seat_seatbelt'] as bool?,
      parkbrakeTrailer: json['parkbrake_trailer'] as bool?,
      footBrake: json['foot_brake'] as bool?,
      electrical: json['electrical'] as bool?,
      pinRetainers: json['pin_retainers'] as bool?,
      hoses: json['hoses'] as bool?,
      fittings: json['fittings'] as bool?,
      firstAidKit: json['first_aid_kit'] as bool?,
      ppe: json['ppe'] as bool?,
      fireExtinguisherDate: json['fire_extinguisher_date'] as String?,
      fireExtinguisher: json['fire_extinguisher'] as bool?,
      houseKeeping: json['house_keeping'] as bool?,
      gardenHose: json['garden_hose'] as bool?,
      gaticLifters: json['gatic_lifters'] as bool?,
      bucketRags: json['bucket_rags'] as bool?,
      spillKit: json['spill_kit'],
      actionTaken: json['action_taken'],
      authorizedBy: json['authorized_by'],
      safeReadyToOperate: json['safe_ready_to_operate'],
      reportedFaults: json['reported_faults'],
      reviewedForm: json['reviewed_form'],
      corrected: json['corrected'],
      scheduledForRepair: json['scheduled_for_repair'],
      noAction: json['no_action'],
      doNotAffectSafeOperation: json['do_not_affect_safe_operation'] as bool?,
      name: json['name'] as String?,
      signature: json['signature'],
      dateNow: json['date_now'],
      reportedFaultString: json['reported_fault_string'],
      driverName: json['driver_name'] as int?,
      folders: (json['folders'] as List<dynamic>?)
          ?.map((e) => Folder.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentFolder: json['parent_folder'] as int?,
    );

Map<String, dynamic> _$$VehicleModelImplToJson(_$VehicleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_thumbnail': instance.imageThumbnail,
      'image1': instance.image1,
      'multiple_images': instance.multipleImages,
      'tab_type': instance.tabType,
      'vehicle_type': instance.vehicleType,
      'active_status': instance.activeStatus,
      'previous_rego': instance.previousRego,
      'registration': instance.registration,
      'types': instance.types,
      'year': instance.year,
      'transmission': instance.transmission,
      'fuel': instance.fuel,
      'height': instance.height,
      'width': instance.width,
      'length': instance.length,
      'litres': instance.litres,
      'vin_number': instance.vinNumber,
      'axies': instance.axies,
      'due_rego': instance.dueRego,
      'engine_numbers': instance.engineNumbers,
      'e_tag': instance.eTag,
      'insurance': instance.insurance,
      'fuel_card': instance.fuelCard,
      'fbt': instance.fbt,
      'action': instance.action,
      'image2': instance.image2,
      'image3': instance.image3,
      'preinspection_required': instance.preinspectionRequired,
      'created_date_time': instance.createdDateTime?.toIso8601String(),
      'edited_date_time': instance.editedDateTime?.toIso8601String(),
      'date': instance.date,
      'time': instance.time,
      'truck_rego': instance.truckRego,
      'current_reading_before': instance.currentReadingBefore,
      'reading_after_filling': instance.readingAfterFilling,
      'filled_by': instance.filledBy,
      'volume_usedIn_liter': instance.volumeUsedInLiter,
      'vehicle': instance.vehicle,
      'folder': instance.folder,
      'description': instance.description,
      'invoice_date': instance.invoiceDate,
      'service_date': instance.serviceDate,
      'ometer': instance.ometer,
      'invoice_number': instance.invoiceNumber,
      'service_provided': instance.serviceProvided,
      'hours': instance.hours,
      'l_cost': instance.lCost,
      's_part': instance.sPart,
      'gst': instance.gst,
      'total_cost': instance.totalCost,
      'date_time': instance.dateTime?.toIso8601String(),
      'odometer': instance.odometer,
      'odometdriver_signature': instance.odometdriverSignature,
      'hour_meter_start': instance.hourMeterStart,
      'fit_for_work': instance.fitForWork,
      'Valid_driving_license': instance.validDrivingLicense,
      'appropriate_ppe': instance.appropriatePpe,
      'engine_oil_level': instance.engineOilLevel,
      'warning_system': instance.warningSystem,
      'steering': instance.steering,
      'safety_emerg_stop': instance.safetyEmergStop,
      'handbreak_alarm': instance.handbreakAlarm,
      'pto_vacpump': instance.ptoVacpump,
      'horn': instance.horn,
      'rev_alarm_camera': instance.revAlarmCamera,
      'lights_head': instance.lightsHead,
      'lights_tail': instance.lightsTail,
      'light_beacons': instance.lightBeacons,
      'hazard_light': instance.hazardLight,
      'rims_wheelnut': instance.rimsWheelnut,
      'coolant': instance.coolant,
      'wheels': instance.wheels,
      'mirror_windowscreen': instance.mirrorWindowscreen,
      'structure_bodywork': instance.structureBodywork,
      'wipers': instance.wipers,
      'fuel_levelpump': instance.fuelLevelpump,
      'fuel_leveltruck': instance.fuelLeveltruck,
      'seat_seatbelt': instance.seatSeatbelt,
      'parkbrake_trailer': instance.parkbrakeTrailer,
      'foot_brake': instance.footBrake,
      'electrical': instance.electrical,
      'pin_retainers': instance.pinRetainers,
      'hoses': instance.hoses,
      'fittings': instance.fittings,
      'first_aid_kit': instance.firstAidKit,
      'ppe': instance.ppe,
      'fire_extinguisher_date': instance.fireExtinguisherDate,
      'fire_extinguisher': instance.fireExtinguisher,
      'house_keeping': instance.houseKeeping,
      'garden_hose': instance.gardenHose,
      'gatic_lifters': instance.gaticLifters,
      'bucket_rags': instance.bucketRags,
      'spill_kit': instance.spillKit,
      'action_taken': instance.actionTaken,
      'authorized_by': instance.authorizedBy,
      'safe_ready_to_operate': instance.safeReadyToOperate,
      'reported_faults': instance.reportedFaults,
      'reviewed_form': instance.reviewedForm,
      'corrected': instance.corrected,
      'scheduled_for_repair': instance.scheduledForRepair,
      'no_action': instance.noAction,
      'do_not_affect_safe_operation': instance.doNotAffectSafeOperation,
      'name': instance.name,
      'signature': instance.signature,
      'date_now': instance.dateNow,
      'reported_fault_string': instance.reportedFaultString,
      'driver_name': instance.driverName,
      'folders': instance.folders,
      'parent_folder': instance.parentFolder,
    };