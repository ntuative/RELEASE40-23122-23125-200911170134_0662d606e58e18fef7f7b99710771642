package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1142:AssetTypeDeclaration;
      
      private var var_850:String;
      
      private var var_33:Object = null;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1142 = param1;
         var_850 = param2;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1142;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var_33 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         var_33 = param1.content as Object;
      }
      
      public function get content() : Object
      {
         return var_33;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_33 = null;
            var_1142 = null;
            var_850 = null;
         }
      }
      
      public function get url() : String
      {
         return var_850;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + var_33;
      }
   }
}
