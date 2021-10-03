package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_49:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1;
      
      private var var_1750:Number = -1;
      
      private var var_728:IGraphicAsset = null;
      
      private var var_1748:Number = 1;
      
      private var var_1749:Number = -1;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1, param3:Number = 1, param4:Number = -1, param5:Number = 1)
      {
         super();
         var_1750 = param2;
         _normalMaxX = param3;
         var_1749 = param4;
         var_1748 = param5;
         var_728 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1748;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1750;
      }
      
      public function get normalMinY() : Number
      {
         return var_1749;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_728;
      }
      
      public function dispose() : void
      {
         var_728 = null;
      }
   }
}
