package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1698:Number;
      
      private var var_512:Number = 0;
      
      private var var_1699:Number;
      
      private var var_511:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1698 = param1;
         var_1699 = param2;
      }
      
      public function update() : void
      {
         var_511 += var_1699;
         var_512 += var_511;
         if(var_512 > 0)
         {
            var_512 = 0;
            var_511 = var_1698 * -1 * var_511;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_511 = param1;
         var_512 = 0;
      }
      
      public function get location() : Number
      {
         return var_512;
      }
   }
}
