import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecetasRecord extends FirestoreRecord {
  RecetasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NombreReceta" field.
  String? _nombreReceta;
  String get nombreReceta => _nombreReceta ?? '';
  bool hasNombreReceta() => _nombreReceta != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Tiempo" field.
  String? _tiempo;
  String get tiempo => _tiempo ?? '';
  bool hasTiempo() => _tiempo != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _nombreReceta = snapshotData['NombreReceta'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _tiempo = snapshotData['Tiempo'] as String?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recetas');

  static Stream<RecetasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecetasRecord.fromSnapshot(s));

  static Future<RecetasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecetasRecord.fromSnapshot(s));

  static RecetasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecetasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecetasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecetasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecetasRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createRecetasRecordData({
  String? nombreReceta,
  String? descripcion,
  String? tiempo,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NombreReceta': nombreReceta,
      'Descripcion': descripcion,
      'Tiempo': tiempo,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}
