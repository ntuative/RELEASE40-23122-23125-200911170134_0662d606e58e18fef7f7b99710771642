package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPollMessage extends RoomWidgetMessage
   {
      
      public static const const_539:String = "RWPM_START";
      
      public static const ANSWER:String = "RWPM_ANSWER";
      
      public static const const_340:String = "RWPM_REJECT";
       
      
      private var var_1126:int = 0;
      
      private var var_1606:Array = null;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollMessage(param1:String, param2:int)
      {
         _id = param2;
         super(param1);
      }
      
      public function get questionId() : int
      {
         return var_1126;
      }
      
      public function set questionId(param1:int) : void
      {
         var_1126 = param1;
      }
      
      public function set answers(param1:Array) : void
      {
         var_1606 = param1;
      }
      
      public function get answers() : Array
      {
         return var_1606;
      }
      
      public function get id() : int
      {
         return _id;
      }
   }
}
