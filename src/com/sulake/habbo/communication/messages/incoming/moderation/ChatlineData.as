package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1362:String;
      
      private var var_1566:int;
      
      private var var_1565:int;
      
      private var var_1568:int;
      
      private var var_1567:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1566 = param1.readInteger();
         var_1568 = param1.readInteger();
         var_1565 = param1.readInteger();
         var_1567 = param1.readString();
         var_1362 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1362;
      }
      
      public function get hour() : int
      {
         return var_1566;
      }
      
      public function get minute() : int
      {
         return var_1568;
      }
      
      public function get chatterName() : String
      {
         return var_1567;
      }
      
      public function get chatterId() : int
      {
         return var_1565;
      }
   }
}
