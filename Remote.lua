local lib = {}

function lib:OnClientFired(Remote, Callback)
    if not Remote:IsA("RemoteEvent") then return end

    Remote.OnClientEvent:Connect(Callback)
end

function lib:OnServerFired(Remote, Callback)
    if not Remote:IsA("RemoteEvent") then return end

    Remote.OnServerEvent:Connect(Callback)
end

return lib
