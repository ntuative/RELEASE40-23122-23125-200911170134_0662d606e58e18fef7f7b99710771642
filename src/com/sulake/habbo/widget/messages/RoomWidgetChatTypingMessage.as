package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_711:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_446:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_711);
         var_446 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_446;
      }
   }
}
