package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_220:String = "RWFAM_MOVE";
      
      public static const const_694:String = "RWFUAM_ROTATE";
      
      public static const const_546:String = "RWFAM_PICKUP";
       
      
      private var var_2068:int = 0;
      
      private var var_2067:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_2068 = param2;
         var_2067 = param3;
      }
      
      public function get furniId() : int
      {
         return var_2068;
      }
      
      public function get furniCategory() : int
      {
         return var_2067;
      }
   }
}
