package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1604:String;
      
      private var var_523:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_523 = param1;
         var_1604 = param2;
      }
      
      public function get race() : String
      {
         return var_1604;
      }
      
      public function get figure() : String
      {
         return var_523;
      }
   }
}
