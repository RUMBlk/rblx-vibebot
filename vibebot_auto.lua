if not enabled then enabled = true end --for loop
if not speed then speed = 5 end --in seconds
if not quiet then quiet = false end
if not auto then auto = false end

if quiet == false then game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*VibeBot: Executed and turned on*", "All") end
--if quiet == false then game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("vibin", "All") end

localchatfunc = game:GetService("Players").LocalPlayer.Chatted:Connect(function(chatmsg)
        local msg
		if chatmsg == "!vibebot off" and enabled == true then
			enabled = false
			if quiet == false then msg = "*VibeBot: Turned off*" end
		elseif chatmsg == "!vibebot on" and enabled == false then
			enabled = true
			if quiet == false then msg = "*VibeBot: Turned on*" end
		elseif chatmsg == "!vibebot kill" and not end_of_world then
            if quiet == false then msg = "VibeBot: Killed" end
			enabled = false
			end_of_world = true
            localchatfunc:Disconnect()
        elseif chatmsg == "!vibe" then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Also join Vibe DS Server! Search #vibinfumo in twitter for link!", "All")
            wait(speed)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Or use shortened one: waa.ai/xUIm", "All")
            msg=nil
        elseif chatmsg == "!vibebot auto" then
            if auto == false then
                auto = true
                msg = "*VibeBot: Auto messages turned on!*"
            else
                msg = "*VibeBot: Auto messages turned off!*"
                auto = false
            end
        else
            msg=nil
		end
        if quiet == false and msg ~= nil then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All") end
end)

ExName = game:GetService("Players").LocalPlayer.Name

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	local chatfunc
    local msg
	chatfunc = v.Chatted:Connect(function(chatmsg)
        if end_of_world then chatfunc:Disconnect()
        elseif enabled == false then
		elseif chatmsg == "!vibecheck " .. ExName then
			msg = os.date('!We are Vibin there already: %d:%H:%M:%S', os.time() - 1628514000)
        elseif chatmsg == "!vibehelp " .. ExName then
            wait(speed)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Vibe dance: \"/e dance\"; How long we are Vibin: \"!vibecheck " .. ExName .. "\"", "All")
            wait(speed)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Vibe DS server invite links: \"!vibeds " .. ExName .. "\"", "All")
            msg = nil
        elseif chatmsg == "!vibeds " .. ExName then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Search #vibinfumo in twitter for DS invite link!", "All")
            wait(speed)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Or use shortened one: waa.ai/xUIm", "All")
            msg=nil
        else
            msg = nil
		end
        if msg ~= nil then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All") end
	end)
end

repeat
    if enabled == true and auto == true then repeat
        if os.date('!%M') == "00" or os.date('!%M') == "20" or os.date('!%M') == "40" then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(os.date('!We are Vibin there already: %d:%H:%M:%S', os.time() - 1628514000), "All")
            wait(speed)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Type in chat \"!vibehelp " .. ExName .. "\" for help! My executor could be afk now!", "All")
            wait(speed)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Also join Vibe DS Server! Search #vibinfumo in twitter for link!", "All")
            wait(speed)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Or use shortened one: waa.ai/xUIm", "All")
            wait(60)
        end
        wait(speed)
    until enabled == false end
    wait(restart_time)
until end_of_world