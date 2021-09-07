class APIRequest {
  final String url;
  final body;
  final header;
  final APIMethod method;
  final String objectString;

  APIRequest(this.url, this.body, this.header, this.method, this.objectString);

}


enum APIMethod {
  POST,
  GET
}