package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_428:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_562:int = 0;
      
      public static const const_904:int = 2;
      
      public static const const_812:int = 1;
      
      public static const const_520:Boolean = false;
      
      public static const const_517:String = "";
      
      public static const const_417:int = 0;
      
      public static const const_406:int = 0;
      
      public static const const_429:int = 0;
       
      
      private var var_1982:int = 0;
      
      private var var_1710:String = "";
      
      private var var_1432:int = 0;
      
      private var var_1983:int = 0;
      
      private var var_1984:Number = 0;
      
      private var var_1771:int = 255;
      
      private var var_1981:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1982;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            method_3 = param1.method_3;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1432 = param1;
      }
      
      public function get method_3() : Number
      {
         return var_1984;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1983 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1982 = param1;
      }
      
      public function get tag() : String
      {
         return var_1710;
      }
      
      public function get alpha() : int
      {
         return var_1771;
      }
      
      public function get ink() : int
      {
         return var_1432;
      }
      
      public function set method_3(param1:Number) : void
      {
         var_1984 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1983;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1981 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1981;
      }
      
      public function set tag(param1:String) : void
      {
         var_1710 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1771 = param1;
      }
   }
}
