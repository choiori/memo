boxmodel
- inline에서는 width와 height값이 무시된다
boxsize
- 엘리먼트 크기라고 하면 테두리 바깥쪽 크기 x , 컨텐트영역을 width값으로지정, 
- 보더값 box-sizing:content-box -> 컨텐트의 크기를 기준으로 width와 height값 지정
- box-sizing:border-box -> 보더의 경계의 크기가 동일해짐

* 모든 태그 - 선택자

마진겹침
- 마진겹침현상: 위에 있는 태그와 아래 있는 태그의 마진 값 중에 더 큰 값이 두 개의 태그사이의 간격이 됨
2. 부모자식엘리먼트 모두 마진값이 있는 경우 발생할 수 있는 겹침현상: 부모태그가 시각적으로 아무런 효과 없는
투명한 색이 되면 자식 태그와 부모 태그의 마진 값이 큰 쪽의 마진값으로 합쳐지는 결과
3. 어떤 태그가 투명한 상태가 된다면 마진탑과 바텀 숫자중에 큰 값이 마진값이 됨

**layout : 테이블, 포지션, float, flex
display:flex;
- <container>
  <item></item>
  <item></item>
  </container>
  
  container
  1. display:밖의 컨테이너 값에 flex 속성값을 주기
  2. flex-direction: row(기본값: 행), row-reverse, column, column-reverse
  3. flex-wrap
  4. flex-flow
  5. justify-content
  6. align-items
  7. align-content
  
  item
  1. order
  2. flex-grow: 아이템의 부피를 컨테이너안에서 조정ㅡ (가본값) 0, 1(남아있는 여백공간이 각각의 엘리먼트에 엔빵됨)
  3. flex-shrink: 0이면 고통분담 x, 1,2 ~ 작아지는 속도도 조정
  4. flex-basis: 플렉스의 방향에 해당하는 엘리머느의 크기를 지정하는 것
  5. flex
  6. align-self
  
  .item:nth-child(2) - 클래스값이 아이템인 엘리먼트 중에 두번째 등장하는 것
  화면 줄이면 여백 없어지는 순간이 있는데 flex는 화면의 아이템이 작아짐.
  
  grid vs flex
  flex(한 방향 레이아웃 시스템-1차원)
  grid(두 방향 가로-세로 레이아웃 시스템-2차원) - 더 복합적인 레이아웃 표현 가능
  
  컨테이너 vs 아이템
  컨테이너가 그리드의 영향 받는 전체공간이고 설정된 속성에 따라서 각각의 아이템들이 어떤 형태로 배치되는 것
  
  display: grid;
  - 그리드 컨테이너 : 그리드의 전체 영역
  - 그리드 아이템 : 그리드 규칙에 의해 배치되는 컨테이너의 자식 요소들
  - 그리드 트랙 : 그리드의 행 또는 열
  - 그리드 셀 : 그리드 아이템 하나가 들어가는 "가상의 칸(틀)"
  - 그리드 라인 : 그리드 셀을 구분하는 선
  - 그리드 번호 : 그리드 라인의 각 번호
  - 그리드 갭 : 그리드 셀 사이의 간격
  - 그리드 영역 : 그리드 라인으로 둘러싸인 사각형 영역, 그리드 셀의 집합

1. 컨테이너
  grid 컨테이너에 display: grid; 적용
  아이템들이 block 요소라면 한 줄 만으로는 변화 없음
<-> inline-grid란?

- 그리드 형태 정의 : grid-template-rows/ grid-template-columns
    고정크기 , 가변크기, 섞어쓰기 가능
  
ex) grid-template-columns: 200px 200px 500px; : column을 200px, 200px, 500px로 만듦
grid-template-columns: 1fr 1fr 1fr; : 1:1:1 비율인 3개의 column 생성
*fr=fraction 숫자 비율대로 트랙의 크기를 나눔

- repeat 함수
  반복되는 값 자동으로 처리할 수 있는 함수
  repeat(반복횟수, 반복값)
 
 ex) repeat(5, 1fr) 1fr 1fr 1fr 1fr 1fr와 동일함
 
 - minmax 함수
  최소 최대값 지정할 수 있는 함수
  
 ex) minmax(100px, auto) 최소한 100px, 최대 자동으로 늘어나게됨
 
 - auto-fill / auto-fit
  column의 개수 미리 정하지 않고 설정된 너비가 허용하는 한 최대한 셀을 채움
  
  .contain
 
 
 
