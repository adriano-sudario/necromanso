enum STEP_EVENT { BEGIN_STEP, STEP, AFTER_STEP }

on_finished = noone;
step_to_check = STEP_EVENT.STEP;
duration = 0;
elapsed_time = 0;

function stop()
{
	instance_destroy();
}

function update_routine()
{
	elapsed_time += delta_time / 1000;

	if (elapsed_time >= duration)
	{
		on_finished();
		instance_destroy();
	}
}