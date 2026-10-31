// The launcher's player-facing text, shared by the iOS launcher and the Mac app's settings window: Chinese on a Chinese system and English otherwise.
// The settings themselves come from dm/launcher.json, whose labels, notes and choice labels are English (dm/games/settings.tsv);
// translated() looks one up in this table and returns it as it is when there is no entry, so a new setting shows its English name until it is translated here.
import Foundation

enum LauncherStrings {
    static let chinese = Locale.preferredLanguages.first?.hasPrefix("zh") ?? false

    // A text written in the source: its English and its Chinese form
    static func text(_ english: String, _ cn: String) -> String { chinese ? cn : english }

    // A text from dm/launcher.json (a setting's label or note, a choice's label, a section's heading) or a launcher phrase
    static func translated(_ english: String) -> String { chinese ? (table[english] ?? english) : english }

    private static let table: [String: String] = [
        // Sections
        "Game": "游戏",
        "Controls": "操作",
        "Performance": "性能",

        // Settings
        "Frame rate": "帧率",
        "Dynamic resolution": "动态分辨率",
        "Render scale": "渲染比例",
        "Console mode": "主机模式",
        "Upscaling": "画面放大",
        "Game language": "游戏语言",
        "Display mode": "显示模式",
        "Frame-rate counter": "帧率计数器",
        "Touch feedback": "触感反馈",
        "Game audio": "游戏声音",
        "Game rumble": "游戏震动",
        "Rumble strength": "震动强度",
        "Rumble cutoff": "震动阈值",
        "Frame buffering": "帧缓冲",
        "Metal 4 pipelines": "Metal 4 管线",
        "Pipeline prebuild": "管线预构建",
        "Encode thread": "编码线程",
        "Hold frames when late": "延迟时锁帧",
        "Performance HUD": "性能浮层",

        // Notes
        "Adjusts resolution between 70% and 100% under load. Turn off to keep full resolution for the selected console mode.":
            "负载时在 70% 到 100% 之间调整分辨率。关闭后按所选主机模式保持完整分辨率。",
        "Uses more GPU time and can increase heat.": "更耗 GPU，可能增加发热。",
        "Up to one frame more display latency.": "最多增加一帧显示延迟。",
        "Keeps a pipeline archive; uses more memory.": "保留管线存档，占用更多内存。",
        "The first start waits a few minutes for it, once.": "首次启动需要等待几分钟，仅一次。",

        // Choice labels
        "30 fps": "30 帧",
        "60 fps": "60 帧",
        "Docked": "底座模式",
        "Handheld": "掌机模式",
        "Standard": "标准",
        "MetalFX": "MetalFX",
        "Window": "窗口",
        "Fullscreen": "全屏",

        // Game languages (the labels the game's control data gives; a language without an entry stays English)
        "American English": "美式英语",
        "British English": "英式英语",
        "English": "英语",
        "Japanese": "日语",
        "French": "法语",
        "Canadian French": "加拿大法语",
        "German": "德语",
        "Latin American Spanish": "拉丁美洲西班牙语",
        "Spanish": "西班牙语",
        "Italian": "意大利语",
        "Dutch": "荷兰语",
        "Russian": "俄语",
        "Traditional Chinese": "繁体中文",
        "Simplified Chinese": "简体中文",
        "Chinese": "中文",
        "Korean": "韩语",
        "Portuguese": "葡萄牙语",
        "Brazilian Portuguese": "巴西葡萄牙语",
        "Polish": "波兰语",
        "Turkish": "土耳其语",
        "Arabic": "阿拉伯语",
        "Thai": "泰语",
        "Indonesian": "印尼语",
        "Vietnamese": "越南语",

        // Launcher interface
        "Cloud saves": "云存档",
        "Off": "关闭",
        "Choose a folder in iCloud Drive…": "在 iCloud 云盘中选择文件夹…",
        "Choose a different folder…": "选择其他文件夹…",
        "Turn off cloud saves": "关闭云存档",
        "Choose a folder in iCloud Drive, and the same one in the Mac app's Cloud saves. The save comes in when the game starts and goes out after each save; a save that is replaced is kept in save-backups.":
            "在 iCloud 云盘中选择一个文件夹，并在 Mac 应用的“云存档”里选择同一个。游戏启动时会取回存档，每次存档后上传；被替换的存档会留在 save-backups 中。",
        "Saved. The game uses this folder when you press Play.": "已保存。按“开始游戏”后将使用这个文件夹。",
        "That folder could not be remembered — try a different one.": "无法记住这个文件夹，请换一个。",
        "The folder you chose before is no longer readable (the app was signed differently). Please choose it again.":
            "之前选择的文件夹已无法读取（应用签名已更换），请重新选择。",
        "Program": "程序",
        "built": "编译",
        "Version": "版本",
        "Reset to tested defaults": "恢复测试默认值",
        "Brings back all settings this game was tested with.": "恢复此游戏测试时的全部设置。",
        "Memory available": "可用内存",
        "Play": "开始游戏",
        "Set at launch": "启动时设置",
        "Set by an env file": "由环境文件设置",

        // Mac settings window
        "Advanced settings": "高级设置",
        "Show this window at launch": "启动时显示此窗口",
        "Quit": "退出",
        "Close Window": "关闭窗口",
        "Choose a folder…": "选择文件夹…",
        "Turn off": "关闭",
        "Use for Cloud Saves": "用于云存档",
        "The folder the iPhone app chose in its launcher's Cloud saves": "iPhone 应用启动器「云存档」中选择的文件夹",
        "Choose the iCloud Drive folder the iPhone app uses for this game. The save comes in when the game starts and goes out after each save; a save that is replaced is kept in the save's -backups folder.":
            "选择 iPhone 应用为此游戏使用的 iCloud 云盘文件夹。游戏启动时会取回存档，每次存档后上传；被替换的存档会留在该存档的 -backups 文件夹中。",
        "iCloud Drive": "iCloud 云盘",
    ]
}