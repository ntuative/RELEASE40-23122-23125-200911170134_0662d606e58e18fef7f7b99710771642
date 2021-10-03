package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1871:Boolean = false;
      
      private var var_1870:int = 0;
      
      private var var_1774:int = 0;
      
      private var var_1873:int = 0;
      
      private var var_1872:int = 0;
      
      private var var_1773:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1872 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1870;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1871;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1871 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1870 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1774 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1872;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1873 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1774;
      }
      
      public function get pixelBalance() : int
      {
         return var_1873;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1773 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1773;
      }
   }
}
