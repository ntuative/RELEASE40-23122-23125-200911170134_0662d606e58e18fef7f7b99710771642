package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1624:Class;
      
      private var var_1625:Class;
      
      private var var_1623:String;
      
      private var var_1085:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1623 = param1;
         var_1625 = param2;
         var_1624 = param3;
         if(rest == null)
         {
            var_1085 = new Array();
         }
         else
         {
            var_1085 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1624;
      }
      
      public function get assetClass() : Class
      {
         return var_1625;
      }
      
      public function get mimeType() : String
      {
         return var_1623;
      }
      
      public function get fileTypes() : Array
      {
         return var_1085;
      }
   }
}
