package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_550:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_248:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_550,param2,param3);
         var_248 = param1;
      }
      
      public function get effects() : Array
      {
         return var_248;
      }
   }
}
