//src_rain(starts and stops rain)

/*
    if (instance_number(obj_rain) == 0)
    {
    
        show_message('make rain');
        instance_create(x,y,obj_rain);
        obj_supay.alarm[1] = 50000;
    } else {
        show_message('kill rain');
        with(obj_rain)
        {
            part_system_destroy(partRain_sys);
            instance_destroy();
        }
        obj_supay.alarm[1] = 50000;
    }


 
