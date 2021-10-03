package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_701:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_701 = new Array();
         var_701.push(param1.length);
         var_701 = var_701.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_701;
      }
   }
}
