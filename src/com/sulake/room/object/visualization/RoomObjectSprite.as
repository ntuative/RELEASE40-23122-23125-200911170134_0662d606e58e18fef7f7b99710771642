package com.sulake.room.object.visualization
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
       
      
      private var var_1006:Boolean = false;
      
      private var var_1770:Boolean = false;
      
      private var var_1128:String = "normal";
      
      private var var_1228:String = "";
      
      private var var_1769:Boolean = false;
      
      private var _offset:Point;
      
      private var var_311:Boolean = true;
      
      private var var_1772:Boolean = true;
      
      private var var_907:Number = 0;
      
      private var _height:int = 0;
      
      private var _width:int = 0;
      
      private var var_1710:String = "";
      
      private var var_1771:uint = 255;
      
      private var _color:uint = 16777215;
      
      private var var_728:IAsset = null;
      
      private var var_1005:Boolean = false;
      
      public function RoomObjectSprite()
      {
         _offset = new Point(0,0);
         super();
      }
      
      public function get flipV() : Boolean
      {
         return var_1006;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1769;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_1006 = param1;
      }
      
      public function get tag() : String
      {
         return var_1710;
      }
      
      public function dispose() : void
      {
         var_728 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1128 = param1;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1772 = param1;
      }
      
      public function get blendMode() : String
      {
         return var_1128;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_907 = param1;
      }
      
      public function set tag(param1:String) : void
      {
         var_1710 = param1;
      }
      
      public function set alpha(param1:uint) : void
      {
         if(param1 > 255)
         {
            param1 = 255;
         }
         var_1771 = param1;
      }
      
      public function get assetName() : String
      {
         return var_1228;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1772;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1770;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1228 = param1;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get relativeDepth() : Number
      {
         return var_907;
      }
      
      public function get alpha() : uint
      {
         return var_1771;
      }
      
      public function set asset(param1:IAsset) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 is BitmapDataAsset)
         {
            var_728 = param1;
            _width = 0;
            _height = 0;
            if(param1 != null)
            {
               _loc2_ = param1 as BitmapDataAsset;
               _loc3_ = _loc2_.content as BitmapData;
               if(_loc3_ != null)
               {
                  _width = _loc3_.width;
                  _height = _loc3_.height;
               }
            }
         }
         else if(param1 == null)
         {
            var_728 = null;
            _width = 0;
            _height = 0;
         }
      }
      
      public function set color(param1:uint) : void
      {
         param1 &= 16777215;
         _color = param1;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1770 = param1;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1769 = param1;
      }
      
      public function get asset() : IAsset
      {
         return var_728;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_311 = param1;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_1005 = param1;
      }
      
      public function get visible() : Boolean
      {
         return var_311;
      }
      
      public function get flipH() : Boolean
      {
         return var_1005;
      }
   }
}
