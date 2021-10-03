package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_108:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1237:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_108);
         var_1237 = param1;
      }
      
      public function get vote() : int
      {
         return var_1237;
      }
   }
}
