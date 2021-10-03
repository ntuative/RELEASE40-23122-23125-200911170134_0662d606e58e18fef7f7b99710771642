package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1611:String;
      
      private var var_754:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1611 = param1;
         var_754 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1611;
      }
      
      public function get parameter() : String
      {
         return var_754;
      }
   }
}
