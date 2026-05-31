# Stitch 设计提示词 — 职场人格 MBTI 职场 AI 陪伴 App

> **使用说明**：将下方"完整提示词"部分的内容完整复制粘贴至 Stitch 输入框。
> 建议在 Stitch 中逐屏生成，每次生成一个页面可获得更精细的结果。

---

## 完整提示词（英文，直接用于 Stitch）

---

### 🔹 Master Prompt（整体风格定义，每次生成前置入）

```
Design a mobile app called "职场人格" (Workplace Persona) — an AI-powered MBTI career companion for Chinese professionals aged 25–35.

**Visual Style: Clean Luminous Minimalism**
- Overall mood: Light, intelligent, focused — like a high-end research workspace or a curated digital studio. Sophisticated but not sterile. Trustworthy but not corporate.
- Background: Soft blue-tinted white (#f0f4ff). Not pure white — carry a very subtle blue atmospheric depth.
- Surface layers: Cards and panels use slightly elevated light surfaces (#dfe8ff), with barely-visible borders that carry a faint glow (1px border, color #c5d3f0 with 60% opacity).
- Accent color: Brand blue (#2665fd) as the primary interactive color. Used for CTAs, active states, and highlighted text. Occasionally appears with a soft outer glow effect.
- AI accent: Soft violet-purple (#7C3AED) specifically for AI-related elements — chat bubbles, AI badges, cognitive function indicators.
- Highlight color: Muted teal (#0D9488) for positive states, confirmations, and actionable advice sections.
- Text hierarchy:
  - Primary text: Deep navy #1e2a4a (never pure black — keep it slightly blue-toned)
  - Secondary text: Slate #475569
  - Tertiary / labels: #8898b4
- Typography: Use a clean geometric sans-serif (SF Pro Display or similar). Large type feels authoritative. Small type is tight and precise.
- Effects: Subtle radial gradient overlays on key cards (very faint blue glow from corner). Thin separator lines instead of heavy dividers. No drop shadows — use layered light surfaces and borders instead.
- Icons: Thin outline style, 1.5px stroke weight. Slightly vivid on active states.
- No gradients on backgrounds — keep backgrounds flat light. Reserve gradients for accent elements and type cards only.
- The overall feeling: You're looking at a clear, luminous intelligence dashboard. Clean, precise, and crisply focused.

Platform: iOS mobile app, iPhone 14 Pro size (393×852pt). Use standard iOS safe areas and navigation patterns.
Language: Chinese (Simplified). All UI text in Chinese.
```

---

### 🔹 Screen 1 — 首页（Home）

```
[Use the master style above]

Design the Home screen for 职场人格 app.

**Layout:**
- Status bar at top (dark, minimal)
- Top section: Greeting header
  - Small label: "你好，欢迎回来" in secondary text color
  - Large bold title: "遇到职场难题了？" in off-white, 28pt
  - Subtitle: "描述情况，AI 帮你读懂职场关系" in secondary color, 14pt
- Two CTA cards side by side (below the header, 16pt gap):
  - LEFT card (primary): Brand blue background (#2665fd), slight inner glow. Icon: 📝 (thin outline). Title: "开始测评" bold 16pt white. Subtitle: "20 题职场情境测评" 12pt, 80% white.
  - RIGHT card (secondary): Light surface card (#dfe8ff) with 1px blue border. Icon: ✓ in indigo. Title: "已知类型" 16pt off-white. Subtitle: "直接进入 AI 陪伴" 12pt secondary.
  - Both cards: rounded corners 16pt, equal width, height ~120pt
- Section label below cards: "选择一个场景，立即开始" — all caps, 10pt, letter-spaced, tertiary color
- Scenario grid: 2×3 grid of scenario cards (16pt gap between cards)
  - Each card: light surface (#dfe8ff), 14pt rounded corners, 1px border (#c5d3f0)
  - Card content: Large emoji icon top-left (20pt), bold title 13pt off-white, description 11pt secondary text (2 lines max)
  - On active/pressed: border glows faint indigo, background slightly lighter
  - Six scenarios:
    1. ⚡ 刚刚发生了一件事 / 情绪还热的时候先说出来
    2. 🤝 和某人总是谈不拢 / AI 帮你读懂他的行为逻辑
    3. 🗣️ 不知道怎么开口 / 有话想说但不知怎么表达
    4. 😩 在这个环境里很耗 / 找到你与环境的适配问题
    5. 📣 想推动一件事推不动 / 项目卡壳、想法被忽视
    6. 🔄 反复发生同一类问题 / 找到你的行为模式
- Bottom navigation bar: 4 tabs — 首页 (active, indigo), 测评, AI 陪伴, 我的. Thin outline icons. Dark background, no border.
```

---

### 🔹 Screen 2 — 测评页（MBTI Test）

```
[Use the master style above]

Design the MBTI Test question screen for 职场人格 app. This is a full-screen single-question experience.

**Layout:**
- Top: Thin progress bar (full width, 2pt height). Filled portion in blue (#2665fd), unfilled in light (#c5d3f0). No percentage text — just the bar. Below the bar: small text "第 3 题 / 20 题" right-aligned, 12pt, tertiary color.
- Back button: top-left, thin left chevron icon, no label, secondary color.
- Question area (vertically centered on screen):
  - Category label above question: small pill badge — dark surface with thin indigo border, text "能量来源" in indigo, 10pt, all-caps. Left-aligned.
  - Question text: Large, 22pt, semi-bold, off-white, line-height 1.5, max-width 90% of screen. Left-aligned.
    Example question: "一个高密度的项目会议刚结束，接下来半小时没有安排。你最可能做什么？"
- Two answer option cards (stacked vertically, 12pt gap):
  - Each card: full-width, light surface (#dfe8ff), 16pt rounded corners, 1.5px border (#c5d3f0), padding 20pt
  - Left side: Letter badge — circular, 32pt diameter, dark background with secondary text "A" or "B", 14pt medium weight
  - Right side: Option text, 15pt, off-white, line-height 1.6
  - Option A text: "趁机去找几个同事聊聊，复盘一下刚才的讨论，顺便碰碰新想法"
  - Option B text: "回到自己的位置，安静地梳理一下脑子里的思路，再继续工作"
  - Selected state: border becomes indigo with subtle glow, letter badge fills with blue, card background shifts to light blue (#e6edff)
- Bottom: "下一题" button — full-width, 52pt height, 16pt rounded corners. Filled indigo when an option is selected. Grayed out (#e0e8f5, text tertiary) when no option selected.
- No bottom nav bar on this screen — full-screen focus mode.
```

---

### 🔹 Screen 3 — 测评结果页（Results）

```
[Use the master style above]

Design the MBTI Test Results screen for 职场人格 app.

**Layout:**
- Full scrollable screen.
- Top hero card (full-width, no side margins):
  - Background: Light gradient — left side light blue (#dce8ff), right side light purple (#e8e0ff). Soft and airy. Slight radial glow in the center.
  - Type code: "INTJ" — massive, 64pt, weight 900, off-white, slight letter-spacing. Left-aligned with padding.
  - Below type code: Type name "战略家" — 22pt, semi-bold, off-white.
  - Tagline below: "你比别人更早看见终点，却常常一个人走在路上。" — 13pt, secondary color, italic, max 2 lines.
  - Small decorative element: thin horizontal line 40pt wide, indigo, below the tagline.
  - Height: ~200pt
- Section: "维度分布" — section label (all caps, 10pt, tertiary, 16pt top padding)
  - 4 dimension bars in a card (dark surface, 16pt rounded corners, 16pt padding):
    - Each bar: left label (e.g., "外向 E"), right label ("内向 I"), with active side in indigo bold
    - Bar: full-width, 4pt height, light track (#c5d3f0), filled portion in blue
    - Percentage: small text below right, tertiary color
    - 4 bars: E/I, S/N, T/F, J/P with thin separator lines between
- Section: "认知功能栈" — section label
  - Card with 4 cognitive function rows:
    - Each row: function code badge (e.g., "Ni") + rank label ("主导") + thin bar + description text
    - Badges: pill shape, each rank has distinct color:
      - 主导 Ni: blue pill (#dce8ff bg, #2665fd text)
      - 辅助 Te: purple pill (#f3eeff bg, #7C3AED text)
      - 第三 Fi: light teal pill (#e0f7f5 bg, #0D9488 text)
      - 劣势 Se: light amber pill (#fffaeb bg, #b45309 text)
    - Bar lengths: 90%, 70%, 48%, 25% respectively, colored to match badge
    - Description: 12pt, secondary color, right side of row
- Section: "职场特质" — section label
  - Two sub-sections in one card:
    - "优势场景": row of pill tags — light blue bg (#dce8ff), blue text — "战略规划" "独立思考" "长期执行力"
    - Thin divider line
    - "压力下的变化": body text in secondary color, 13pt, line-height 1.6
- Bottom CTA: "开始 AI 职场陪伴 →" — full-width button, 56pt height, indigo fill, off-white bold text, 16pt rounded corners. Below it: very small text "AI 会记住你的类型，越用越懂你" in tertiary color, centered.
- Bottom navigation bar visible.
```

---

### 🔹 Screen 4 — AI 对话主页（Chat Main）

```
[Use the master style above]

Design the AI Chat screen for 职场人格 app. This is the core screen of the app.

**Layout:**
- Top navigation bar (dark, no border):
  - Left: Back chevron (thin, secondary color)
  - Center: "AI 职场陪伴" — 16pt semi-bold, off-white. Below in smaller text: "⚡ 刚刚发生了一件事" in indigo, 12pt
  - Right: User's type badge — small pill "INTJ" in blue bg (#dce8ff), blue text (#2665fd), 11pt bold
- Chat area (scrollable, full width):
  - Background: same light as app bg (#f0f4ff) — feels like infinite depth
  - Scenario tag at top of conversation: centered pill badge — "⚡ 刚刚发生了一件事", dark surface with indigo border, indigo text
  - AI Welcome message card (NOT a simple bubble):
    - Slightly wider than user bubbles
    - Light surface card (#dfe8ff), 1px border, 14pt rounded corners
    - Small AI avatar top-left: 28pt circle, deep indigo-to-purple gradient, "AI" text in white, 11pt
    - Message text: 14pt, secondary-to-primary color, line-height 1.7
    - Text example: "你好 👋 我记得你是 INTJ · 战略家。\n有件事刚刚发生？把情况说给我——越具体越好。是和谁之间的事？"
  - User message bubble: right-aligned, blue fill (#2665fd), dark text, 14pt, 16pt rounded corners (full round on all sides except top-right which is slightly flatter — 4pt)
  - AI structured response (the key differentiator — show this state):
    - Three stacked sections, no outer card border, just the three sections together:
      - Section 1 "根因分析": left 3pt border in blue. Background very light indigo (#eef1ff). Label: "🔍 根因分析 · 认知功能层" in indigo, 10pt all-caps bold. Content text in secondary color, 13pt.
      - Section 2 "对方视角": left 3pt border in purple (#7C3AED). Background very light purple (#f3eeff). Label: "👁 对方视角解读" in purple, 10pt. Content text secondary.
      - Section 3 "可操作建议": left 3pt border in teal (#0D9488). Background very light teal (#e0f7f5). Label: "✅ 可操作建议" in teal, 10pt. Content: 3 bullet items, each starting with "→" in teal, 13pt text.
    - Above these sections: inference badge — "🔮 推测对方类型：ESTJ · 总经理（根据描述推断）" — small pill, light amber bg (#fffaeb), amber border, amber text, left-aligned
- Memory indicator (thin strip above input bar):
  - Very subtle — dark surface, 8pt height area
  - "🧠 AI 已记录：" in tertiary, followed by two small chips: "我的类型: INTJ" (indigo chip) and "同事: ESTJ 推断" (amber chip, slightly glowing to indicate new)
- Bottom input area:
  - Light background, thin top separator line (1px, #c5d3f0)
  - Input field: light surface (#dfe8ff), 1.5px border (#c5d3f0), 12pt rounded corners, placeholder "描述你的情况……" in tertiary color. Left padding 14pt.
  - Send button: right of input, 44pt circle, indigo fill. Arrow up icon (thin, white). Glows very slightly.
  - No bottom nav bar on this screen — full focus on conversation.
```

---

### 🔹 Screen 5 — AI 对话（输入状态）

```
[Use the master style above]

Design the AI Chat screen in the active input state for 职场人格 app.

Same layout as Screen 4 (Chat Main), but show:
- Keyboard is up, input area rises with keyboard
- Input field is focused: border changes to blue (#2665fd) with very faint blue glow
- Input field contains typed text: "我和我的同事小王在这个项目里总是谈不拢，他每次开会都..." — text in off-white, 14pt
- The chat area scrolls up to show conversation history
- Send button is active (full indigo, slightly brighter)
- Show the "AI 正在输入…" typing indicator:
  - Left-aligned, below last AI message
  - Small AI avatar (28pt gradient circle) + three animated dots in a dark card (pulse animation implied — show mid-pulse state with middle dot slightly elevated)
  - Card style matches AI message card
- The keyboard: standard iOS dark keyboard
```

---

### 🔹 Screen 6 — 我的（Profile / Memory）

```
[Use the master style above]

Design the Profile screen ("我的") for 职场人格 app.

**Layout:**
- Top section (no card, just content with top padding):
  - Large type badge: "INTJ" in massive blue text (48pt, 900 weight), left-aligned
  - Below: "战略家" 18pt semi-bold off-white
  - Below: "你比别人更早看见终点，却常常一个人走在路上。" 13pt secondary, max 2 lines
  - To the right of the type: a subtle circular graphic — concentric rings in very dark indigo lines, like a target or orbital diagram, very faint (decorative, not functional)
- Divider line: thin full-width 1px (#c5d3f0)
- Section "AI 对我的了解" — section label:
  - Card (dark surface, 14pt rounded corners):
    - Row item style: left icon (thin outline, 16pt, secondary color) + label + right content or arrow
    - Row 1: 🔄 "反复遇到的困境" → "被忽视 · 沟通不畅"
    - Row 2: 👥 "已记录的人" → "3 人"
    - Row 3: 💬 "AI 对话次数" → "12 次"
    - Row 4: 📅 "上次使用" → "今天"
    - Each row separated by thin 1px line
- Section "我的同事档案" — section label:
  - Horizontal scroll row of colleague chips (show 2.5 chips to indicate scrollability):
    - Each chip: dark surface card, 12pt rounded corners, ~130pt wide
    - Chip content: Name "小王" (14pt bold off-white) + Type badge "ESTJ" (small indigo pill) + relationship "项目同事" (12pt secondary) + small note "下次沟通：先确认目标对齐" (11pt tertiary, max 1 line)
    - Right edge of third chip partially visible (scroll indicator)
  - "添加同事" button: dashed border card, same size as chips, center-aligned "＋ 添加" in secondary color
- Section "历史对话" — section label:
  - 2 conversation history items (list style):
    - Each item: left scenario icon (emoji, 20pt) + center (scenario name 14pt off-white + date 12pt tertiary) + right chevron (thin, tertiary)
    - Item 1: ⚡ 刚刚发生了一件事 · 今天
    - Item 2: 🤝 和某人总是谈不拢 · 3天前
    - Thin separator lines between items
- Bottom navigation bar: 我的 tab is active (indigo icon + indigo label)
```

---

## 补充设计规范（Design Tokens）

```
Color Palette:
- Background:       #f0f4ff
- Surface L1:       #e8eeff
- Surface L2:       #dfe8ff
- Surface L3:       #d5e0ff
- Border default:   #c5d3f0
- Border glow:      #a8b8e8 (for hover/active states)

- Blue primary:     #2665fd
- Blue dark:        #1a4fcc
- Blue muted:       #dce8ff
- Blue text:        #2665fd

- Purple AI:        #7C3AED
- Purple light:     #f3eeff
- Purple text:      #7C3AED

- Teal action:      #0D9488
- Teal light:       #e0f7f5
- Teal text:        #0D9488

- Amber warning:    #D97706
- Amber light:      #fffaeb
- Amber text:       #b45309

- Text primary:     #1e2a4a
- Text secondary:   #475569
- Text tertiary:    #8898b4

Typography:
- Display:   SF Pro Display, 700–900 weight
- Body:      SF Pro Text, 400–600 weight
- Mono:      SF Mono (for type codes like INTJ)
- Base size: 14pt, scale: 10/11/12/13/14/16/18/22/28/48/64

Spacing:
- Screen horizontal padding: 16pt
- Card padding:              16–20pt
- Section gap:               24pt
- Item gap:                  12pt
- Corner radius - large:     16pt
- Corner radius - medium:    12pt
- Corner radius - small:     8pt
- Corner radius - pill:      100pt

Component Rules:
- All borders: 1–1.5px, no heavy borders
- No drop shadows (use surface layering instead)
- Glow effects: only on active states, very subtle
- Dividers: 1px, color #c5d3f0, never bold
- Icons: 24pt tap target, 18pt visual size, 1.5px stroke
```

---

## 逐屏提示策略建议

在 Stitch 中使用时，建议按以下顺序生成：

1. **首先**：粘贴 Master Prompt（整体风格定义）+ Screen 1（首页），建立整体视觉基调
2. **确认风格后**：依次生成 Screen 2（测评）→ Screen 3（结果）→ Screen 4（AI 对话主页）→ Screen 5（输入状态）→ Screen 6（个人档案）
3. **每次生成**：在 Screen 提示词前加上 `[Use the master style above]` 保持一致性
4. **如需调整**：追加指令如 `Make the background even darker`, `Increase the glow effect on active cards`, `Make the indigo more saturated`

---

*版本：v1.0 | 对应产品版本：v4.0 | 日期：2026-05-28*
