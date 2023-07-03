import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              // all -> 어떤 상태든 유지하고 싶은 경우
              // resolveWith -> 상태에 따라 원하는 스타일을 따로 return 가능
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.black
                ),
                // MaterialState
                // hovered: 마우스 커서를 올려놓은 상태,
                // focused: 포커스 됐을때 (텍스트 필드),
                // pressed: 눌렸을 때,
                // dragged: 드래그 됐을때,
                // selected: 선택되었을 때 (체크박스, 라디오 버튼),
                // scrollUnder: 다른 컴포넌트 밑으로 스크롤링 됐을 때,
                // disabled: 비활성화 됐을 때,
                // error: 에러 상태 (텍스트 필드),
                foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states){
                      if(states.contains(MaterialState.pressed)){
                        return Colors.white;
                      }
                      return Colors.red;
                    }
                ),
                padding: MaterialStateProperty.resolveWith((Set<MaterialState> states){
                  return EdgeInsets.all(20.0);
                }),
              ),
              child: Text('Button style'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  // 배경 색
                  foregroundColor: Colors.black,
                  // 글자색
                  shadowColor: Colors.green,
                  // 그림자 색
                  elevation: 10.0,
                  // 3D 입체감의 높이
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(32.0),
                  // 글자의 padding -> 버튼이 커짐
                  side: BorderSide(
                    color: Colors.black,
                    width: 4.0,
                  ) // 테두리 그리기
                  ),
              child: Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                foregroundColor: Colors.black,
              ),
              child: Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              child: Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}
