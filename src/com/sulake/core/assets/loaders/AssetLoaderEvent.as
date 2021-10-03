package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_782:String = "AssetLoaderEventUnload";
      
      public static const const_48:String = "AssetLoaderEventError";
      
      public static const const_887:String = "AssetLoaderEventOpen";
      
      public static const const_789:String = "AssetLoaderEventProgress";
      
      public static const const_820:String = "AssetLoaderEventStatus";
      
      public static const const_30:String = "AssetLoaderEventComplete";
       
      
      private var var_345:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_345 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_345;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_345);
      }
   }
}
