#!/bin/bash

# 清屏
clear

# 定义颜色常量 (精准提取 image_b2aef8.png 中的珊瑚粉和灰色)
COLOR_PINK="\033[38;2;232;126;124m"
COLOR_GRAY="\033[38;2;130;130;130m"
COLOR_WHITE="\033[38;2;255;255;255m"
COLOR_RESET="\033[0m"

# 顶部欢迎语 (居中对齐)
echo ""
echo -e "                   ${COLOR_WHITE}\033[1mWelcome back!${COLOR_RESET}"
echo ""

# ===== 核心：完美的小怪兽 (1个像素 = 2个终端色块 █) =====

# 第 1 行：平平的头顶 (7个像素宽)
echo -e "                  ${COLOR_PINK}██████████████${COLOR_RESET}"

# 第 2 行：身体与眼睛 (1像素实心 + 1像素镂空眼 + 3像素实心眉心 + 1像素镂空眼 + 1像素实心)
echo -e "                  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██████${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}"

# 第 3 行：张开的双手 + 身体 (1像素手 + 7像素身体 + 1像素手，共9像素宽)
echo -e "                ${COLOR_PINK}██████████████████${COLOR_RESET}"

# 第 4 行：平齐的下半身 (7个像素宽)
echo -e "                  ${COLOR_PINK}██████████████${COLOR_RESET}"

# 第 5 行：4条小短腿 (腿与空白交替：腿、空、腿、空、腿、空、腿)
echo -e "                  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}"

# ===============================================================

# 底部系统状态 (与上面居中对齐)
echo ""
echo -e "      ${COLOR_GRAY}deepseek-v4-pro[1m] · API Usage Billing${COLOR_RESET}"
echo -e "             ${COLOR_GRAY}C:\Users\Shared\Workspace\GrayCode${COLOR_RESET}"
echo ""

#!/bin/bash

# 清屏
clear

# 定义颜色常量 (精确提取自参考图的 RGB 色值和样式)
P="\033[38;2;232;126;124m"       # 珊瑚粉
P_BOLD="\033[1;38;2;232;126;124m" # 粗体珊瑚粉
G="\033[38;2;130;130;130m"       # 灰色
G_ITALIC="\033[3;38;2;130;130;130m" # 斜体灰色
W_BOLD="\033[1;38;2;255;255;255m" # 粗体纯白
LINE="\033[38;2;60;60;60m"       # 深灰色分割线
R="\033[0m"                      # 重置颜色
COLOR_PINK="\033[38;2;232;126;124m"
COLOR_GRAY="\033[38;2;130;130;130m"
COLOR_WHITE="\033[38;2;255;255;255m"
COLOR_RESET="\033[0m"

# 1. 顶部报错与全宽分割线 (靠右对齐)
echo "                                                                                    ${P}✘ Auto-update failed · Run ${P_BOLD}/doctor${R}"
echo "${LINE}─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────${R}"

# 2. 终端提示符与快捷键提示
echo "❯"
echo "  ${G}? for shortcuts · ← for agents${R}\n"

# 3. 主面板 (总宽度 121 字符，左栏 44，右栏 74)
# 顶部边框
echo "${P}┌── Claude Code v2.1.169 ───────────────────────────────────────────────────────────────────────────────────────────────┐${R}"

# 第 1 行：Welcome back! 与 Tips 标题
printf "${P}│${R}                 ${W_BOLD}Welcome back!${R}                  ${P}│${R} ${P}Tips for getting started${R}                                              ${P}│${R}\n"

# 第 2 行：空白 与 Tips 内容
printf "${P}│${R}                                              ${P}│${R} ${G}Ask Claude to create a new app or clone a repository${R}                  ${P}│${R}\n"

# 第 1 行：平平的头顶 (7个像素宽)
echo "                  ${COLOR_PINK}██████████████${COLOR_RESET}"

# 第 2 行：身体与眼睛 (1像素实心 + 1像素镂空眼 + 3像素实心眉心 + 1像素镂空眼 + 1像素实心)
echo "                  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██████${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}"

# 第 3 行：张开的双手 + 身体 (1像素手 + 7像素身体 + 1像素手，共9像素宽)
echo "                ${COLOR_PINK}██████████████████${COLOR_RESET}"

# 第 4 行：平齐的下半身 (7个像素宽)
echo "                  ${COLOR_PINK}██████████████${COLOR_RESET}"

# 第 5 行：4条小短腿 (腿与空白交替：腿、空、腿、空、腿、空、腿)
echo "                  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}"

# ===============================================================

echo ""
echo ""

# 第 8 行：模型计费状态 与 更多日志提示 (斜体)
printf "${P}│${R}    ${G}deepseek-v4-pro[1m] · API Usage Billing${R}   ${P}│${R} ${G_ITALIC}/release-notes for more${R}                                                    ${P}│${R}\n"

# 第 9 行：当前工作目录 与 右侧空白收尾
printf "${P}│${R}          ${G}/Users/Shared/workdir/cc${R}          ${P}│${R}                                                                          ${P}│${R}\n"

# 底部边框 (119个短横)
echo "${P}└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘${R}"

# 4. 底部新版本通告提示
echo "\n${P}│ Opus 4.8 is now available!${R} · ${G}/model to switch${R}\n"
