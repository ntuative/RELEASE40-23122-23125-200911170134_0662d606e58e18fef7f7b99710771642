package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_523:String;
      
      private var var_1716:int;
      
      private var var_1913:String;
      
      private var var_936:int;
      
      private var var_1107:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1107;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1107 = param1.readInteger();
         var_1913 = param1.readString();
         var_1716 = param1.readInteger();
         var_523 = param1.readString();
         var_936 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1913;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_523;
      }
      
      public function get petType() : int
      {
         return var_936;
      }
      
      public function get level() : int
      {
         return var_1716;
      }
   }
}
