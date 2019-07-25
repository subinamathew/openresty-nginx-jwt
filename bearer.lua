-- import dependencies
local json = require("helper.json") -- for json handling
local secret = os.getenv("VCAP_SERVICES") -- environment variable
secret = secret:gsub("-provided", "_provided") -- because lua table cannot handle hyphen

local credID = json.parse(secret).user_provided[1].credentials.clientId
local credSecret = json.parse(secret).user_provided[1].credentials.clientSecret

ngx.say("Client ID :", credID)
ngx.say("Secret :",credSecret)
