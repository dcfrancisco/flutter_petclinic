import 'dart:convert';
import 'package:flutter/services.dart';

class VetService {
  Future<Map<String, dynamic>> fetchVets() async {
    try {
      // Load JSON from assets
      final String response =
          await rootBundle.loadString('assets/db/vets.json');
      final Map<String, dynamic> data = json.decode(response);
      print('Fetched vets data: $data'); // Debug log
      return data;
    } catch (e) {
      print('Error loading vets: $e');
      return {};
    }
  }
}