package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1467:int;
      
      private var var_1730:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1730 = param1.readString();
         var_1467 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1467;
      }
      
      public function get productItemType() : String
      {
         return var_1730;
      }
   }
}
