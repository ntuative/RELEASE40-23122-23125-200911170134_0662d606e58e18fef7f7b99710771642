package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_610:IAssetLoader;
      
      private var var_1228:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1228 = param1;
         var_610 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_610;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_610 != null)
            {
               if(true)
               {
                  var_610.dispose();
                  var_610 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1228;
      }
   }
}
