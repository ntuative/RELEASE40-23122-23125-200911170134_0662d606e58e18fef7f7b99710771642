package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1956:int;
      
      private var var_1957:String;
      
      private var var_1299:IActionDefinition;
      
      private var var_1958:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1959:String;
      
      private var var_1960:String;
      
      private var var_1541:Boolean;
      
      private var var_1955:ColorTransform;
      
      private var var_1622:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1957 = param1;
         var_1959 = param2;
         var_1956 = param3;
         _color = param4;
         _frames = param5;
         var_1299 = param6;
         var_1541 = param7;
         var_1622 = param8;
         var_1960 = param9;
         var_1958 = param10;
         var_1955 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1541;
      }
      
      public function get partType() : String
      {
         return var_1959;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1622;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1958;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1956;
      }
      
      public function get flippedPartType() : String
      {
         return var_1960;
      }
      
      public function get bodyPartId() : String
      {
         return var_1957;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1299;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1955;
      }
   }
}
