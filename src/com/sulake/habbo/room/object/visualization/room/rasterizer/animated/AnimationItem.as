package com.sulake.habbo.room.object.visualization.room.rasterizer.animated
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class AnimationItem
   {
       
      
      private var var_894:Number = 0;
      
      private var var_893:Number = 0;
      
      private var _bitmapData:BitmapData = null;
      
      private var var_89:Number = 0;
      
      private var _y:Number = 0;
      
      public function AnimationItem(param1:Number, param2:Number, param3:Number, param4:Number, param5:BitmapData)
      {
         super();
         var_89 = param1;
         _y = param2;
         var_894 = param3;
         var_893 = param4;
         if(isNaN(var_89))
         {
            var_89 = 0;
         }
         if(isNaN(_y))
         {
            _y = 0;
         }
         if(isNaN(var_894))
         {
            var_894 = 0;
         }
         if(isNaN(var_893))
         {
            var_893 = 0;
         }
         _bitmapData = param5;
      }
      
      public function getPosition(param1:int, param2:int, param3:Number, param4:Number, param5:int) : Point
      {
         var _loc6_:Number = var_89;
         var _loc7_:Number = _y;
         if(param3 > 0)
         {
            _loc6_ += var_894 / param3 * param5 / 1000;
         }
         if(param4 > 0)
         {
            _loc7_ += var_893 / param4 * param5 / 1000;
         }
         var _loc8_:int = _loc6_ % 1 * param1;
         var _loc9_:int = _loc7_ % 1 * param2;
         return new Point(_loc8_,_loc9_);
      }
      
      public function get bitmapData() : BitmapData
      {
         return _bitmapData;
      }
      
      public function dispose() : void
      {
         _bitmapData = null;
      }
   }
}
