package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_106:int = 0;
      
      public static const const_112:int = 1;
      
      public static const const_93:int = 2;
      
      public static const const_560:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1068:int = 0;
      
      private var var_1786:String = "";
      
      private var var_202:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_202 = param2;
         var_1068 = param3;
         var_1786 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1786;
      }
      
      public function get chatType() : int
      {
         return var_1068;
      }
      
      public function get text() : String
      {
         return var_202;
      }
   }
}
