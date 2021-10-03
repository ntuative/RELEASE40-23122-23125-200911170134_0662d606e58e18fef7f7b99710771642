package com.sulake.habbo.avatar.animation
{
   public class SpriteDataContainer implements ISpriteDataContainer
   {
       
      
      private var _id:String;
      
      private var var_1655:IAnimation;
      
      private var var_1657:Boolean;
      
      private var var_1432:int;
      
      private var var_1090:Array;
      
      private var var_1656:String;
      
      private var _dx:Array;
      
      private var var_1091:Array;
      
      public function SpriteDataContainer(param1:IAnimation, param2:XML)
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         super();
         var_1655 = param1;
         _id = String(param2.@id);
         var_1432 = parseInt(param2.@ink);
         var_1656 = String(param2.@member);
         var_1657 = Boolean(parseInt(param2.@directions));
         _dx = [];
         var_1091 = [];
         var_1090 = [];
         for each(_loc3_ in param2.direction)
         {
            _loc4_ = parseInt(_loc3_.@id);
            _dx[_loc4_] = parseInt(_loc3_.@dx);
            var_1091[_loc4_] = parseInt(_loc3_.@dy);
            var_1090[_loc4_] = parseInt(_loc3_.@dz);
         }
      }
      
      public function get animation() : IAnimation
      {
         return var_1655;
      }
      
      public function get hasDirections() : Boolean
      {
         return var_1657;
      }
      
      public function get member() : String
      {
         return var_1656;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function getDirectionOffsetZ(param1:int) : int
      {
         if(param1 < var_1090.length)
         {
            return var_1090[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetX(param1:int) : int
      {
         if(param1 < _dx.length)
         {
            return _dx[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetY(param1:int) : int
      {
         if(param1 < var_1091.length)
         {
            return var_1091[param1];
         }
         return 0;
      }
      
      public function get ink() : int
      {
         return var_1432;
      }
   }
}
