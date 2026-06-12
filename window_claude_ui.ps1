# 清屏
Clear-Host

# 启用控制台对 ANSI/RGB 转义序列的支持
$ESC = "$([char]27)"

# 定义颜色常量 (精准提取自参考图的 RGB 色值和样式)
$P       = "$ESC[38;2;232;126;124m"       # 珊瑚粉
$P_BOLD  = "$ESC[1;38;2;232;126;124m"     # 粗体珊瑚粉
$G       = "$ESC[38;2;130;130;130m"       # 灰色
$G_ITAL  = "$ESC[3;38;2;130;130;130m"     # 斜体灰色
$W_BOLD  = "$ESC[1;38;2;255;255;255m"     # 粗体纯白
$LINE    = "$ESC[38;2;60;60;60m"          # 深灰色分割线
$R       = "$ESC[0m"                      # 重置颜色

$COLOR_PINK  = $P
$COLOR_GRAY  = $G
$COLOR_WHITE = $W_BOLD
$COLOR_RESET = $R

# 1. 顶部报错与全宽分割线 (靠右对齐)
Write-Output "                                                                                                                     ${P}✘ Auto-update failed · Run ${P_BOLD}/doctor${R}"
Write-Output "${LINE}─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────${R}"

# 2. 终端提示符与快捷键提示
Write-Output "❯"
Write-Output "  ${G}? for shortcuts · ← for agents${R}`n"

# 3. 主面板 (总宽度 121 字符)
# 顶部边框
Write-Output "${P}┌── Claude Code v2.1.169 ───────────────────────────────────────────────────────────────────────────────────────────────┐${R}"

# 第 1 行：Welcome back! 与 Tips 标题
Write-Output "${P}│${R}                  ${W_BOLD}Welcome back!${R}                  ${P}│${R} ${P}Tips for getting started${R}                                                              ${P}│${R}"

# 第 2 行：空白 与 Tips 内容
Write-Output "${P}│${R}                                              ${P}│${R} ${G}Ask Claude to create a new app or clone a repository${R}                  ${P}│${R}"

# ---- 小怪兽渲染区域 ----
# 第 3 行：平平的头顶
Write-Output "${P}│${R}                  ${COLOR_PINK}██████████████${COLOR_RESET}                  ${P}│${R}                                                                              ${P}│${R}"

# 第 4 行：身体与眼睛
Write-Output "${P}│${R}                  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██████${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}                  ${P}│${R}                                                                              ${P}│${R}"

# 第 5 行：张开的双手 + 身体
Write-Output "${P}│${R}                ${COLOR_PINK}██████████████████${COLOR_RESET}                ${P}│${R}                                                                              ${P}│${R}"

# 第 6 行：平齐的下半身
Write-Output "${P}│${R}                  ${COLOR_PINK}██████████████${COLOR_RESET}                  ${P}│${R}                                                                              ${P}│${R}"

# 第 7 行：4条小短腿
Write-Output "${P}│${R}                  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}  ${COLOR_PINK}██${COLOR_RESET}                  ${P}│${R}                                                                              ${P}│${R}"
# ------------------------

# 第 8 行：模型计费状态 与 更多日志提示
Write-Output "${P}│${R}    ${G}deepseek-v4-pro · API Usage Billing${R}   ${P}│${R} ${G_ITAL}/release-notes for more${R}                                                     ${P}│${R}"

# 第 9 行：当前工作目录
Write-Output "${P}│${R}           ${G}/Users/Shared/workdir/cc${R}           ${P}│${R}                                                                          ${P}│${R}"

# 底部边框
Write-Output "${P}└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘${R}"

# 4. 底部新版本通告提示
Write-Output "`n${P}│ Opus 4.8 is now available!${R} · ${G}/model to switch${R}`n"
