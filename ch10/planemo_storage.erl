-module (planemo_storage).
-export ([setup/0]).
-include ("records.hrl").

setup() ->
	PlanemoTable = ets:new(planemos, [named_table, {keypos, #planemo.name}]),
	
	ets:insert(planemos, 
		#planemo{ name=mercury, gravity=3.7, diameter=4878, distance_from_sun=57.9}),
	ets:insert(planemos, 
		#planemo{ name=venus, gravity=8.9, diameter=12104, distance_from_sun=108.2}),
	ets:insert(planemos, 
		#planemo{ name=earth, gravity=9.8, diameter=12756, distance_from_sun=149.6}),
		
	ets:info(PlanemoTable).