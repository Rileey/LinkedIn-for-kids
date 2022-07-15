// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectsRecord> _$projectsRecordSerializer =
    new _$ProjectsRecordSerializer();

class _$ProjectsRecordSerializer
    implements StructuredSerializer<ProjectsRecord> {
  @override
  final Iterable<Type> types = const [ProjectsRecord, _$ProjectsRecord];
  @override
  final String wireName = 'ProjectsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProjectsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userAssociation;
    if (value != null) {
      result
        ..add('userAssociation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.projectName;
    if (value != null) {
      result
        ..add('projectName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectDescription;
    if (value != null) {
      result
        ..add('projectDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectLocation;
    if (value != null) {
      result
        ..add('projectLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.projectImage;
    if (value != null) {
      result
        ..add('projectImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectStart;
    if (value != null) {
      result
        ..add('project_start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.projectEnd;
    if (value != null) {
      result
        ..add('project_end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ProjectsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'userAssociation':
          result.userAssociation = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'projectName':
          result.projectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectDescription':
          result.projectDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectLocation':
          result.projectLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'projectImage':
          result.projectImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'project_start':
          result.projectStart = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'project_end':
          result.projectEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectsRecord extends ProjectsRecord {
  @override
  final DocumentReference<Object> userAssociation;
  @override
  final String projectName;
  @override
  final String projectDescription;
  @override
  final LatLng projectLocation;
  @override
  final String projectImage;
  @override
  final DateTime projectStart;
  @override
  final DateTime projectEnd;
  @override
  final DocumentReference<Object> reference;

  factory _$ProjectsRecord([void Function(ProjectsRecordBuilder) updates]) =>
      (new ProjectsRecordBuilder()..update(updates)).build();

  _$ProjectsRecord._(
      {this.userAssociation,
      this.projectName,
      this.projectDescription,
      this.projectLocation,
      this.projectImage,
      this.projectStart,
      this.projectEnd,
      this.reference})
      : super._();

  @override
  ProjectsRecord rebuild(void Function(ProjectsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectsRecordBuilder toBuilder() =>
      new ProjectsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectsRecord &&
        userAssociation == other.userAssociation &&
        projectName == other.projectName &&
        projectDescription == other.projectDescription &&
        projectLocation == other.projectLocation &&
        projectImage == other.projectImage &&
        projectStart == other.projectStart &&
        projectEnd == other.projectEnd &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, userAssociation.hashCode),
                                projectName.hashCode),
                            projectDescription.hashCode),
                        projectLocation.hashCode),
                    projectImage.hashCode),
                projectStart.hashCode),
            projectEnd.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectsRecord')
          ..add('userAssociation', userAssociation)
          ..add('projectName', projectName)
          ..add('projectDescription', projectDescription)
          ..add('projectLocation', projectLocation)
          ..add('projectImage', projectImage)
          ..add('projectStart', projectStart)
          ..add('projectEnd', projectEnd)
          ..add('reference', reference))
        .toString();
  }
}

class ProjectsRecordBuilder
    implements Builder<ProjectsRecord, ProjectsRecordBuilder> {
  _$ProjectsRecord _$v;

  DocumentReference<Object> _userAssociation;
  DocumentReference<Object> get userAssociation => _$this._userAssociation;
  set userAssociation(DocumentReference<Object> userAssociation) =>
      _$this._userAssociation = userAssociation;

  String _projectName;
  String get projectName => _$this._projectName;
  set projectName(String projectName) => _$this._projectName = projectName;

  String _projectDescription;
  String get projectDescription => _$this._projectDescription;
  set projectDescription(String projectDescription) =>
      _$this._projectDescription = projectDescription;

  LatLng _projectLocation;
  LatLng get projectLocation => _$this._projectLocation;
  set projectLocation(LatLng projectLocation) =>
      _$this._projectLocation = projectLocation;

  String _projectImage;
  String get projectImage => _$this._projectImage;
  set projectImage(String projectImage) => _$this._projectImage = projectImage;

  DateTime _projectStart;
  DateTime get projectStart => _$this._projectStart;
  set projectStart(DateTime projectStart) =>
      _$this._projectStart = projectStart;

  DateTime _projectEnd;
  DateTime get projectEnd => _$this._projectEnd;
  set projectEnd(DateTime projectEnd) => _$this._projectEnd = projectEnd;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProjectsRecordBuilder() {
    ProjectsRecord._initializeBuilder(this);
  }

  ProjectsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userAssociation = $v.userAssociation;
      _projectName = $v.projectName;
      _projectDescription = $v.projectDescription;
      _projectLocation = $v.projectLocation;
      _projectImage = $v.projectImage;
      _projectStart = $v.projectStart;
      _projectEnd = $v.projectEnd;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectsRecord;
  }

  @override
  void update(void Function(ProjectsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectsRecord build() {
    final _$result = _$v ??
        new _$ProjectsRecord._(
            userAssociation: userAssociation,
            projectName: projectName,
            projectDescription: projectDescription,
            projectLocation: projectLocation,
            projectImage: projectImage,
            projectStart: projectStart,
            projectEnd: projectEnd,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
