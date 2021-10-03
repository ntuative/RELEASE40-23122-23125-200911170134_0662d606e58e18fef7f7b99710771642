package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1774:int = 0;
      
      private var var_1776:int = 0;
      
      private var var_1775:int = 0;
      
      private var var_1773:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1776;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1776 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1774 = param1;
      }
      
      public function get credits() : int
      {
         return var_1775;
      }
      
      public function get clubDays() : int
      {
         return var_1774;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1773 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1775 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1773;
      }
   }
}
