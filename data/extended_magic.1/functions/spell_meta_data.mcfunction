# add to process meta function

#Spell Element
#execute if data storage bertiecrafter:mpp Tmp2.SpellElement run data modify storage bertiecrafter:mpp SpellsItems[-1].tag.bcmpp_meta.spell_element set from storage bertiecrafter:mpp Tmp2.SpellElement

#Ray Type
execute if data storage bertiecrafter:mpp Tmp2.RayType run data modify storage bertiecrafter:mpp SpellsItems[-1].tag.bcmpp_meta.ray_type set from storage bertiecrafter:mpp Tmp2.RayType
execute unless data storage bertiecrafter:mpp Tmp2.RayType run data modify storage bertiecrafter:mpp SpellsItems[-1].tag.bcmpp_meta.ray_type set value "linear"

#Ray Range
execute if data storage bertiecrafter:mpp Tmp2.RayRange run data modify storage bertiecrafter:mpp SpellsItems[-1].tag.bcmpp_meta.ray_range set from storage bertiecrafter:mpp Tmp2.RayRange
execute unless data storage bertiecrafter:mpp Tmp2.RayRange run data modify storage bertiecrafter:mpp SpellsItems[-1].tag.bcmpp_meta.ray_range set value 160

#Projectile Gravity
execute if data storage bertiecrafter:mpp Tmp2.ProjectileGravity run data modify storage bertiecrafter:mpp SpellsItems[-1].tag.bcmpp_meta.projectile_gravity set from storage bertiecrafter:mpp Tmp2.ProjectileGravity
execute unless data storage bertiecrafter:mpp Tmp2.ProjectileGravity run data modify storage bertiecrafter:mpp SpellsItems[-1].tag.bcmpp_meta.projectile_gravity set value "normal"

#Ray Piercing
execute if data storage bertiecrafter:mpp Tmp2.RayPiercing run data modify storage bertiecrafter:mpp SpellsItems[-1].tag.bcmpp_meta.ray_piercing set from storage bertiecrafter:mpp Tmp2.RayPiercing
execute unless data storage bertiecrafter:mpp Tmp2.RayPiercing run data modify storage bertiecrafter:mpp SpellsItems[-1].tag.bcmpp_meta.ray_piercing set value 0b