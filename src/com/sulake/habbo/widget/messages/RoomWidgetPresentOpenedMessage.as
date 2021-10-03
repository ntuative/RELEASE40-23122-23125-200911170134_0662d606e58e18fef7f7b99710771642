package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1115:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1212:int;
      
      private var var_916:String;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_916 = param2;
         var_1212 = param3;
      }
      
      public function get classId() : int
      {
         return var_1212;
      }
      
      public function get itemType() : String
      {
         return var_916;
      }
   }
}
