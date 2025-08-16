local uuid = require "uuid"

function add_id(tag, timestamp, record)
    local content = record["log"] or ""
    local rawLog = {
        msg_id = uuid.v4(),
        content = content,
    }
    return 1, timestamp, rawLog
end
