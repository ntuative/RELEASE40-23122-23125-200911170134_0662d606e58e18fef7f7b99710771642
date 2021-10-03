package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1844:Number = 0;
      
      private var var_1675:Number = 0;
      
      private var var_1676:Number = 0;
      
      private var var_1843:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1675 = param1;
         var_1676 = param2;
         var_1844 = param3;
         var_1843 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1675;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1844;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1676;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1843;
      }
   }
}
