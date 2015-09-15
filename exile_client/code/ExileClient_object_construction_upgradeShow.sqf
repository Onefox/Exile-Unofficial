/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_return","_isConfig"];
_return = false;
_isConfig = 
	"
	isText(_x >> 'upgradeObject')
 	&& 
 	getText(_x >> 'staticObject') isEqualTo (typeOf ExileClientInteractionObject)
 	"
 	configClasses 
 	(configFile >> 'CfgConstruction');
 if!(_isConfig isEqualTo [])then
 {
 	_isConfig = _isConfig select 0;
 	_return = isClass _isConfig;
 };
 _return