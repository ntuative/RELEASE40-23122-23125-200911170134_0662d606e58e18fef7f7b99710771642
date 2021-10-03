package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1056:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_716:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1056 = param1;
         var_716 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_716;
      }
      
      public function get identifier() : IID
      {
         return var_1056;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1056 = null;
            while(false)
            {
               var_716.pop();
            }
            var_716 = null;
         }
      }
   }
}
