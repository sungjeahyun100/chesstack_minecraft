# 구현 상세 문서

## 아키텍처

### 데이터 구조

#### 보드 시스템
- `chess_square` 마커: 각 칸을 표현 (a1~h8)
  - data.file: 0-7 (a-h)
  - data.rank: 0-7 (1-8)
  - data.piece: 현재 칸의 기물 종류
  - data.color: 현재 칸의 기물 색상

#### 기물 시스템
- `chess_piece` armor_stand: 각 기물
  - Tags: chess_piece, [color], [piece_type]
  - data.piece: 기물 종류 (king, queen, rook, etc.)
  - data.color: white/black
  - data.stun_stack: 현재 스턴 스택
  - data.move_stack: 현재 이동 스택
  - data.piece_score: 기물 점수
  - data.is_royal: 로얄 피스 여부 (1b/0b)
  - data.chessembly: Chessembly 코드 (문자열)

#### 게임 상태
- `#game_state chess.game`:
  - 0: 게임 진행 중
  - 1: 일시 정지
  - 2: 게임 종료
- `#current_turn chess.game`:
  - 0: 백 턴
  - 1: 흑 턴

### 주요 시스템

#### 1. 보드 시스템
- board/setup.mcfunction: 보드 초기화
- board/place_squares.mcfunction: 64개 칸 배치
- board/render.mcfunction: 보드 시각화
- board/render_square.mcfunction: 각 칸 렌더링

#### 2. 기물 시스템
- piece/data.mcfunction: 기물 점수 테이블
- piece/calculate_stacks.mcfunction: 스택 계산
- piece/update_display.mcfunction: 기물 이름표 업데이트
- piece/definitions/: 각 기물의 Chessembly 코드

#### 3. 턴 시스템
- turn/start.mcfunction: 턴 시작
- turn/start_white.mcfunction: 백 턴 시작
- turn/start_black.mcfunction: 흑 턴 시작
- turn/decrease_stun.mcfunction: 스턴 감소
- turn/refresh_move_stack.mcfunction: 이동 스택 갱신
- turn/end.mcfunction: 턴 종료

#### 4. 이동 시스템
- movement/select_piece.mcfunction: 기물 선택
- movement/calculate_moves.mcfunction: 이동 가능한 칸 계산
- movement/pieces/: 각 기물별 행마법
- movement/capture.mcfunction: 기물 잡기 처리

#### 5. Chessembly 인터프리터
- chessembly/interpret.mcfunction: 메인 인터프리터
- chessembly/expressions/: 각 표현식 구현
  - take_move.mcfunction
  - move.mcfunction
  - take.mcfunction
  - repeat.mcfunction
  - (추가 구현 필요: jump, catch, shift, do, while, etc.)

#### 6. 행동 시스템
- action/menu.mcfunction: 행동 메뉴
- action/move.mcfunction: 이동 행동
- action/succession.mcfunction: 계승 행동
- action/disguise.mcfunction: 위장 행동
- action/stun.mcfunction: 스턴 행동

#### 7. UI 시스템
- ui/menu.mcfunction: 메인 메뉴
- ui/handle_click.mcfunction: 클릭 이벤트 처리

#### 8. 게임 관리
- game/init_players.mcfunction: 플레이어 초기화
- game/place_initial_kings.mcfunction: 초기 킹 배치
- game/check_win.mcfunction: 승리 조건 확인
- game/win_white.mcfunction: 백 승리
- game/win_black.mcfunction: 흑 승리

## 향후 개발 계획

### 단기 (핵심 기능)
1. **이동 시스템 완성**
   - 칸 클릭 감지
   - 실제 기물 이동 처리
   - 캡처 로직 완성

2. **Chessembly 인터프리터 완성**
   - 모든 표현식 구현
   - 파싱 시스템
   - 실행 엔진

3. **기물 배치 완성**
   - 칸 선택 및 배치
   - 포켓 점수 차감
   - 프로모션 가능 기물 처리

### 중기 (추가 기능)
4. **추가 기물 구현**
   - 아마존, 그라스호퍼, 나이트라이더
   - 아크비숍, 다바바, 알필
   - 퍼즈, 센타우르, 카멜, 템페스트 룩

5. **고급 행동 구현**
   - 로얄 피스 계승
   - 로얄 피스 위장
   - 스턴 부여

6. **프로모션 시스템**
   - 프로모션 가능 기물
   - 프로모션 칸 감지
   - 스턴 스택 거리 계산

### 장기 (최적화 및 UX)
7. **최적화**
   - 성능 개선
   - 메모리 사용량 최적화

8. **사용자 경험**
   - 더 나은 UI
   - 튜토리얼
   - 에러 메시지 개선

9. **확장 기능**
   - 게임 저장/불러오기
   - 리플레이 시스템
   - 커스텀 기물 추가 시스템

## 기술적 도전 과제

### 1. Chessembly 파싱
- 마인크래프트의 제한된 문자열 처리 능력
- 복잡한 표현식 파싱
- 해결 방안: 미리 컴파일된 코드 사용 또는 단순화된 표현

### 2. 좌표 시스템
- 보드 좌표와 월드 좌표 변환
- 정확한 위치 계산
- 해결 방안: 고정된 오프셋 사용 및 스코어보드 활용

### 3. 성능
- 많은 기물과 복잡한 계산
- 틱 오버헤드
- 해결 방안: 필요한 경우에만 계산, 캐싱 활용

### 4. 사용자 인터랙션
- 클릭 감지의 어려움
- 직관적인 UI 제공
- 해결 방안: tellraw 클릭 이벤트, carrot_on_a_stick 아이템 활용
