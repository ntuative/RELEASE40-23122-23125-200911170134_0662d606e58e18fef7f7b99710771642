package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_547;
         param1["bitmap"] = const_585;
         param1["border"] = const_541;
         param1["border_notify"] = const_1292;
         param1["button"] = const_432;
         param1["button_thick"] = const_703;
         param1["button_icon"] = const_1120;
         param1["button_group_left"] = const_595;
         param1["button_group_center"] = const_607;
         param1["button_group_right"] = const_568;
         param1["canvas"] = const_645;
         param1["checkbox"] = const_700;
         param1["closebutton"] = const_971;
         param1["container"] = const_299;
         param1["container_button"] = const_617;
         param1["display_object_wrapper"] = const_652;
         param1["dropmenu"] = const_447;
         param1["dropmenu_item"] = const_350;
         param1["frame"] = const_322;
         param1["frame_notify"] = const_1151;
         param1["header"] = const_719;
         param1["icon"] = const_885;
         param1["itemgrid"] = const_826;
         param1["itemgrid_horizontal"] = const_353;
         param1["itemgrid_vertical"] = const_638;
         param1["itemlist"] = const_941;
         param1["itemlist_horizontal"] = const_316;
         param1["itemlist_vertical"] = const_288;
         param1["maximizebox"] = const_1137;
         param1["menu"] = const_1328;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_784;
         param1["minimizebox"] = const_1236;
         param1["notify"] = const_1184;
         param1["null"] = const_361;
         param1["password"] = const_655;
         param1["radiobutton"] = const_593;
         param1["region"] = const_386;
         param1["restorebox"] = const_1300;
         param1["scaler"] = const_877;
         param1["scaler_horizontal"] = const_1270;
         param1["scaler_vertical"] = const_1219;
         param1["scrollbar_horizontal"] = const_342;
         param1["scrollbar_vertical"] = const_603;
         param1["scrollbar_slider_button_up"] = const_870;
         param1["scrollbar_slider_button_down"] = const_769;
         param1["scrollbar_slider_button_left"] = const_963;
         param1["scrollbar_slider_button_right"] = const_853;
         param1["scrollbar_slider_bar_horizontal"] = const_940;
         param1["scrollbar_slider_bar_vertical"] = const_830;
         param1["scrollbar_slider_track_horizontal"] = const_947;
         param1["scrollbar_slider_track_vertical"] = const_945;
         param1["scrollable_itemlist"] = const_1322;
         param1["scrollable_itemlist_vertical"] = const_465;
         param1["scrollable_itemlist_horizontal"] = const_975;
         param1["selector"] = const_667;
         param1["selector_list"] = const_673;
         param1["submenu"] = const_784;
         param1["tab_button"] = const_543;
         param1["tab_container_button"] = const_943;
         param1["tab_context"] = const_359;
         param1["tab_content"] = const_840;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_596;
         param1["input"] = const_574;
         param1["toolbar"] = const_1325;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
