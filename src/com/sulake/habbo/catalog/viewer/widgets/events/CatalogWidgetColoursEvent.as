package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1255:Array;
      
      private var var_2047:String;
      
      private var var_2045:String;
      
      private var var_2046:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1255 = param1;
         var_2047 = param2;
         var_2045 = param3;
         var_2046 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1255;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_2047;
      }
      
      public function get colourAssetName() : String
      {
         return var_2045;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_2046;
      }
   }
}
