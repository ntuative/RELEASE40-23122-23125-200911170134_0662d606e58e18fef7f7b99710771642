package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_1778:int = -1;
      
      private var var_1211:int = -1;
      
      private var var_609:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_609 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_1778;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_1778 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_609.assign(param1);
         var_609.x = Math.round(var_609.x);
         var_609.y = Math.round(var_609.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1211 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_609;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1211;
      }
   }
}
