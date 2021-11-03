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
      'imageString':img64
    };
    print(img64);
    var url = Uri.parse('https://965d-186-84-22-0.ngrok.io/api/gesture');
    var res = await http.post(url,body: json.encode(body));
    var response = json.decode(res.body);
    if (res.statusCode == 404){
      return "NOT_FOUND";
    }else if (res.statusCode == 400){
      return "TRY_AGAIN";
    } else if (res.statusCode != 200){
      return "ERROR";
    }
    return response['result'];
  }
}