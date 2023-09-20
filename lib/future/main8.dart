import 'dart:convert';

void main() {
  // 여러 줄의 문자열 ''' ''' (따옴표 3개 사용)
  String jsonStr = '''
    {
      "albumId": 1,
      "id": 1,
      "title": "accusamus beatae ad facilis cum similique qui sunt",
      "url": "https://via.placeholder.com/600/92c952",
      "thumbnailUrl": "https://via.placeholder.com/150/92c952"
    }
  ''';

  // 파싱 기술 1 - Map 변환
  print("jsonMap : ${json.decode(jsonStr).runtimeType}");
  // print(json.decode(jsonStr));
  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    print("$key : $value");
  });

  // Map 구조 사용 방법
  var id = jsonMap["id"];

  Photo myPhoto = Photo.fromJson(jsonMap);
  print(myPhoto.albumId);
  print(myPhoto.id);
  print(myPhoto.title);
  print(myPhoto.url);
  print(myPhoto.thumbnailUrl);
}


// 파싱 기술 2 - 클래스 설계
class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  Photo.fromJson(Map<String, dynamic> json)
      : albumId = json["albumId"],
        id = json["id"],
        title = json["title"],
        url = json["url"],
        thumbnailUrl = json["thumbnailUrl"];

}
