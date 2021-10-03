package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_834:LegacyWallGeometry = null;
      
      private var var_559:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_558:TileHeightMap = null;
      
      private var var_2084:String = null;
      
      private var _roomId:int = 0;
      
      private var var_833:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_834 = new LegacyWallGeometry();
         var_833 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_558 != null)
         {
            var_558.dispose();
         }
         var_558 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2084 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_834;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_833;
      }
      
      public function dispose() : void
      {
         if(var_558 != null)
         {
            var_558.dispose();
            var_558 = null;
         }
         if(var_834 != null)
         {
            var_834.dispose();
            var_834 = null;
         }
         if(var_833 != null)
         {
            var_833.dispose();
            var_833 = null;
         }
         if(var_559 != null)
         {
            var_559.dispose();
            var_559 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_558;
      }
      
      public function get worldType() : String
      {
         return var_2084;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_559 != null)
         {
            var_559.dispose();
         }
         var_559 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_559;
      }
   }
}
