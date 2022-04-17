local fcitx = require("fcitx")
local _CHINESE_DIGITS = {
    [0] = "日",
    [1] = "一",
    [2] = "二",
    [3] = "三",
    [4] = "四",
    [5] = "五",
    [6] = "六"
}

function date_translator(input)
    if fcitx.currentInputMethod() ~= "flypy" then
        return nil
    end

    if input == "(当前日期中文)" then
        return os.date("%Y年%m月%d日")
    end

    if input == "(当前日期)" then
        return os.date("%Y-%m-%d")
    end

    if input == "(当前时间周)" then
        return os.date("%H:%M 周") .. _CHINESE_DIGITS[tonumber(os.date("%w"))]
    end

    if input == "(当前时间中文)" then
        return os.date("%H点%M分")
    end

    if input == "(当前时间)" then
        return os.date("%H:%M:%S")
    end
end

fcitx.addConverter("date_translator")

