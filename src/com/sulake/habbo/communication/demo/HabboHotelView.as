package com.sulake.habbo.communication.demo
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.utils.PropertyStruct;
   import com.sulake.habbo.communication.enum.HabboHotelViewEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.net.URLRequest;
   
   public class HabboHotelView implements IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_180:Function;
      
      private var var_703:uint = 0;
      
      private var var_581:IAssetLibrary;
      
      private var _window:IWindowContainer;
      
      private var _events:IEventDispatcher;
      
      public function HabboHotelView(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IEventDispatcher)
      {
         var asset:IAsset = null;
         var layout:XML = null;
         var bmp:IBitmapWrapperWindow = null;
         var result:Array = null;
         var windowManager:IHabboWindowManager = param1;
         var assetLibrary:IAssetLibrary = param2;
         var events:IEventDispatcher = param3;
         super();
         var_581 = assetLibrary;
         _events = events;
         var array:Array = new Array();
         asset = assetLibrary.getAssetByName("hotel_view_window");
         if(asset == null)
         {
            throw new Error("Missing asset; hotel view window layout!");
         }
         layout = XmlAsset(asset).content as XML;
         if(layout)
         {
            _window = windowManager.buildFromXML(layout,0) as IWindowContainer;
            _window.rectangle = _window.desktop.rectangle;
            _window.groupChildrenWithTag("bitmap",array,true);
            for each(bmp in array)
            {
               result = bmp.properties.filter(function(param1:*, param2:int, param3:Array):Boolean
               {
                  return PropertyStruct(param1).key == "bitmap_asset_name";
               });
               if(result.length)
               {
                  asset = assetLibrary.getAssetByName(PropertyStruct(result[0]).value as String);
                  if(asset && asset is BitmapDataAsset)
                  {
                     bmp.bitmap = BitmapDataAsset(asset).content as BitmapData;
                  }
               }
            }
         }
      }
      
      public function loadHotelViewImage(param1:String, param2:Function = null) : void
      {
         var _loc3_:AssetLoaderStruct = var_581.loadAssetFromFile("hotelview_png",new URLRequest(param1),"image/png");
         if(param2 == null)
         {
            _loc3_.addEventListener(AssetLoaderEvent.const_30,hotelViewLoadedHandler);
            _loc3_.addEventListener(AssetLoaderEvent.const_48,hotelViewLoadedHandler);
         }
         else
         {
            var_180 = param2;
            _loc3_.addEventListener(AssetLoaderEvent.const_30,hotelViewLoadedCallbackHandler);
            _loc3_.addEventListener(AssetLoaderEvent.const_48,hotelViewLoadedCallbackHandler);
         }
         ++var_703;
      }
      
      private function bannerLoadedCallbackHandler(param1:AssetLoaderEvent) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         var _loc3_:IAsset = var_581.getAssetByName(_loc2_.assetName);
         if(param1.type == AssetLoaderEvent.const_48)
         {
            if(_events != null)
            {
               _events.dispatchEvent(new Event(HabboHotelViewEvent.const_62));
            }
         }
         else if(param1.type == AssetLoaderEvent.const_30)
         {
            if(_events != null)
            {
               _events.dispatchEvent(new Event(HabboHotelViewEvent.const_344));
            }
            _loc4_ = BitmapDataAsset(_loc3_).content as BitmapData;
            if(_window && true)
            {
               _loc5_ = _window.findChildByName("banner_placeholder") as IBitmapWrapperWindow;
               if(_loc5_)
               {
                  _loc5_.bitmap = _loc4_;
               }
            }
            if(var_180 != null)
            {
               var_180(_loc4_);
               var_180 = null;
            }
         }
         _loc2_.removeEventListener(AssetLoaderEvent.const_30,bannerLoadedCallbackHandler);
         _loc2_.removeEventListener(AssetLoaderEvent.const_48,bannerLoadedCallbackHandler);
      }
      
      private function hotelViewLoadedCallbackHandler(param1:AssetLoaderEvent) : void
      {
         var _loc4_:* = null;
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         var _loc3_:IAsset = var_581.getAssetByName(_loc2_.assetName);
         if(param1.type == AssetLoaderEvent.const_48)
         {
            if(_events != null)
            {
               _events.dispatchEvent(new Event(HabboHotelViewEvent.const_62));
            }
         }
         else if(param1.type == AssetLoaderEvent.const_30)
         {
            if(_events != null)
            {
               _events.dispatchEvent(new Event(HabboHotelViewEvent.const_344));
            }
            _loc4_ = BitmapDataAsset(_loc3_).content as BitmapData;
            if(_window && true)
            {
            }
            if(var_180 != null)
            {
               var_180(_loc4_);
               var_180 = null;
            }
         }
         _loc2_.removeEventListener(AssetLoaderEvent.const_30,hotelViewLoadedCallbackHandler);
         _loc2_.removeEventListener(AssetLoaderEvent.const_48,hotelViewLoadedCallbackHandler);
      }
      
      public function loadBannerImage(param1:String, param2:Function) : void
      {
         var _loc3_:AssetLoaderStruct = var_581.loadAssetFromFile("hotel_view_banner_" + var_703,new URLRequest(param1),"image/png");
         if(param2 == null)
         {
            _loc3_.addEventListener(AssetLoaderEvent.const_30,bannerLoadedHandler);
            _loc3_.addEventListener(AssetLoaderEvent.const_48,bannerLoadedHandler);
         }
         else
         {
            if(_events != null)
            {
               _events.dispatchEvent(new Event(HabboHotelViewEvent.const_666));
            }
            var_180 = param2;
            _loc3_.addEventListener(AssetLoaderEvent.const_30,bannerLoadedCallbackHandler);
            _loc3_.addEventListener(AssetLoaderEvent.const_48,bannerLoadedCallbackHandler);
         }
         ++var_703;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function bannerLoadedHandler(param1:AssetLoaderEvent) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         var _loc3_:IAsset = var_581.getAssetByName(_loc2_.assetName);
         if(param1.type == AssetLoaderEvent.const_30)
         {
            _loc4_ = BitmapDataAsset(_loc3_).content as BitmapData;
            if(_window && true)
            {
               _loc5_ = _window.findChildByName("banner_placeholder") as IBitmapWrapperWindow;
               if(_loc5_)
               {
                  _loc5_.bitmap = _loc4_;
               }
            }
         }
         _loc2_.removeEventListener(AssetLoaderEvent.const_30,bannerLoadedHandler);
         _loc2_.removeEventListener(AssetLoaderEvent.const_48,bannerLoadedHandler);
      }
      
      public function hide() : void
      {
         if(_window && true)
         {
            _window.visible = false;
         }
      }
      
      private function hotelViewLoadedHandler(param1:AssetLoaderEvent) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         var _loc3_:IAsset = var_581.getAssetByName(_loc2_.assetName);
         if(param1.type == AssetLoaderEvent.const_30)
         {
            _loc4_ = BitmapDataAsset(_loc3_).content as BitmapData;
            if(_window && true)
            {
               _loc5_ = _window.findChildByTag("bitmap") as IBitmapWrapperWindow;
               if(_loc5_ != null)
               {
                  _loc5_.width = _loc4_.width;
                  _loc5_.height = _loc4_.height;
                  _loc5_.bitmap = _loc4_;
               }
            }
         }
         _loc2_.removeEventListener(AssetLoaderEvent.const_30,hotelViewLoadedHandler);
         _loc2_.removeEventListener(AssetLoaderEvent.const_48,hotelViewLoadedHandler);
      }
      
      public function show() : void
      {
         if(_window && true)
         {
            _window.visible = true;
         }
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            if(_window)
            {
               _window.dispose();
               _window = null;
            }
            _disposed = true;
            var_180 = null;
            _events = null;
         }
      }
   }
}
