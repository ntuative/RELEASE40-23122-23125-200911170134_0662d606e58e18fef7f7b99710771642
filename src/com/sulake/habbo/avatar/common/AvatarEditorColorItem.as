package com.sulake.habbo.avatar.common
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class AvatarEditorColorItem
   {
       
      
      private const const_1552:int = 8947848;
      
      private const const_1551:int = 13421772;
      
      private var _isSelected:Boolean = false;
      
      private var var_1320:BitmapData;
      
      private var _window:IWindowContainer;
      
      private var var_680:BitmapData;
      
      private var var_87:IAvatarEditorCategoryModel;
      
      private var var_772:IPartColor;
      
      private var var_1172:BitmapData;
      
      private var var_942:BitmapData;
      
      public function AvatarEditorColorItem(param1:IWindowContainer, param2:IAvatarEditorCategoryModel, param3:IPartColor)
      {
         super();
         var_87 = param2;
         _window = param1;
         _window.background = true;
         var_772 = param3;
         var _loc4_:BitmapDataAsset = param2.controller.assets.getAssetByName("editor_clr_40x32_1") as BitmapDataAsset;
         var_680 = _loc4_.content as BitmapData;
         var _loc5_:BitmapDataAsset = param2.controller.assets.getAssetByName("editor_clr_40x32_2") as BitmapDataAsset;
         var_1172 = _loc5_.content as BitmapData;
         var _loc6_:BitmapDataAsset = param2.controller.assets.getAssetByName("editor_clr_40x32_3") as BitmapDataAsset;
         var_942 = _loc6_.content as BitmapData;
         var _loc7_:BitmapDataAsset = param2.controller.assets.getAssetByName("habbo_club_icon") as BitmapDataAsset;
         var_1320 = _loc7_.content as BitmapData;
         updateThumbData();
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
         updateThumbData();
      }
      
      private function updateThumbData() : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(_window == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = _window.findChildByTag("BG_BORDER") as IBitmapWrapperWindow;
         if(_loc1_ != null)
         {
            _loc1_.bitmap = new BitmapData(var_680.width,var_680.height,true,0);
            _loc1_.bitmap.copyPixels(var_680,var_680.rect,new Point(0,0));
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByTag("COLOR_IMAGE") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = new BitmapData(var_1172.width,var_1172.height,true,0);
            _loc4_ = var_1172.clone();
            _loc4_.colorTransform(_loc4_.rect,var_772.colorTransform);
            _loc2_.bitmap.copyPixels(_loc4_,_loc4_.rect,new Point(0,0));
         }
         var _loc3_:IBitmapWrapperWindow = _window.findChildByTag("COLOR_CHOSEN") as IBitmapWrapperWindow;
         if(_loc3_ != null)
         {
            _loc3_.bitmap = new BitmapData(var_942.width,var_942.height,true,16777215);
            _loc3_.bitmap.copyPixels(var_942,var_942.rect,new Point(0,0),null,null,true);
            if(!_isSelected)
            {
               _loc3_.visible = false;
            }
            else
            {
               _loc3_.visible = true;
            }
         }
         if(false)
         {
            _loc5_ = _window.findChildByTag("CLUB_ICON") as IBitmapWrapperWindow;
            if(_loc5_ != null)
            {
               _loc5_.bitmap = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
               _loc5_.bitmap.copyPixels(var_1320,var_1320.rect,new Point(0,0),null,null,true);
            }
         }
      }
      
      public function dispose() : void
      {
         var_87 = null;
         if(_window != null)
         {
            if(true)
            {
               _window.dispose();
            }
         }
         _window = null;
         var_772 = null;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get view() : IWindowContainer
      {
         return _window;
      }
      
      public function get partColor() : IPartColor
      {
         return var_772;
      }
   }
}