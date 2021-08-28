import 'package:image_picker/image_picker.dart';
import 'dart:io' as Io;
import 'dart:convert';
import 'package:http/http.dart' as http;

class UserProvider {

  Future<String> GetTraduction (XFile? image) async{
    final bytes =
      await Io.File(image!.path).readAsBytes();
    String img64 = base64Encode(bytes);
    var body = {
      'imageString': img64
    };
    var url = Uri.parse('http://23c9-2800-484-588-2ec0-2889-d7f3-7278-e82b.ngrok.io/api/gesture');
    var res = await http.post(url,body: json.encode(body));
    var response = json.decode(res.body);
    return response['result'];
  }
}