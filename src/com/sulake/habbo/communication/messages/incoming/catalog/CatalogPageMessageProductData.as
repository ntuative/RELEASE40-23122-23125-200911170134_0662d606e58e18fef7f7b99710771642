package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_313:String = "e";
      
      public static const const_130:String = "i";
      
      public static const const_150:String = "s";
       
      
      private var var_886:String;
      
      private var var_1076:String;
      
      private var var_1075:int;
      
      private var var_2096:int;
      
      private var var_885:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1076 = param1.readString();
         var_2096 = param1.readInteger();
         var_886 = param1.readString();
         var_885 = param1.readInteger();
         var_1075 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_885;
      }
      
      public function get productType() : String
      {
         return var_1076;
      }
      
      public function get expiration() : int
      {
         return var_1075;
      }
      
      public function get furniClassId() : int
      {
         return var_2096;
      }
      
      public function get extraParam() : String
      {
         return var_886;
      }
   }
}
