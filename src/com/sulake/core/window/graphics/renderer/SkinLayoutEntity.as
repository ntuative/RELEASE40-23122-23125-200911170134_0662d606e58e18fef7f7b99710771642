package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_249:uint = 1;
      
      public static const const_381:uint = 0;
      
      public static const const_930:uint = 8;
      
      public static const const_265:uint = 4;
      
      public static const const_374:uint = 2;
       
      
      private var var_405:uint;
      
      private var var_1995:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1994:uint;
      
      private var var_102:Rectangle;
      
      private var var_569:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_102 = param3;
         _color = param4;
         var_405 = param5;
         var_1995 = param6;
         var_1994 = param7;
         var_569 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1995;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_405;
      }
      
      public function get scaleV() : uint
      {
         return var_1994;
      }
      
      public function get tags() : Array
      {
         return var_569;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_102 = null;
         var_569 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_102;
      }
   }
}
