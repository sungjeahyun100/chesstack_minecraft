# 기물 착수 시스템 구현 완료

## 구현된 기능

### 1. 기물 선택 시스템
- `/function chess:piece/place/menu` - 기물 배치 메뉴
- 5가지 기물 타입 선택 가능 (폰, 나이트, 비숍, 룩, 퀸)
- 각 기물별 비용 및 스턴 스택 자동 설정

### 2. 칸 감지 시스템
- 레이캐스트 기반 칸 감지
- 당근 낚싯대 우클릭으로 칸 선택
- 최대 15블록 범위 탐색
- 3x3 영역에서 정확한 칸 매칭

### 3. 배치 검증 시스템
- 빈 칸 여부 확인
- 진영별 영역 제한 (백: 1-4랭크, 흑: 5-8랭크)
- 포켓 점수 충족 여부 확인
- 명확한 에러 메시지 제공

### 4. 기물 생성 시스템
- 각 기물별 spawn 함수
- 자동 스턴 스택 부여
- 칸 데이터 업데이트
- 시각/청각 피드백 (파티클, 사운드)

### 5. UX 개선
- 배치 모드 시각적 힌트 (파티클)
- 스니크로 배치 취소
- 배치 완료 시 효과음
- 단계별 안내 메시지

## 파일 구조

```
data/chess/function/
├── init.mcfunction (스코어보드 추가)
├── start.mcfunction (당근 낚싯대 제공)
├── tick_game.mcfunction (배치 모드 힌트, 취소 감지)
├── ui/
│   └── handle_click.mcfunction (클릭 처리)
└── piece/
    └── place/
        ├── menu.mcfunction - 기물 선택 메뉴
        ├── select_pawn.mcfunction - 폰 선택
        ├── select_knight.mcfunction - 나이트 선택
        ├── select_bishop.mcfunction - 비숍 선택
        ├── select_rook.mcfunction - 룩 선택
        ├── select_queen.mcfunction - 퀸 선택
        ├── detect_square.mcfunction - 레이캐스트 시작
        ├── raycast_step.mcfunction - 레이캐스트 단계
        ├── place_piece.mcfunction - 배치 검증 및 실행
        ├── spawn_pawn.mcfunction - 폰 생성
        ├── spawn_knight.mcfunction - 나이트 생성
        ├── spawn_bishop.mcfunction - 비숍 생성
        ├── spawn_rook.mcfunction - 룩 생성
        ├── spawn_queen.mcfunction - 퀸 생성
        ├── clear_placing_mode.mcfunction - 배치 모드 종료
        └── cancel.mcfunction - 배치 취소
```

## 사용 흐름

1. **게임 시작**
   ```
   /function chess:start
   ```
   - 플레이어에게 당근 낚싯대 제공

2. **착수 메뉴 열기**
   ```
   /function chess:action/menu
   ```
   - `[착수]` 클릭

3. **기물 선택**
   - 원하는 기물 클릭
   - `placing` 태그 및 비용 설정

4. **칸 조준 및 배치**
   - 당근 낚싯대 우클릭
   - 레이캐스트로 칸 탐색
   - 검증 통과 시 기물 생성

5. **배치 완료 또는 취소**
   - 성공: 포켓 차감, 배치 모드 종료
   - 취소: Shift 키로 언제든 취소 가능

## 스코어보드

- `chess.placing_cost` - 선택한 기물의 비용
- `chess.sneak` - 스니크 감지 (배치 취소용)
- `chess.click` - 클릭 감지 (기존)
- `chess.pocket` - 포켓 점수 (기존)

## 테스트 방법

### 기본 테스트
1. `/reload` - 데이터팩 리로드
2. `/function chess:start` - 게임 시작
3. 당근 낚싯대 확인
4. `/function chess:action/menu` - 행동 메뉴
5. `[착수]` 클릭
6. 기물 선택 (예: 폰)
7. 당근 낚싯대 우클릭하여 칸 조준
8. 배치 확인

### 검증 테스트
- **빈 칸 검증**: 같은 칸에 두 번 배치 시도
- **영역 검증**: 백으로 5랭크 이상에 배치 시도
- **포켓 검증**: 포켓 점수 부족 시 배치 시도
- **취소 기능**: Shift 키로 배치 취소

### 스턴 스택 확인
- 배치 후 기물의 CustomName 확인
- 폰은 1스택, 퀸은 9스택이어야 함

## 알려진 제한사항

1. **레이캐스트 정확도**
   - 매우 먼 거리나 특이한 각도에서는 정확도 저하 가능
   - 최대 15블록 제한

2. **다중 플레이어**
   - `@p[tag=placing]` 사용으로 동시에 한 명만 배치 가능
   - 추후 개선 가능

3. **클릭 도구**
   - 당근 낚싯대가 필수
   - 분실 시 `/give` 명령으로 재지급 필요

## 향후 개선 사항

1. **시각적 피드백 강화**
   - 배치 가능한 칸 하이라이트
   - 배치 불가능한 칸 표시

2. **퀵 배치 모드**
   - 연속으로 여러 기물 배치

3. **포켓 프리셋**
   - 미리 정의된 기물 조합

4. **배치 히스토리**
   - 마지막 배치 취소 기능
