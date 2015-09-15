/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
if (ExileClientIsAutoRunning) then
{
	ExileClientIsAutoRunning = false;
	false call ExileClient_gui_hud_toggleAutoRunIcon;
	if ((vehicle player) isEqualTo player) then 
	{
		if (alive player) then
		{
			player switchMove "";
		};
	};
};
true