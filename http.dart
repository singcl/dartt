import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  // 1. 创建一个HttpClient
  HttpClient httpClient = new HttpClient();

  Uri uri = Uri(
      scheme: 'https',
      host: "flutterchina.club",
      queryParameters: {"xx": "xx", "yy": "yy"});

  Future<String> check() async {
    // 2. 打开Http连接，设置请求头
    HttpClientRequest request = await httpClient.getUrl(uri);

    // 3. 等待连接服务器
    HttpClientResponse response = await request.close();

    // 4. 读取响应内容
    String responseBody = await response.transform(utf8.decoder).join();

    // 5. 请求结束
    httpClient.close();

    return responseBody;
  }

  // 匿名函数 + 箭头函数
  check().then((value) => print(value));
}
