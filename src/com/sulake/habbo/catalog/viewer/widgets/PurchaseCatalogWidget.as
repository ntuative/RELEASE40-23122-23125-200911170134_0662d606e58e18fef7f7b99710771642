package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1550:XML;
      
      private var var_1306:ITextWindow;
      
      private var var_1305:ITextWindow;
      
      private var var_1553:XML;
      
      private var var_712:IWindowContainer;
      
      private var var_2149:ITextWindow;
      
      private var var_1551:String = "";
      
      private var var_2215:IButtonWindow;
      
      private var var_1552:XML;
      
      private var var_1307:ITextWindow;
      
      private var var_1549:XML;
      
      private var var_711:IButtonWindow;
      
      private var var_176:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_295:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1553) as IWindowContainer;
               break;
            case Offer.const_368:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1549) as IWindowContainer;
               break;
            case Offer.const_420:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1550) as IWindowContainer;
               break;
            case Offer.const_575:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1552) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_712 != null)
            {
               _window.removeChild(var_712);
               var_712.dispose();
            }
            var_712 = _loc2_;
            _window.addChild(_loc2_);
            var_712.x = 0;
            var_712.y = 0;
         }
         var_1307 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1305 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1306 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2149 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_711 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_711 != null)
         {
            var_711.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_711.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_176 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_176,page,var_1551);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1553 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1549 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1550 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1552 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_967,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1551 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_176 = param1.offer;
         attachStub(var_176.priceType);
         if(var_1307 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_176.priceInCredits));
            var_1307.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1305 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_176.priceInPixels));
            var_1305.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1306 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_176.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_176.priceInPixels));
            var_1306.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_711 != null)
         {
            var_711.enable();
         }
      }
   }
}
