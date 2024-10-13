local ESX = exports['es_extended']:getSharedObject()


local hablarenradio = false
local prop
local animr

RegisterCommand("animradio", function()
    
    ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), GetCurrentResourceName() .. '-fps', {
		title    = "Radio ",
		align    = 'top-left',
		elements = {
            {label = "Hombro 1", value = 'animacion1'},
            {label = "Hombro 2", value = 'animacion2'},
            {label = 'Hombro 3', value = 'animacion3'},
            {label = 'Hombro 4', value = 'animacion4'},
            {label = 'Hombro 5', value = 'animacion5'},
            {label = 'Oreja 1', value = 'animacion6'},
            {label = 'Oreja 2', value = 'animacion7'},
        }
	}, function(data, menu)
		
        if data.current.value == 'animacion1' then
            animr = "animacion1"

        elseif data.current.value == "animacion2" then
            animr = "animacion2"

        elseif data.current.value == 'animacion3' then
            animr = 'animacion3'

        elseif data.current.value == 'animacion4' then
            animr = 'animacion4'

        elseif data.current.value == 'animacion5' then
            animr = 'animacion5'

        elseif data.current.value == 'animacion6' then
            animr = 'animacion6'

        elseif data.current.value == 'animacion7' then
            animr = 'animacion7'

        end
	
    end, function(data, menu)
		
        menu.close()
	end)
end)



RegisterNetEvent("saltychat:animazioneRadio",function(bool)
    if animr == "animacion1" then
        if bool then
            RequestAnimDict("random@arrests");
            while not HasAnimDictLoaded("random@arrests") do Wait(5) end
            TaskPlayAnim(PlayerPedId(),"random@arrests", "generic_radio_chatter", 8.0, 0.0, -1, 50, 0, 0, 0, 0);
            hablarenradio = true
            startRadioAnim()
        else
            hablarenradio = false
            StopAnimTask(PlayerPedId(), "random@arrests", "generic_radio_chatter", -4.0)			
        end
    elseif animr == "animacion2" then
        if bool then
            RequestAnimDict("random@arrests");
            while not HasAnimDictLoaded("random@arrests") do Wait(5) end
            TaskPlayAnim(PlayerPedId(),"random@arrests","generic_radio_chatter", 8.0, 0.0, -1, 49, 0, 0, 0, 0);
            prop = CreateObject(GetHashKey('prop_cs_hand_radio'),0.0 ,0.0, 0.0, true, true, true)
            SetEntityCollision(prop,false,false)
            AttachEntityToEntity(prop,PlayerPedId(),GetPedBoneIndex(PlayerPedId(),60309),0.06,0.05,0.03,-90.0,30.0,0.0,false,false,false,false,2,true)
            hablarenradio = true
            startRadioAnim()
        else
            hablarenradio = false
            StopAnimTask(PlayerPedId(), "random@arrests","generic_radio_chatter", -4.0)			
            DeleteEntity(prop)
        end
    elseif animr == "animacion3" then
        if bool then
            RequestAnimDict("random@arrests");
            while not HasAnimDictLoaded("random@arrests") do Wait(5) end
            TaskPlayAnim(PlayerPedId(),"random@arrests","generic_radio_chatter", 2.0, 0.0, -1, 49, 0, 0, 0, 0);
            prop = CreateObject(GetHashKey('prop_cs_hand_radio'),0.0 ,0.0, 0.0, true, true, true)
            SetEntityCollision(prop,false,false)
            AttachEntityToEntity(prop,PlayerPedId(),GetPedBoneIndex(PlayerPedId(),60309),0.06,0.05,0.03,-90.0,30.0,0.0,false,false,false,false,2,true)
            hablarenradio = true
            startRadioAnim()
        else
            hablarenradio = false
            StopAnimTask(PlayerPedId(), "random@arrests","generic_radio_chatter", -4.0)			
            DeleteEntity(prop)
        end
    elseif animr == "animacion4" then
        if bool then
            RequestAnimDict("random@arrests");
            while not HasAnimDictLoaded("random@arrests") do Wait(5) end
            TaskPlayAnim(PlayerPedId(),"random@arrests","generic_radio_chatter", 2.0, 0.0, -1, 49, 0, 0, 0, 0);
            hablarenradio = true
            startRadioAnim()
        else
            hablarenradio = false
            StopAnimTask(PlayerPedId(), "random@arrests","generic_radio_chatter", -4.0)			
        end
    elseif animr == "animacion5" then
        if bool then
            RequestAnimDict("amb@code_human_police_investigate@idle_a");
            while not HasAnimDictLoaded("amb@code_human_police_investigate@idle_a") do Wait(5) end
            TaskPlayAnim(PlayerPedId(),"amb@code_human_police_investigate@idle_a","idle_b", 8.0, 0.0, -1, 49, 0, 0, 0, 0);
            hablarenradio = true
            startRadioAnim()
        else
            hablarenradio = false
            StopAnimTask(PlayerPedId(), "amb@code_human_police_investigate@idle_a","idle_b", -4.0)			
        end
    elseif animr == "animacion6" then
        if bool then
            RequestAnimDict("cellphone@");
            while not HasAnimDictLoaded("cellphone@") do Wait(5) end
            TaskPlayAnim(PlayerPedId(),"cellphone@","cellphone_text_to_call", 7.0, 0.0, -1, 50, 0, 0, 0, 0);
            prop = CreateObject(GetHashKey('prop_cs_hand_radio'),0.0 ,0.0, 0.0, true, true, true)
            SetEntityCollision(prop,false,false)
            AttachEntityToEntity(prop,PlayerPedId(),GetPedBoneIndex(PlayerPedId(),28422),0.0, -0.01, 0.0, 13.0, 0.0, 0.0, 1, 1, 0, 0, 2, 1)
            hablarenradio = true
            startRadioAnim()
        else
            hablarenradio = false
            StopAnimTask(PlayerPedId(), "cellphone@","cellphone_text_to_call", -4.0)			
            DeleteEntity(prop)
        end
    elseif animr == "animacion7" then
        if bool then
            RequestAnimDict("cellphone@");
            while not HasAnimDictLoaded("cellphone@") do Wait(5) end
            TaskPlayAnim(PlayerPedId(),"cellphone@","cellphone_text_to_call", 4.0, 0.0, -1, 50, 0, 0, 0, 0);
            hablarenradio = true
            startRadioAnim()
        else
            hablarenradio = false
            StopAnimTask(PlayerPedId(), "cellphone@","cellphone_text_to_call", -4.0)			
            DeleteEntity(prop)
        end
    end
end)

startRadioAnim = function()
    Citizen.CreateThread(function()
        while hablarenradio do
            DisablePlayerFiring(PlayerId(), true)
            DisableControlAction(1, 22)
            Citizen.Wait(1)
        end
        DisablePlayerFiring(PlayerId(), false)
    end)
end

RegisterKeyMapping('animradio', 'Menu Radio', 'keyboard', 'F11')
