/// @description Insert description here
// You can write your code in this editor

menu_surface = surface_create(1, 1)

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 100;

menu_x = gui_width - gui_margin
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;
menu_font = fMainMenu;
menu_itemheight = font_get_size(fMainMenu);
menu_committed = -1;
menu_control = true;

menu[0] = instance_create_layer(menu_x - 150, menu_y - menu_itemheight * (0 * 1.5), layer, oMainMenuButton)
menu[0].txt = "Main Menu"

menu[0].action = function(){room_goto(rMainMenu)}

menu_items = array_length_1d(menu)
menu_cursor = 2

score_strings = []
index_array = []
file = file_text_open_read(working_directory + "TopScores.txt");
if(file != -1)
{
	while (!file_text_eof(file))
	{
	    array_push(score_strings, file_text_readln(file))
	}
	var tmp = []
	array_copy(tmp, 0, score_strings, 0, array_length(score_strings))
	index_array = sort_high_scores(tmp)
}
file_text_close(file)