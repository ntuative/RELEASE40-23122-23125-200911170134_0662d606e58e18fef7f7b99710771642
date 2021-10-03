package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_222:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_222 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_222;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_222 = new RoomSettingsFlatInfo();
         var_222.allowFurniMoving = param1.readInteger() == 1;
         var_222.doorMode = param1.readInteger();
         var_222.id = param1.readInteger();
         var_222.ownerName = param1.readString();
         var_222.type = param1.readString();
         var_222.name = param1.readString();
         var_222.description = param1.readString();
         var_222.showOwnerName = param1.readInteger() == 1;
         var_222.allowTrading = param1.readInteger() == 1;
         var_222.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
