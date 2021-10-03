package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1716:int;
      
      private var var_1555:int;
      
      private var var_1719:int;
      
      private var var_1765:int;
      
      private var var_1711:int;
      
      private var var_1107:int;
      
      private var var_1766:int;
      
      private var var_1768:int;
      
      private var var_1718:int;
      
      private var var_1767:int;
      
      private var _ownerName:String;
      
      private var var_1712:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1766 = param1;
      }
      
      public function get level() : int
      {
         return var_1716;
      }
      
      public function get energy() : int
      {
         return var_1718;
      }
      
      public function set respect(param1:int) : void
      {
         var_1555 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         var_1718 = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1716 = param1;
      }
      
      public function get petId() : int
      {
         return var_1107;
      }
      
      public function get experienceMax() : int
      {
         return var_1768;
      }
      
      public function get nutritionMax() : int
      {
         return var_1765;
      }
      
      public function get ownerId() : int
      {
         return var_1712;
      }
      
      public function get nutrition() : int
      {
         return var_1711;
      }
      
      public function set petId(param1:int) : void
      {
         var_1107 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         var_1711 = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1767;
      }
      
      public function get levelMax() : int
      {
         return var_1766;
      }
      
      public function get respect() : int
      {
         return var_1555;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1768 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1719 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1765 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1712 = param1;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get experience() : int
      {
         return var_1719;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1767 = param1;
      }
   }
}
