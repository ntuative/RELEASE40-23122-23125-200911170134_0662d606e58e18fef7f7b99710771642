package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1542:Boolean;
      
      private var var_1543:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1542 = Boolean(parseInt(param1.@club));
         var_1543 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1542;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1543;
      }
   }
}
