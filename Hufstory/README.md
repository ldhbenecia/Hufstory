# :: Hufstory

* Hufstory 한국외국어대학교 종합 서비스

* 2022.07.01
    - 07.12까지 개인별로 View 구성해보기
* 2022.07.11
    - 디자인 요소 살짝 변경, 기획-디자인님, 조원들과 상의해서 디자인 정해야 함
    - Firebase에 로그인 정보 저장
    - 구글, 애플 이메일 로그인은 구현 못함
        - Xcode, M1 Error가 너무 많이 발생해서 뉴비인 내게 힘든 상태
    
    
* Failed to log metrics 오류가 발생하여 실행을 해도 시작하는 View가 나타나지 않았음
    - 첫 navigationController에 is initial View Controller 설정을 하지 않았음
