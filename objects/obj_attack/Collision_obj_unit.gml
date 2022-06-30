if (other.id == owner.id)
	return;
	
for (var i = 0; i < array_length(ignored_units); i++)
	if (other.id == ignored_units[i].id)
		return;

other.hp -= damage;

if (other.hp <= 0)
	other.die();
else
	other.blink();

array_push(ignored_units, other);