package com.sulake.habbo.avatar.animation
{
   import com.sulake.core.utils.Map;
   import flash.geom.ColorTransform;
   
   public class AvatarDataContainer implements IAvatarDataContainer
   {
       
      
      private var _alphaMultiplier:Number = 1;
      
      private var var_1952:uint;
      
      private var var_979:uint;
      
      private var var_962:Map;
      
      private var var_1482:Number = 1;
      
      private var _b:uint;
      
      private var var_1480:Number = 1;
      
      private var var_1432:int;
      
      private var _colorTransform:ColorTransform;
      
      private var var_1953:uint;
      
      private var var_1446:uint;
      
      private var var_1481:Number = 1;
      
      private var var_1951:Boolean = true;
      
      private var var_1447:uint;
      
      public function AvatarDataContainer(param1:XML)
      {
         super();
         var_1432 = parseInt(param1.@ink);
         var _loc2_:String = String(param1.@foreground);
         _loc2_ = _loc2_.replace("#","");
         var _loc3_:String = String(param1.@background);
         _loc3_ = _loc3_.replace("#","");
         var_1952 = parseInt(_loc2_,16);
         var_1953 = parseInt(_loc3_,16);
         var_979 = parseInt(_loc2_,16);
         var_1447 = var_979 >> 16 & 255;
         var_1446 = var_979 >> 8 & 255;
         _b = var_979 >> 0 & 255;
         var_1481 = var_1447 / 255 * 1;
         var_1480 = var_1446 / 255 * 1;
         var_1482 = _b / 255 * 1;
         if(var_1432 == 37)
         {
            _alphaMultiplier = 0.5;
            var_1951 = false;
         }
         _colorTransform = new ColorTransform(var_1481,var_1480,var_1482,_alphaMultiplier);
         var_962 = generatePaletteMapForGrayscale(var_1953,var_1952);
      }
      
      public function get reds() : Array
      {
         return var_962.getValue("reds") as Array;
      }
      
      private function generatePaletteMapForGrayscale(param1:uint, param2:uint) : Map
      {
         var _loc3_:* = param1 >> 24 & 255;
         var _loc4_:* = param1 >> 16 & 255;
         var _loc5_:* = param1 >> 8 & 255;
         var _loc6_:* = param1 >> 0 & 255;
         var _loc7_:* = param2 >> 24 & 255;
         var _loc8_:* = param2 >> 16 & 255;
         var _loc9_:* = param2 >> 8 & 255;
         var _loc10_:* = param2 >> 0 & 255;
         var _loc11_:Number = (_loc7_ - _loc3_) / 255;
         var _loc12_:Number = (_loc8_ - _loc4_) / 255;
         var _loc13_:Number = (_loc9_ - _loc5_) / 255;
         var _loc14_:Number = (_loc10_ - _loc6_) / 255;
         var _loc15_:Map = new Map();
         var _loc16_:* = [];
         var _loc17_:* = [];
         var _loc18_:* = [];
         var _loc19_:* = [];
         var _loc20_:* = Number(_loc3_);
         var _loc21_:Number = _loc4_;
         var _loc22_:Number = _loc5_;
         var _loc23_:Number = _loc6_;
         var _loc24_:int = 0;
         while(_loc24_ < 256)
         {
            if(_loc21_ == _loc4_ && _loc22_ == _loc5_ && _loc23_ == _loc6_)
            {
               _loc20_ = 0;
            }
            _loc20_ += _loc11_;
            _loc21_ += _loc12_;
            _loc22_ += _loc13_;
            _loc23_ += _loc14_;
            _loc19_.push(_loc20_ << 24);
            _loc16_.push(_loc20_ << 24 | _loc21_ << 16 | _loc22_ << 8 | _loc23_);
            _loc17_.push(_loc20_ << 24 | _loc21_ << 16 | _loc22_ << 8 | _loc23_);
            _loc18_.push(_loc20_ << 24 | _loc21_ << 16 | _loc22_ << 8 | _loc23_);
            _loc24_++;
         }
         _loc15_.add("alphas",_loc16_);
         _loc15_.add("reds",_loc16_);
         _loc15_.add("greens",_loc17_);
         _loc15_.add("blues",_loc18_);
         return _loc15_;
      }
      
      public function get blues() : Array
      {
         return var_962.getValue("blues") as Array;
      }
      
      public function get greens() : Array
      {
         return var_962.getValue("greens") as Array;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return _colorTransform;
      }
      
      public function get alphas() : Array
      {
         return var_962.getValue("alphas") as Array;
      }
      
      public function get paletteIsGrayscale() : Boolean
      {
         return var_1951;
      }
      
      public function get ink() : int
      {
         return var_1432;
      }
   }
}
