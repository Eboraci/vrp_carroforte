local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

func = {}
Tunnel.bindInterface("vrp_carroforte",func)
local idgens = Tools.newIDGenerator()
-----------------------------------------------------------------------------------------------------------------------------------------
-- Funções
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-- Função pagamento
-----------------------------------------------------------------------------------------------------------------------------------------
function func.pagamento()
    local source = source
    local user_id = vRP.getUserId(source)
    local recompensa = parseInt(math.random(225000,300000))
    vRP.giveInventoryItem(user_id,"dinheirosujo",recompensa)
    Wait(5000)
    TriggerClientEvent("Notify",source,"sucesso","Você roubou $"..recompensa.." em dinheiro sujo.")
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- Função policia
-----------------------------------------------------------------------------------------------------------------------------------------
function func.check_policia()
    local source = source
    local user_id = vRP.getUserId(source)
    local policia = vRP.getUsersByPermission("policia.permissao")
    if user_id then
        if #policia >= 4 then
            return true
        end 
    else
        return false
    end
end
















