package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct
   {
       
      
      private var var_988:IID;
      
      private var var_396:uint;
      
      private var var_1231:IUnknown;
      
      private var var_1232:String;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_988 = param1;
         var_1232 = getQualifiedClassName(var_988);
         var_1231 = param2;
         var_396 = 0;
      }
      
      public function get iid() : IID
      {
         return var_988;
      }
      
      public function get references() : uint
      {
         return var_396;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_396) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1231;
      }
      
      public function get iis() : String
      {
         return var_1232;
      }
      
      public function reserve() : uint
      {
         return ++var_396;
      }
      
      public function dispose() : void
      {
         var_988 = null;
         var_1232 = null;
         var_1231 = null;
         var_396 = 0;
      }
   }
}
