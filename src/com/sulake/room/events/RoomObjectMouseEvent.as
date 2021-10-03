package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1416:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1535:String = "ROE_MOUSE_ENTER";
      
      public static const const_364:String = "ROE_MOUSE_MOVE";
      
      public static const const_1440:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_213:String = "ROE_MOUSE_CLICK";
      
      public static const const_375:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1793:Boolean;
      
      private var var_1787:Boolean;
      
      private var var_1794:Boolean;
      
      private var var_1792:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1794 = param4;
         var_1792 = param5;
         var_1793 = param6;
         var_1787 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1787;
      }
      
      public function get altKey() : Boolean
      {
         return var_1794;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1792;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1793;
      }
   }
}
