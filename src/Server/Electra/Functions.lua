server = nil
service = nil

return function()
    server.Functions = {
        CheckClients = function()
            for i,v in next,service.Players:GetPlayers() do
                if server.Processing.ReadyPlayers[v.UserId] then
                    local time1 = tick()
                    local str = service.GenerateRandom(10)
                    local res = spawn(server.Remote.Send, v, "Echo", str)
                    local i = 0
                    repeat wait(1) i = i + 1 until res or i == 30
                    if i == 30 then
                        service.Disconnect(v, "Client check failed; Failure to return")
                    end
                    local time2 = tick()
                    if res ~= str then
                        service.Disconnect(v, "Client check failed; Incorrect return")
                    end;
                    if (time2-time1)/1000 > 15 then
                        service.Disconnect(v, "Client check failed; Took too long")
                    end;
                end
            end
        end;
    }
end