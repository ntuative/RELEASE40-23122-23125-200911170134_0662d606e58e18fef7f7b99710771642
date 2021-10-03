package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1972:int;
      
      private var var_1174:String;
      
      private var var_1975:int;
      
      private var var_1971:int;
      
      private var var_1974:int;
      
      private var var_1973:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1174;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1973;
      }
      
      public function get method_4() : int
      {
         return var_1971;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1975;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1174 = param1.readString();
         var_1975 = param1.readInteger();
         var_1972 = param1.readInteger();
         var_1974 = param1.readInteger();
         var_1971 = param1.readInteger();
         var_1973 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_1972;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1974;
      }
   }
}
