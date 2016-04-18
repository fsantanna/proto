APP = {
    server   = {},
    client   = {},
    commands = {},
}

function SERVER (t)
    for k,v in pairs(t) do
        APP.server[k] = v
    end
end

function CLIENT (t)
    for k, v in pairs(t) do
        APP.client[k] = v
    end
end

function CONTENTS (t)
    local major,minor,patch = string.match(t.version,'(%d+)%.(%d+)%.(%d+)')
    t.version_t = {
        major = major,
        minor = minor,
        patch = patch,
    }
    --APP.commands[#APP.commands] = t
    APP.contents = t
end
