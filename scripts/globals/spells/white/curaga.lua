-----------------------------------
-- Spell: Curaga
-- Restores HP of all party members within area of effect.
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
require("scripts/globals/spells/healing_spell")
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    spell:setMsg(xi.msg.basic.AOE_HP_RECOVERY)
    return xi.spells.healing.doHealingSpell(caster, target, spell, true)
end

return spellObject
