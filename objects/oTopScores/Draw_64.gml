/// @description Insert description here
// You can write your code in this editor
draw_set_font(fTopScores)
draw_text((room_width / 2) - 150, 50, "High Scores")
for(var i = 0; i < array_length(index_array); i++)
{
	var split_str = split_string(score_strings[index_array[i]], "|")
	draw_text((room_width / 2) - 50, 150 + (i * 100), split_str[1])
}
draw_set_font(fMainMenu)
