import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'projects_record.g.dart';

abstract class ProjectsRecord
    implements Built<ProjectsRecord, ProjectsRecordBuilder> {
  static Serializer<ProjectsRecord> get serializer =>
      _$projectsRecordSerializer;

  @nullable
  DocumentReference get userAssociation;

  @nullable
  String get projectName;

  @nullable
  String get projectDescription;

  @nullable
  LatLng get projectLocation;

  @nullable
  String get projectImage;

  @nullable
  @BuiltValueField(wireName: 'project_start')
  DateTime get projectStart;

  @nullable
  @BuiltValueField(wireName: 'project_end')
  DateTime get projectEnd;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProjectsRecordBuilder builder) => builder
    ..projectName = ''
    ..projectDescription = ''
    ..projectImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProjectsRecord._();
  factory ProjectsRecord([void Function(ProjectsRecordBuilder) updates]) =
      _$ProjectsRecord;

  static ProjectsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProjectsRecordData({
  DocumentReference userAssociation,
  String projectName,
  String projectDescription,
  LatLng projectLocation,
  String projectImage,
  DateTime projectStart,
  DateTime projectEnd,
}) =>
    serializers.toFirestore(
        ProjectsRecord.serializer,
        ProjectsRecord((p) => p
          ..userAssociation = userAssociation
          ..projectName = projectName
          ..projectDescription = projectDescription
          ..projectLocation = projectLocation
          ..projectImage = projectImage
          ..projectStart = projectStart
          ..projectEnd = projectEnd));
