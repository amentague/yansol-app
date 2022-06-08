import 'package:crypto/crypto.dart';
import 'dart:convert';

// const odooServerURL = 'http://10.0.2.2:8069';
const odooServerURL = 'http://0.0.0.0:8069';

const String odooDbName = 'loja';
// Hive
final hiveBoxName = sha1
    .convert(utf8.encode('odoo_repository:$odooServerURL:$odooDbName'))
    .toString();
const cacheSessionKey = 'session';
