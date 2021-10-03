package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_875:int = 0;
      
      private var var_1114:int = 0;
      
      private var var_1584:String = "";
      
      private var var_876:int = 0;
      
      private var var_1732:String = "";
      
      private var var_1733:int = 0;
      
      private var var_1315:String = "";
      
      private var var_1734:int = 0;
      
      private var var_1735:int = 0;
      
      private var var_1588:String = "";
      
      private var var_1731:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1734 = param1;
         var_1588 = param2;
         var_1315 = param3;
         var_1584 = param4;
         var_1732 = param5;
         if(param6)
         {
            var_1114 = 1;
         }
         else
         {
            var_1114 = 0;
         }
         var_1733 = param7;
         var_1735 = param8;
         var_876 = param9;
         var_1731 = param10;
         var_875 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1734,var_1588,var_1315,var_1584,var_1732,var_1114,var_1733,var_1735,var_876,var_1731,var_875];
      }
      
      public function dispose() : void
      {
      }
   }
}
