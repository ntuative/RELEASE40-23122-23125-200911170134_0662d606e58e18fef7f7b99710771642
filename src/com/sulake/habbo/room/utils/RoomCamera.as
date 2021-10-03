package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_329:Number = 0.5;
      
      private static const const_736:int = 3;
      
      private static const const_1041:Number = 1;
       
      
      private var var_1799:Boolean = false;
      
      private var _targetCategory:int = -2;
      
      private var var_1797:Boolean = false;
      
      private var var_1796:Boolean = false;
      
      private var var_1798:Boolean = false;
      
      private var var_1800:int = -1;
      
      private var var_924:int = 0;
      
      private var var_253:Vector3d = null;
      
      private var var_369:Vector3d = null;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1797;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1796;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_369 != null && var_253 != null)
         {
            ++var_924;
            _loc2_ = Vector3d.dif(var_369,var_253);
            if(_loc2_.length <= const_329)
            {
               var_253 = var_369;
               var_369 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_329 * (const_736 + 1))
               {
                  _loc2_.mul(const_329);
               }
               else if(var_924 <= const_736)
               {
                  _loc2_.mul(const_329);
               }
               else
               {
                  _loc2_.mul(const_1041);
               }
               var_253 = Vector3d.sum(var_253,_loc2_);
            }
         }
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1797 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1798 = param1;
      }
      
      public function get targetId() : int
      {
         return var_1800;
      }
      
      public function set targetCategory(param1:int) : void
      {
         _targetCategory = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_369 == null)
         {
            var_369 = new Vector3d();
         }
         var_369.assign(param1);
         var_924 = 0;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1796 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_253 != null)
         {
            return;
         }
         var_253 = new Vector3d();
         var_253.assign(param1);
      }
      
      public function set targetId(param1:int) : void
      {
         var_1800 = param1;
      }
      
      public function dispose() : void
      {
         var_369 = null;
         var_253 = null;
      }
      
      public function get targetCategory() : int
      {
         return _targetCategory;
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1799;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1798;
      }
      
      public function get location() : IVector3d
      {
         return var_253;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1799 = param1;
      }
   }
}
