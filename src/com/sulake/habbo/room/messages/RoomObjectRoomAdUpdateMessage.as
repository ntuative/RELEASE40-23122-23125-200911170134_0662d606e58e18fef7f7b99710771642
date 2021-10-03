package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class RoomObjectRoomAdUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_952:String = "RORUM_ROOM_AD_ACTIVATE";
       
      
      private var var_728:String;
      
      private var var_1324:String;
      
      private var _type:String;
      
      public function RoomObjectRoomAdUpdateMessage(param1:String, param2:String, param3:String)
      {
         super(null,null);
         _type = param1;
         var_728 = param2;
         var_1324 = param3;
      }
      
      public function get asset() : String
      {
         return var_728;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get clickUrl() : String
      {
         return var_1324;
      }
   }
}
