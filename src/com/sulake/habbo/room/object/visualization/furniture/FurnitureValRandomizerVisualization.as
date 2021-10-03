package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1043:int = 31;
      
      private static const const_1042:int = 32;
      
      private static const const_476:int = 30;
      
      private static const const_737:int = 20;
      
      private static const const_477:int = 10;
       
      
      private var var_502:Boolean = false;
      
      private var var_223:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_223 = new Array();
         super();
         super.setAnimation(const_476);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_502 = true;
            var_223 = new Array();
            var_223.push(const_1043);
            var_223.push(const_1042);
            return;
         }
         if(param1 > 0 && param1 <= const_477)
         {
            if(var_502)
            {
               var_502 = false;
               var_223 = new Array();
               if(_direction == 2)
               {
                  var_223.push(const_737 + 5 - param1);
                  var_223.push(const_477 + 5 - param1);
               }
               else
               {
                  var_223.push(const_737 + param1);
                  var_223.push(const_477 + param1);
               }
               var_223.push(const_476);
               return;
            }
            super.setAnimation(const_476);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
