package com.sulake.habbo.avatar.pets
{
   import flash.geom.ColorTransform;
   
   public class PetColor extends PetEditorInfo implements IPetColor
   {
       
      
      private var _id:int;
      
      private var var_1447:uint;
      
      private var var_979:uint;
      
      private var var_2024:int;
      
      private var var_1482:Number;
      
      private var _b:uint;
      
      private var var_1480:Number;
      
      private var var_1446:uint;
      
      private var _colorTransform:ColorTransform;
      
      private var var_1481:Number;
      
      public function PetColor(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var _loc2_:String = param1.text();
         var_979 = parseInt(_loc2_,16);
         var_1447 = var_979 >> 16 & 255;
         var_1446 = var_979 >> 8 & 255;
         _b = var_979 >> 0 & 255;
         var_1481 = var_1447 / 255 * 1;
         var_1480 = var_1446 / 255 * 1;
         var_1482 = _b / 255 * 1;
         _colorTransform = new ColorTransform(var_1481,var_1480,var_1482);
      }
      
      public function set figurePartPaletteColorId(param1:int) : void
      {
         var_2024 = param1;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return _colorTransform;
      }
      
      public function get rgb() : uint
      {
         return var_979;
      }
      
      public function get figurePartPaletteColorId() : int
      {
         return var_2024;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get g() : uint
      {
         return var_1446;
      }
      
      public function get b() : uint
      {
         return _b;
      }
      
      public function get r() : uint
      {
         return var_1447;
      }
   }
}
