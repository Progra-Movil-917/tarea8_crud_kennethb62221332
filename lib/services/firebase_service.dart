import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore fbdb = FirebaseFirestore.instance;

Future<List> getData() async{
  List datos = [];
  CollectionReference collectionReferenceData = fbdb.collection('entes');

  QuerySnapshot queryData = await collectionReferenceData.get();

  queryData.docs.forEach((documento) {
    datos.add(documento.data());
  });

  await Future.delayed(const Duration(seconds: 5));


  return datos;
}