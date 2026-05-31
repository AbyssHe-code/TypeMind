-- =====================================================
-- MBTI 职场测评 · 数据库初始化脚本
-- 在 Supabase Dashboard → SQL Editor 中执行
-- =====================================================

-- 1. 主测题库（20题）
CREATE TABLE IF NOT EXISTS mbti_questions (
  id       SMALLINT PRIMARY KEY,
  category TEXT NOT NULL,
  question TEXT NOT NULL,
  option_a TEXT NOT NULL,
  option_b TEXT NOT NULL,
  dim_a    TEXT NOT NULL,
  dim_b    TEXT NOT NULL
);

INSERT INTO mbti_questions (id, category, question, option_a, option_b, dim_a, dim_b) VALUES
(1, 'E/I', '一个高密度的项目会议刚刚结束，接下来半小时没有任何安排。你最可能做什么？', '趁机去找几个同事聊聊，复盘一下刚才的讨论，顺便碰碰新想法', '回到自己的位置，安静地梳理一下脑子里的思路，再继续工作', 'E', 'I'),
(2, 'S/N', '你被指定负责一个此前从未接触过的项目类型。你的第一步是？', '把相关的历史案例、数据和过往经验仔细过一遍，先搞清楚以前怎么做的、踩过什么坑', '先想清楚这个项目最终要达成什么，再从终点往回推整个路径和关键节点', 'S', 'N'),
(3, 'T/F', '你带着一个实习生，他提交了一份质量明显不达标的报告。你会怎么处理？', '直接标出所有有问题的地方，说清楚哪里错了、为什么不对、具体怎么改', '先肯定他做得不错的部分，再挑一两个最关键的问题详细说——其他的留到下次再说', 'T', 'F'),
(4, 'J/P', '每天早上到了公司，你通常怎么开始这一天？', '打开任务清单，按优先级确认今天要完成什么，然后开始逐一推进', '先扫一遍邮件和消息，根据当天的状态和实际的紧急程度灵活决定先做什么', 'J', 'P'),
(5, 'E/I', '公司组织了一次自愿参与的团建午饭，你那天其实已经有点累了。你会？', '还是去——和大家一起吃饭聊天，反而会让自己恢复状态', '婉拒——一个人安静地吃顿饭、充一会儿电，下午才能更有状态', 'E', 'I'),
(6, 'S/N', '团队要做一个新产品方向的头脑风暴，你在会上更容易贡献哪类内容？', '基于已有的用户反馈和市场数据，提出有事实依据的、具体可落地的改进方向', '打破现有框架，提出"如果我们完全重新想这件事，可能会是……"这样的方向', 'S', 'N'),
(7, 'T/F', '两个同事因为项目分工产生了矛盾，都分别来找你倾诉。你的处理方式是？', '把两个人叫在一起，把分工和职责重新梳理清楚，用明确的规则来解决问题', '先分别和两个人聊，让他们把情绪说出来，再一起找共同认可的解决方案', 'T', 'F'),
(8, 'J/P', '下周要向大领导汇报一个重要方案，距今还有5天。你现在的状态是？', '核心内容已经基本成型，接下来反复打磨细节，越早定稿越踏实', '有了大框架，但还没完全动笔——感觉在某个时间点集中写，效果会更好', 'J', 'P'),
(9, 'E/I', '你刚加入一个新团队，在第一个月里，你更倾向于怎么建立关系？', '主动约同事一对一吃饭聊天，快速搞清楚每个人在做什么、团队怎么运转', '先通过工作上的自然合作慢慢了解大家，等熟起来了再进一步建立关系', 'E', 'I'),
(10, 'S/N', '一个核心业务指标连续三周下滑，你负责找出原因。你的分析起点是？', '从数据入手，把每个可能的影响因素逐一拆解，找到具体出问题的节点和时间段', '先从整体上想想——这个指标背后的逻辑结构是什么，可能是哪个层面出了系统性问题', 'S', 'N'),
(11, 'T/F', '今年绩效结果出来，你拿到了"良好"，但你认为自己的贡献值得"优秀"。你会？', '整理一份有数据支撑的清单，主动约上司谈，讨论评级标准和自己的贡献', '先站在上司的角度想想，他的评级逻辑可能是什么，再找合适的时机委婉表达看法', 'T', 'F'),
(12, 'J/P', '你的工作计划已经排好了，下午突然插入一个紧急任务。你的第一反应是？', '有点烦——立刻重新梳理今天的优先级，看哪些任务可以压缩或顺延', '无所谓——本来就不会把计划排得太满，灵活应对临时情况是工作的一部分', 'J', 'P'),
(13, 'E/I', '你经历了连续两周的高强度工作，终于迎来一个完整的周末。你最想怎么过？', '约几个朋友出来玩，或参加有人陪的活动——热闹一下才能真正放松', '一个人待着，看看书或做点喜欢的事——安静才是真正的充电', 'E', 'I'),
(14, 'S/N', '你要为明年制定个人的职业发展计划。你的规划方式更倾向于？', '把今年的情况复盘一遍，基于现有资源和已有进展，定出具体可执行的下一步', '先想清楚三到五年后自己想成为什么样的人，再反推明年需要重点做什么', 'S', 'N'),
(15, 'T/F', '你注意到团队里有人情绪明显低落，但这和他当前的工作任务没有直接关系。你会？', '只要他的工作没受影响，这属于他的个人事务，主动介入反而不太合适', '找一个合适的时机私下问问他最近还好吗——就算帮不上什么，让他知道有人在意也挺重要的', 'T', 'F'),
(16, 'J/P', '你手头同时有多个任务在推进。你更倾向于哪种工作方式？', '给每个任务分配明确的时间块，一段时间内只专注一件事，完成再切换', '在几件事之间自然地流动——哪个当下有状态、有灵感就先推进哪个', 'J', 'P'),
(17, 'E/I', '如果工作性质允许自由选择，你更喜欢哪种工作模式？', '在办公室工作——随时能和同事互动，有问题直接走过去沟通，效率更高', '远程或独立空间工作——减少打扰，能更深度地专注，思路更清晰', 'E', 'I'),
(18, 'S/N', '公司引入了一套新的工作系统，全员需要学习使用。你的学习方式是？', '跟着操作手册一步步来，先把基本功能熟练，再慢慢摸索高级功能', '先快速扫一遍整体架构，理解它的底层逻辑——逻辑通了，具体操作反而会更快上手', 'S', 'N'),
(19, 'T/F', '你和一个关系不错的同事同时竞争同一个晋升机会。你的内心状态更接近？', '竞争就是竞争，把自己该做的做好就行，个人情感不应该干扰职业决策', '有点两难——想赢，但又不希望因为这件事影响你们的关系，有些纠结', 'T', 'F'),
(20, 'J/P', '一个重要项目终于进入最后的扫尾阶段。你的状态是？', '进入"完成模式"——列出所有剩余待办，逐一核对关闭，不让任何细节落网', '有点失去动力——最有意思的阶段已经过去了，收尾工作感觉有些枯燥，需要自己推一推才能做完', 'J', 'P')
ON CONFLICT (id) DO NOTHING;

-- 2. 校准题库（5题）
CREATE TABLE IF NOT EXISTS calibration_questions (
  id       SMALLINT PRIMARY KEY,
  question TEXT NOT NULL,
  option_a TEXT NOT NULL,
  option_b TEXT NOT NULL,
  func_a   TEXT NOT NULL,
  func_b   TEXT NOT NULL
);

INSERT INTO calibration_questions (id, question, option_a, option_b, func_a, func_b) VALUES
(1, '你在处理一个复杂的职场难题，试图找到突破口。你的思维方式更接近哪个？', '脑子里会同时冒出很多"这里可以这样试试、那里如果换个角度呢……"的念头，方向越想越多，很难只锁定一个', '会安静地沉一沉，等某个方向在内心"落定"——那个感觉出现时，我会清楚知道"就是这个"，然后坚定走下去', 'Ne', 'Ni'),
(2, '你的同事提交了一个方案，请你给意见。你最在意的是什么？', '这个方案的内部逻辑是否严密——我需要彻底理解它的底层机制，弄清楚它"为什么成立"，哪怕它实际效率不是最高', '这个方案能不能真正落地——执行路径清不清晰，能产生什么具体结果，推进起来有没有阻力', 'Ti', 'Te'),
(3, '团队要做一个决定，但这个决定和你个人的判断有些出入。你的内心第一反应更接近？', '我先会想：这个决定对团队氛围和大家的感受会有什么影响——如果大家都能接受，我可以搁置自己的想法', '我先会在内心确认：这个决定和我认为"对"的是否一致——如果和我的判断相悖，我很难假装认可，即使没人发现', 'Fe', 'Fi'),
(4, '公司突然宣布从下周起全面切换一套新的协作工具，你从未用过。你的第一反应更接近？', '先动手试一试——直接上手感受它是怎么运作的，在实际操作中摸清楚比提前研究更有效率', '先回想一下以前切换工具时踩过的坑、哪些习惯迁移得顺、哪些需要特别注意——用过去的经验来判断这次怎么做', 'Se', 'Si'),
(5, '面对一个从未碰过的重要决策，你最信任的内部依据是什么？', '对"这件事最终会走向哪里"的整体直觉——我不太需要先例，我更依赖自己对走向和结果的预感', '过去经历过的相似情境——我会从自己的历史经验里找规律，来判断这次最稳妥的做法是什么', 'Ni', 'Si')
ON CONFLICT (id) DO NOTHING;

-- 3. 用户档案表
CREATE TABLE IF NOT EXISTS user_profiles (
  id                  UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  username            TEXT,
  mbti_type           TEXT,
  mbti_scores         JSONB,
  dominant_function   TEXT,
  calibration_result  TEXT,
  calibration_answers JSONB,
  assessment_source   TEXT,
  updated_at          TIMESTAMPTZ DEFAULT now()
);

-- RLS 启用
ALTER TABLE user_profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE mbti_questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE calibration_questions ENABLE ROW LEVEL SECURITY;

-- user_profiles：用户只能读写自己的行
CREATE POLICY "profiles_self_access" ON user_profiles
  USING (id = auth.uid())
  WITH CHECK (id = auth.uid());

-- 题库：所有已登录用户可读
CREATE POLICY "mbti_q_read" ON mbti_questions
  FOR SELECT USING (auth.role() = 'authenticated');

CREATE POLICY "calib_q_read" ON calibration_questions
  FOR SELECT USING (auth.role() = 'authenticated');

-- 4. 同事档案表
CREATE TABLE IF NOT EXISTS colleague_profiles (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  name       TEXT NOT NULL,
  mbti_type  TEXT DEFAULT '未知',
  role       TEXT DEFAULT '同事',
  created_at TIMESTAMPTZ DEFAULT now()
);

-- RLS 启用
ALTER TABLE colleague_profiles ENABLE ROW LEVEL SECURITY;

-- 用户只能读写自己的同事记录
CREATE POLICY "colleagues_self_access" ON colleague_profiles
  FOR ALL
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());
