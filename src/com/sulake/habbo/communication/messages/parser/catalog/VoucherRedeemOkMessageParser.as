package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1174:String = "";
      
      private var var_1173:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1173 = "";
         var_1174 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1174;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1173 = param1.readString();
         var_1174 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1173;
      }
   }
}
