package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_99;
         param1["bound_to_parent_rect"] = const_86;
         param1["child_window"] = const_929;
         param1["embedded_controller"] = const_278;
         param1["resize_to_accommodate_children"] = const_59;
         param1["input_event_processor"] = const_43;
         param1["internal_event_handling"] = const_559;
         param1["mouse_dragging_target"] = const_210;
         param1["mouse_dragging_trigger"] = const_286;
         param1["mouse_scaling_target"] = const_233;
         param1["mouse_scaling_trigger"] = const_401;
         param1["horizontal_mouse_scaling_trigger"] = const_207;
         param1["vertical_mouse_scaling_trigger"] = const_212;
         param1["observe_parent_input_events"] = const_834;
         param1["optimize_region_to_layout_size"] = const_461;
         param1["parent_window"] = const_849;
         param1["relative_horizontal_scale_center"] = const_158;
         param1["relative_horizontal_scale_fixed"] = const_104;
         param1["relative_horizontal_scale_move"] = const_311;
         param1["relative_horizontal_scale_strech"] = const_227;
         param1["relative_scale_center"] = const_832;
         param1["relative_scale_fixed"] = const_634;
         param1["relative_scale_move"] = const_977;
         param1["relative_scale_strech"] = const_951;
         param1["relative_vertical_scale_center"] = const_167;
         param1["relative_vertical_scale_fixed"] = const_105;
         param1["relative_vertical_scale_move"] = const_319;
         param1["relative_vertical_scale_strech"] = const_246;
         param1["on_resize_align_left"] = const_491;
         param1["on_resize_align_right"] = const_471;
         param1["on_resize_align_center"] = const_446;
         param1["on_resize_align_top"] = const_685;
         param1["on_resize_align_bottom"] = const_469;
         param1["on_resize_align_middle"] = const_431;
         param1["on_accommodate_align_left"] = const_864;
         param1["on_accommodate_align_right"] = const_416;
         param1["on_accommodate_align_center"] = const_604;
         param1["on_accommodate_align_top"] = const_917;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_579;
         param1["route_input_events_to_parent"] = const_405;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_865;
         param1["scalable_with_mouse"] = const_810;
         param1["reflect_horizontal_resize_to_parent"] = const_433;
         param1["reflect_vertical_resize_to_parent"] = const_391;
         param1["reflect_resize_to_parent"] = const_237;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
