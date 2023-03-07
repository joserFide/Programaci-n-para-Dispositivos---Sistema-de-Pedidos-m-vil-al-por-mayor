import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double subtotalGeneral(List<double> listaSubtotales) {
  double value = 0.0;

  for (double val in listaSubtotales) {
    value += val;
  }

  return value;
}

double subtotalProductos(
  int qty,
  double precio,
) {
  return qty * precio;
}

double impuesto(double cantidad) {
  return cantidad * 0.1;
}

double precioTotal(double cantidad) {
  return cantidad + (cantidad * 0.1) + 2;
}
