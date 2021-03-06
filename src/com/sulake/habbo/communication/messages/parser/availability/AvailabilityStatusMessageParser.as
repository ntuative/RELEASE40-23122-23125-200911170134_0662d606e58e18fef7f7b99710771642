package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_921:Boolean;
      
      private var var_1199:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_921 = param1.readInteger() > 0;
         var_1199 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_921;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1199;
      }
      
      public function flush() : Boolean
      {
         var_921 = false;
         var_1199 = false;
         return true;
      }
   }
}
