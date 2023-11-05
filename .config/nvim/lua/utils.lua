local M = {}

function M.get_full_line(line, line_length)
    local empty_spaces = line_length - #line
    for _ = 1, empty_spaces, 1 do
        line = line .. ' '
    end
    return line
end

function M.break_text_at_whitespace(text, line_length)
    local lines = {}
    local current_line = ''

    for word in text:gmatch('%S+') do
        if #current_line + #word + 1 <= line_length then
            if #current_line > 0 then
                current_line = current_line .. ' '
            end
            current_line = current_line .. word
        else
            table.insert(lines, M.get_full_line(current_line, line_length))
            current_line = word
        end
    end

    if #current_line > 0 then
        table.insert(lines, M.get_full_line(current_line, line_length))
    end

    return lines
end

return M
