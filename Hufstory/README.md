# :: Hufstory

* Hufstory 한국외국어대학교 종합 서비스

* 2022.07.01
    - 07.12까지 개인별로 View 구성해보기
* 2022.07.11
    - 디자인 요소 살짝 변경, 기획-디자인님, 조원들과 상의해서 디자인 정해야 함
    - Firebase에 로그인 정보 저장
    - 구글, 애플 이메일 로그인은 구현 못함
        - Xcode, M1 Error가 너무 많이 발생해서 뉴비인 내게 힘든 상태
    - Firebase Auth 기능을 사용하여 로그인 할 때 로그인 정보가 이미 저장된 정보일 시 같은 정보가 새로 또 저장되는 것이 아니라 그냥 로그인 되게 구현 - error code: 17007
        - error 코드 17007로 중복 로그인 정보 저장은 방지하고 이 외 다른 에러가 발생할 시는  
        errorMessageLabel.text = error.localizedDescription로 에러코드 구현
    - placeholder 색상 변경

    
    
* Failed to log metrics 오류가 발생하여 실행을 해도 시작하는 View가 나타나지 않았음
    - 첫 navigationController에 is initial View Controller 설정을 하지 않았음
