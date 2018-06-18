local eom_action = {} --# assume eom_action: EOM_ACTION

--v function(key: string, conditional: function(eom: EOM_MODEL) --> boolean, choices: map<number, function(eom: EOM_MODEL)>, eom: EOM_MODEL) --> EOM_ACTION
function eom_action.new(key, conditional, choices, eom)
    local self = {}
    setmetatable(
        self, {
            __index = eom_action
        }
    )--# assume self: EOM_ACTION

    self._key = key
    self._condition = conditional
    self._choices = choices
    self._alreadyOccured = cm:get_saved_value("eom_action_"..key.."_occured") or false
    self._eom = eom

    return self
end

--v function(self: EOM_ACTION) --> EOM_MODEL
function eom_action.model(self)
    return self._eom
end


--v function(self: EOM_ACTION) --> string
function eom_action.key(self)
    return self._key
end

--v function(self: EOM_ACTION) --> boolean
function eom_action.allowed(self)
    return self._condition(self:model())
end

--v function(self: EOM_ACTION, choice: number)
function eom_action.do_choice(self, choice)
    self._choices[choice](self:model())
end

--v function(self: EOM_ACTION) --> boolean
function eom_action.already_occured(self)
    return self._alreadyOccured
end

--v function(self: EOM_ACTION)
function eom_action.act(self)
    cm:trigger_dilemma(EOM_GLOBAL_EMPIRE_FACTION, self:key(), true)
    cm:set_saved_value("eom_action_"..self:key().."_occured", true)
end

