package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1032:int = 1;
      
      private static const const_1042:int = 3;
      
      private static const const_1033:int = 2;
      
      private static const const_1031:int = 15;
       
      
      private var var_745:int;
      
      private var var_223:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_223 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1033)
         {
            var_223 = new Array();
            var_223.push(const_1032);
            var_745 = const_1031;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_745 > 0)
         {
            --var_745;
         }
         if(var_745 == 0)
         {
            if(false)
            {
               super.setAnimation(var_223.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
