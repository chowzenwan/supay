///src_stop_raining -- make rain stop
//show_message(instance_number(obj_rain)); //test number of instance of obj rain
if (instance_number(obj_rain) != 0)
    {
        part_system_destroy(obj_rain.partRain_sys);
        instance_deactivate_object(obj_rain);
    }
