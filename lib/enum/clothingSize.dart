enum ClothingSize { small, medium, large, xLarge, xxLarge }

enum TemperatureRange { freezing, cold, warm, hot }

void main() {
  var size = ClothingSize.large;
  print(size.runtimeType); // 데이터 타입 출력

  switch(size) {
    case ClothingSize.small:
      print("작은 사이즈");
      break;
    case ClothingSize.medium:
      print("중간 사이즈");
      break;
    case ClothingSize.large:
      print("큰 사이즈");
      break;
    case ClothingSize.xLarge:
      print("더 큰 사이즈");
      break;
    default:
      print("알 수 없습니다.");
  }
}