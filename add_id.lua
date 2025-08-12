function add_id(tag, timestamp, record)
	local id = tostring(timestamp) .. "_" .. tostring(math.random(1000000, 9999999))
	local content = record["log"] or ""
	local rawLog = {
		msg_id = id,
		content = content,
	}
	return 1, timestamp, rawLog
end
