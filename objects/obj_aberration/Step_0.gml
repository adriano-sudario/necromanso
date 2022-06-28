if (is_random) {
	distance = random_range(max_distance, max_distance);
} else {
	distance += distance_incremenation_speed * distance_incremenation_direction;

	if (abs(distance) > max_distance) {
		distance = clamp(distance, -max_distance, max_distance)
		distance_incremenation_direction *= -1;
	}
}