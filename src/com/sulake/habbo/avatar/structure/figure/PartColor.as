package com.sulake.habbo.avatar.structure.figure
{
   import flash.geom.ColorTransform;
   
   public class PartColor implements IPartColor
   {
       
      
      private var _id:int;
      
      private var var_1447:uint;
      
      private var var_979:uint;
      
      private var _index:int;
      
      private var var_2095:int;
      
      private var var_1482:Number;
      
      private var _b:uint;
      
      private var var_1480:Number;
      
      private var var_1446:uint;
      
      private var _colorTransform:ColorTransform;
      
      private var var_1481:Number;
      
      private var var_1543:Boolean = false;
      
      public function PartColor(param1:XML)
      {
         super();
         _id = parseInt(param1.@id);
         _index = parseInt(param1.@index);
         var_2095 = parseInt(param1.@club);
         var_1543 = Boolean(parseInt(param1.@selectable));
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
      
      public function get colorTransform() : ColorTransform
      {
         return _colorTransform;
      }
      
      public function get rgb() : uint
      {
         return var_979;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get blueMultiplier() : Number
      {
         return var_1482;
      }
      
      public function get r() : uint
      {
         return var_1447;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1543;
      }
      
      public function get b() : uint
      {
         return _b;
      }
      
      public function get greenMultiplier() : Number
      {
         return var_1480;
      }
      
      public function get g() : uint
      {
         return var_1446;
      }
      
      public function get redMultiplier() : Number
      {
         return var_1481;
      }
      
      public function get club() : int
      {
         return var_2095;
      }
   }
}
