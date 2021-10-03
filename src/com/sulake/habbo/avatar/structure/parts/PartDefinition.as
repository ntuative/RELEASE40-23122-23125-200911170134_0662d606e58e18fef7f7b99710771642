package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1319:int = -1;
      
      private var var_1070:Boolean;
      
      private var var_1069:String;
      
      private var var_1593:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1593 = String(param1["set-type"]);
         var_1069 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1070 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1319 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1069;
      }
      
      public function get staticId() : int
      {
         return var_1319;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1319 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1070;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1070 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1069 = param1;
      }
      
      public function get setType() : String
      {
         return var_1593;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
