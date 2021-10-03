package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_607:String;
      
      private var var_1894:int;
      
      private var var_1421:Boolean;
      
      private var _roomId:int;
      
      private var var_1895:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1421 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_607 = param1.readString();
         var_1895 = param1.readInteger();
         var_1894 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1421;
      }
      
      public function get roomName() : String
      {
         return var_607;
      }
      
      public function get enterMinute() : int
      {
         return var_1894;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1895;
      }
   }
}
