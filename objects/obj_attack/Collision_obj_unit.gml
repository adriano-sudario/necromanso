if (other.id == owner.id)
	return;
	
for (var i = 0; i < array_length(ignored_units); i++)
	if (other.id == ignored_units[i].id)
		return;

other.hp -= damage;
audio_sound_pitch(sfx_attack, choose(.8, 1, 1.2, 1.4));
play_sound(sfx_attack, 5, false);

if (other.hp <= 0)
	other.die();
else
	other.blink();

array_push(ignored_units, other);