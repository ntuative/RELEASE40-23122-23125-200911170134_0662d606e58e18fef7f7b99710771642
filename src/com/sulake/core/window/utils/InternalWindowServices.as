package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_122:DisplayObject;
      
      private var var_2178:uint;
      
      private var var_801:IWindowToolTipAgentService;
      
      private var var_800:IWindowMouseScalingService;
      
      private var var_389:IWindowContext;
      
      private var var_799:IWindowFocusManagerService;
      
      private var var_798:IWindowMouseListenerService;
      
      private var var_797:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2178 = 0;
         var_122 = param2;
         var_389 = param1;
         var_797 = new WindowMouseDragger(param2);
         var_800 = new WindowMouseScaler(param2);
         var_798 = new WindowMouseListener(param2);
         var_799 = new FocusManager(param2);
         var_801 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_800;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_799;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_801;
      }
      
      public function dispose() : void
      {
         if(var_797 != null)
         {
            var_797.dispose();
            var_797 = null;
         }
         if(var_800 != null)
         {
            var_800.dispose();
            var_800 = null;
         }
         if(var_798 != null)
         {
            var_798.dispose();
            var_798 = null;
         }
         if(var_799 != null)
         {
            var_799.dispose();
            var_799 = null;
         }
         if(var_801 != null)
         {
            var_801.dispose();
            var_801 = null;
         }
         var_389 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_798;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_797;
      }
   }
}
