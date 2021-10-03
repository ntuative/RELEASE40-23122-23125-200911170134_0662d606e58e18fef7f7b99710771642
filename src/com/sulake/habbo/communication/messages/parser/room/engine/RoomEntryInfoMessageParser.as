package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1848:int;
      
      private var var_343:Boolean;
      
      private var var_1849:Boolean;
      
      private var var_763:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1849 = param1.readBoolean();
         if(var_1849)
         {
            var_1848 = param1.readInteger();
            var_343 = param1.readBoolean();
         }
         else
         {
            var_763 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_763 != null)
         {
            var_763.dispose();
            var_763 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1848;
      }
      
      public function get owner() : Boolean
      {
         return var_343;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1849;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_763;
      }
   }
}
