local fcitx = require("fcitx")

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

    if input == "(当前时间)" then
        return os.date("%H:%M")
    end
end

fcitx.addConverter("date_translator")

