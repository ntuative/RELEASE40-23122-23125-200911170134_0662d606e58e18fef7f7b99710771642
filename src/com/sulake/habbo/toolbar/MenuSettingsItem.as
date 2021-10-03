package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1690:Array;
      
      private var var_1688:String;
      
      private var var_1689:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1688 = param1;
         var_1690 = param2;
         var_1689 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1688;
      }
      
      public function get yieldList() : Array
      {
         return var_1690;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1689;
      }
   }
}
