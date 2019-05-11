#include "colors.inc"
#include "shapes.inc"
#include "skies.inc"
#include "glass.inc"
#include "woods.inc"
#include "metals.inc"
#include "stones.inc"
#include "textures.inc"

camera{
   location<-70, 60, -200>
   look_at<-5,10,0>
   angle 37
}  
background{ color Black }     

//nikisi-kan
#declare Nikisikan = union{

   light_source{ <  0, 33,-100> color Black }
   light_source{ <  1, -2,-2>   color Med_Purple area_light <2,0,0>,<0,2,0>,3,3 jitter }
   light_source{ < -1, -2,-2>   color Green      area_light <2,0,0>,<0,2,0>,3,3 jitter }

   //nemoto
   superellipsoid{ <1, 0.1>
      rotate 90*x
      material{ M_Glass }
      interior{ ior 1.2 }
      scale <5,2,5>
   }


   //ashi
   #declare K = 0;
   #while( K < 12 )

      object{
         Disk_Y
         texture { T_Gold_1C }
         scale<0.2,6,0.2>
         translate<0,5,-4>
         rotate 30*K*y
      }
   #declare K = K + 1;
   #end                                    



   //garasu
   object{
      difference{
         superellipsoid{ <1, 0.2>
            rotate 90*x
            material{ M_Glass }
            interior{ ior 1.2 }
            scale <7,15,7>
            translate<0,20,0>
         }
         superellipsoid{ <1,0.2>
            rotate 90*x
            material{ M_Glass }
            interior{ ior 1.2 }
            scale<5.5,14,5.5>
            translate<0,20,0>
         }
         object{
            Cone_Y
            material{ M_Glass }
            interior{ ior 1.2 }
            scale <6,2,6>
            translate<0,36.6,0>
         }
      }
   }

   //ue no huta
   object{
      Disk_Y
      texture { T_Chrome_1A }
      scale<5,0.5,5>
      translate<0,29,-2>
      finish{ reflection 1 }
   }
   //naka ni tuiteru marui yatu
   object{
      Disk_Y
      texture { T_Chrome_1A }
      scale<0.3,2,0.3>
      translate<-4,30,-2>
      finish{ reflection 1 }
   }

   object{
      Disk_Y
      texture { T_Chrome_1A }
      scale<0.3,2,0.3>
      translate<4,30,-2>
      finish{ reflection 1 }
   }

   object{
      Disk_X
      texture { T_Chrome_1A }
      scale<4,0.3,0.3>
      translate<0,31,-2>
      finish{ reflection 1 }
   }

   object{
      difference{
         object{
            torus{ 4.5, 0.3 }
            texture { T_Chrome_1A }
         }
         object{
            Cube
            texture { T_Chrome_1A }
            scale 5
            translate -3*z
         }
      }
      rotate -30*x
      translate<0,30.5,-3.7> 
      finish{ reflection 1 }
   }


   object{
      Sphere
      texture{ T_Chrome_1A }
      scale 1
      translate<0,33,0>
      finish{ reflection 1 }
   }

   //naka no tutu
   object{
      difference{
         object{
            Disk_Y
            texture { T_Chrome_1A }
            scale<5,9,5>
            translate<0,20,-2>
         }
         object{
            Disk_Y
            texture { T_Chrome_1A }
            scale<4.5,10,4.5>
            translate<0,20,-2>
         }
         object{
            Cube
            texture { T_Chrome_1A }
            scale<5,10,5>
            translate<0,20,-7>
         }
      }
      finish{ brilliance 1.0 specular 0.7 } 
      finish{ reflection 1 }
   }

   //teppen no tuno
   object{
      difference{
         object{
            Cone_Y
            material{ M_Glass }
            interior{ ior 1.2 }
            scale <6,2,6>
            translate<0,36.6,0>
         }
         object{
            Disk_Y
            material{ M_Glass }
            interior{ ior 1.2 }
            scale<1.5,2,1.5>
            translate<0,39.5,0>
         }
      }
   }

   object{
      Disk_Y
      material{ M_Glass }
      interior{ ior 1.2 }  
      scale<1.5,2,1.5>
      translate<0,39.5,0>
   }

   object{
      difference{
         object{
            Sphere
            material{ M_Glass }
            interior{ ior 1.2 }
            scale 1.5
            translate<0,3,0>
         }
         object{
            Disk_Y
            material{ M_Glass }
            interior{ ior 1.2 }
            scale<1.5,3,1.5>
            translate<0,0,0>
         }
      }
      translate<0,38.5,0>
   }

   //soko 
   object{
      Disk_Y
      texture { T_Chrome_1A }
      scale<5,0.5,5>
      translate<0,11,-2>
      finish{ reflection 0.2 }
   }
   //ashi no tokoro
   object{
      Disk_Y
      pigment{ color Black }
      scale<5,0.5,5>
      translate<0,8,-2>
      finish{ reflection 0.2 }
   }

}

//1.048596
//0.328403
//Number
#declare Number1 = union{
   light_source{<0, 0, 0> color rgb <10,1,1>
      looks_like{
         object{
            text{ ttf "NixieOne.ttf", "1", 0.1, 0 }
            pigment{ color Coral }
            finish{ ambient 1 }
         }
      }
      scale<17,19,17>
      translate<-3,14,-3>
   }
   light_source{<0,0,0> color Orange
      scale<17,19,17>
      translate<-1,14,-3>
      area_light<2,0,0>,<0,2,0>,3,3 jitter
   }
}

#declare Number2 = union{
   light_source{<0, 0, 0> color rgb<10,1,1>
      looks_like{
         object{
            text{ ttf "NixieOne.ttf", ".", 0.1, 0 }
            pigment{ color Coral }
            finish{ ambient 1 }
         }
      }
      scale<17,19,17>
      translate<-3,14,-3>
   }
   light_source{<0,0,0> color Orange
      scale<17,19,17>
      translate<-1,14,-3>
      area_light<2,0,0>,<0,2,0>,3,3 jitter 
   }
}

#declare Number3 = union{
   light_source{<0, 0, 0> color rgb <10,1,1>
      looks_like{
         object{
            text{ ttf "NixieOne.ttf", "0", 0.1, 0 }
            pigment{ color Coral }
            finish{ ambient 1 }
         }
      }
      scale<17,19,17>
      translate<-4,14,-3>
   }
   light_source{<0,0,0> color Orange
      scale<17,19,17>
      translate<-3,14,-3>
      area_light<2,0,0>,<0,2,0>,3,3 jitter 
   }
}

#declare Number4 = union{
   light_source {<0, 0, 0> color rgb <10,1,1>
      looks_like{
         object{
            text{ ttf "NixieOne.ttf", "4", 0.1, 0 }
            pigment{ color Coral }
            finish{ ambient 1 }
         }
      }
      scale<17,19,17>
      translate<-4,14,-3>
   }
   light_source{<0,0,0> color Orange
      scale<17,19,17>
      translate<-3,14,-3>
      area_light<2,0,0>,<0,2,0>,3,3 jitter 
   }
}

#declare Number5 = union{
   light_source {<0, 0, 0> color rgb <10,1,1>
      looks_like{
         object{
            text{ ttf "NixieOne.ttf", "8", 0.1, 0 }
            pigment{ color Coral }
            finish{ ambient 1 }
         }
      }
      scale<17,19,17>
      translate<-4,14,-3>
   }
   light_source{<0,0,0> color Orange
      scale<17,19,17>
      translate<-3,14,-3>
      area_light<2,0,0>,<0,2,0>,3,3 jitter
   }
}

#declare Number6 = union{
   light_source{<0, 0, 0> color rgb <10,1,1>
      looks_like{
         object{
            text{ ttf "NixieOne.ttf", "5", 0.1, 0 }
            pigment{ color Coral }
            finish{ ambient 1 }
         }
      }
      scale<17,19,17>
      translate<-4,14,-3>
   }
   light_source{<0,0,0> color Orange
      scale<17,19,17>
      translate<-3,14,-3>
      area_light<2,0,0>,<0,2,0>,3,3  jitter
   }
}

#declare Number7 = union{
   light_source{<0, 0, 0> color rgb <10,1,1>
      looks_like{
         object{
            text{ ttf "NixieOne.ttf", "9", 0.1, 0 }
            pigment{ color Coral }
            finish{ ambient 1 }
         }
      }
      scale<17,19,17>
      translate<-4,14,-3>
   }
   light_source{<0,0,0> color Orange
      scale<17,19,17>
      translate<-3,14,-3>
      area_light <2,0,0>,<0,2,0>,3,3  jitter
   }
}

#declare Number8 = union{
   light_source{<0, 0, 0> color rgb <10,1,1>
      looks_like{
         object{
            text{ ttf "NixieOne.ttf", "6", 0.1, 0 }
            pigment{ color Coral }
         finish{ ambient 1 }
         }
      }
      scale<17,19,17>
      translate<-4,14,-3>
   }
   light_source{<0,0,0> color Orange
      scale<17,19,17>
      translate<-3,14,-3>
      area_light <2,0,0>,<0,2,0>,3,3  jitter
   }
}

#declare Num = array [8] { Number1, Number2, Number3, Number4, Number5, Number6, Number7, Number8 }

//nikisi-kan no sakusei
#declare K=0;
#while( K<8 )

   object{
      Nikisikan
      translate<-59.5+K*17,0,0>
   }
   object{ 
      Num[K]
      translate (-59.5+17*K)*x
   }
      
#declare K = K+1;
#end

object{
   difference{
      object{ 
         Cube 
         scale<70,1,14>
         pigment{ color Black }
         finish{ reflection 0.2 }
      }

      #declare K=0;
      #while( K<8 )

      object{
         Nikisikan
         translate<-59.5+K*17,0,0>
      }
      
      #declare K = K+1;
      #end
   }
}

object{ 
   Cube 
   scale<70,2,14>
   material{ M_Vicks_Bottle_Glass }
   interior{ ior 1.2 }
   translate<0,-3,0>   
}


object{ 
   Cube 
   scale<70,2,14>
   material{ M_NB_Winebottle_Glass }
   interior{ ior 1.2 }
   translate<0,-15,0>   
}

object{ 
   Cube 
   scale<70,1,14>
   pigment{ color Black }
   translate<0,-18,0>
}


object{
   Disk_Y
   pigment{ color Black }
   scale <2,8,2>
   translate<-67,-8,11>

}

object{
   Disk_Y
   pigment{ color Black }
   scale <2,8,2>
   translate<-67,-8,-11>

}

object{
   Disk_Y
   pigment{ color Black }
   scale <2,8,2>
   translate<67,-8,11>

}

object{
   Disk_Y
   pigment{ color Black }
   scale <2,8,2>
   translate<67,-8,-11>
}

object {
   plane { z,0 }
   texture{
      pigment{image_map{png "logo.png" map_type 0 once}}
   }
   scale <3.7,1,1>
   scale 10
   translate<20,-14.5,-10>
}

light_source{<0,0,0> color White
   looks_like{   
      object{
         Cube
         material{ M_Orange_Glass }
         interior{ ior 1 }
         finish { ambient 1 }
      }      
   scale<18.5,4,1>
   translate<37,-9,-8>
   }
}

#declare Neji = union{
   object{
      difference{
         object{
            Sphere
         }
         object{
            Cube
            translate<0,-1,0>
         }
         object{
            Cube
            scale <0.2,5,10>
            translate<0,5.5,0>
         }
         object{
            Cube
            scale <10,5,0.2>
            translate<0,5.5,0>
         }
      }
   }
}

object{ Neji texture { T_Chrome_1A } scale 2 translate<-67,1, 11> }
object{ Neji texture { T_Chrome_1A } scale 2 translate<-67,1,-11> }
object{ Neji texture { T_Chrome_1A } scale 2 translate< 67,1, 11> }
object{ Neji texture { T_Chrome_1A } scale 2 translate< 67,1,-11> }

#declare Haikei = union{
   object{
      Plane_XZ
      texture{ Polished_Chrome }
      translate -29*y
   }
   object{
      Plane_XY
      texture{ Polished_Chrome }
      translate 40*z
   }
}

object{ Haikei }
