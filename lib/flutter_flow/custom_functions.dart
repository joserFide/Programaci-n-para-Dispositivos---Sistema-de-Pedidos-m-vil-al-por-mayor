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

double impuesto(double cantidad) {
  return cantidad * 0.1;
}

double restarSubtotal(
  double valorSubtotal,
  double precio,
) {
  if (valorSubtotal > 0) {
    valorSubtotal = valorSubtotal - precio;
  }
  return valorSubtotal;
}

double sumarSubtotal(
  double valorSubtotal,
  double precio,
) {
  valorSubtotal = valorSubtotal + precio;
  return valorSubtotal;
}

double totalLista(List<double> subTotal) {
  double total = 0;
  for (double add in subTotal) {
    total += add;
  }
  return total;
}

double calcularSubtotal(
  double precio,
  int cantidad,
) {
  return precio * cantidad;
}

int cantidadTotal(List<int> cantidad) {
  int total = 0;
  for (int add in cantidad) {
    total += add;
  }
  return total;
}
