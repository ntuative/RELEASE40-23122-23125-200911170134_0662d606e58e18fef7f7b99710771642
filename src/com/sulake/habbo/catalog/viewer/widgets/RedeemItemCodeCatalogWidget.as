package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   import flash.ui.Keyboard;
   
   public class RedeemItemCodeCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_902:IButtonWindow;
      
      private var var_903:ITextFieldWindow;
      
      public function RedeemItemCodeCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function redeem() : void
      {
         var voucher:String = null;
         var input:ITextFieldWindow = _window.findChildByName("voucher_code") as ITextFieldWindow;
         if(input != null)
         {
            voucher = input.text;
            if(voucher.length > 0)
            {
               page.viewer.catalog.redeemVoucher(voucher);
               input.text = "";
            }
            else
            {
               page.viewer.catalog.windowManager.alert("${catalog.voucher.empty.title}","${catalog.voucher.empty.desc}",0,function(param1:IAlertDialog, param2:Event):void
               {
                  param1.dispose();
               });
            }
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(var_902 != null)
         {
            var_902.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onRedeem);
         }
         if(var_903 != null)
         {
            var_903.removeEventListener(WindowKeyboardEvent.const_138,windowKeyEventProcessor);
         }
      }
      
      private function windowKeyEventProcessor(param1:Event = null, param2:IWindow = null) : void
      {
         var _loc3_:WindowKeyboardEvent = param1 as WindowKeyboardEvent;
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            redeem();
         }
      }
      
      override public function init() : void
      {
         super.init();
         var_902 = _window.findChildByName("redeem") as IButtonWindow;
         if(var_902 != null)
         {
            var_902.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onRedeem);
         }
         var_903 = _window.findChildByName("voucher_code") as ITextFieldWindow;
         if(var_903 != null)
         {
            var_903.addEventListener(WindowKeyboardEvent.const_138,windowKeyEventProcessor);
         }
      }
      
      private function onRedeem(param1:WindowMouseEvent) : void
      {
         redeem();
      }
   }
}
