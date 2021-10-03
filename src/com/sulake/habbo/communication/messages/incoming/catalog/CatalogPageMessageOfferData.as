package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_761:Array;
      
      private var var_794:int;
      
      private var var_1197:String;
      
      private var var_1198:int;
      
      private var var_793:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         var_1198 = param1.readInteger();
         var_1197 = param1.readString();
         var_794 = param1.readInteger();
         var_793 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_761 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_761.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_761;
      }
      
      public function get priceInCredits() : int
      {
         return var_794;
      }
      
      public function get localizationId() : String
      {
         return var_1197;
      }
      
      public function get offerId() : int
      {
         return var_1198;
      }
      
      public function get priceInPixels() : int
      {
         return var_793;
      }
   }
}
