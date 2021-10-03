package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_501:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_202:String;
      
      private var var_577:String;
      
      private var var_1298:String;
      
      private var var_157:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_157 = param2;
         var_1298 = param3;
         var_202 = param4;
         var_577 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1298;
      }
      
      public function get colorHex() : String
      {
         return var_577;
      }
      
      public function get text() : String
      {
         return var_202;
      }
      
      public function get objectId() : int
      {
         return var_157;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
