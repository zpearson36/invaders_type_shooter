// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function _game_over(){
	var timestamp = date_datetime_string(date_current_datetime())
	var file;
	var wave = oEnemySpawner.num - 1
	file = file_text_open_append(working_directory + "TopScores.txt");
	file_text_write_string(file, timestamp);
	file_text_write_string(file, "|");
	file_text_write_real(file, wave);
	file_text_writeln(file)
	file_text_close(file);
	room_goto(rTopScores)
}

function split_string(str, delim)
{
	var split_array = []
	var pos = string_pos(delim, str)
	while(pos > 0)
	{
		array_push(split_array, string_copy(str, 1, pos - 1))
		str = string_delete(str, 1, pos)
		pos = string_pos(delim, str)
	}
	array_push(split_array, str)
	return split_array
}

function sort_high_scores(score_list)
{
	var ordered_index = []
	while(array_length(score_list) > array_length(ordered_index))
	{
	    var index = 0
		for(var i = 0; i < array_length(score_list); i++)
		{
			if(real(split_string(score_list[i], "|")[1]) > real(split_string(score_list[index], "|")[1])
			   and not array_contains(ordered_index, i))
			{
				index = i
			}
		}
		array_push(ordered_index, index)
	}
	return ordered_index
}

function array_contains(array, val)
{
	var contains = false
	for(var i = 0; i < array_length(array); i++)
	{
		if(array[i] == val) contains = true
		if(contains) break
	}
	return contains
}