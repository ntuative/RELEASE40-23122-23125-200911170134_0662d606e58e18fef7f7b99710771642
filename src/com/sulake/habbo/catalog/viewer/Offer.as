package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_918:String = "price_type_none";
      
      public static const const_382:String = "pricing_model_multi";
      
      public static const const_295:String = "price_type_credits";
      
      public static const const_420:String = "price_type_credits_and_pixels";
      
      public static const const_348:String = "pricing_model_bundle";
      
      public static const const_438:String = "pricing_model_single";
      
      public static const const_575:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1211:String = "pricing_model_unknown";
      
      public static const const_368:String = "price_type_pixels";
       
      
      private var var_794:int;
      
      private var var_1198:int;
      
      private var var_793:int;
      
      private var var_386:String;
      
      private var var_536:String;
      
      private var var_1932:int;
      
      private var var_657:ICatalogPage;
      
      private var var_1197:String;
      
      private var var_649:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         var_1198 = param1.offerId;
         var_1197 = param1.localizationId;
         var_794 = param1.priceInCredits;
         var_793 = param1.priceInPixels;
         var_657 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(_loc4_.productType);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_386;
      }
      
      public function get page() : ICatalogPage
      {
         return var_657;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1932 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_649;
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
      
      public function dispose() : void
      {
         var_1198 = 0;
         var_1197 = "";
         var_794 = 0;
         var_793 = 0;
         var_649.dispose();
      }
      
      public function get priceType() : String
      {
         return var_536;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1932;
      }
      
      public function get priceInCredits() : int
      {
         return var_794;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_386 = const_438;
            }
            else
            {
               var_386 = const_382;
            }
         }
         else if(param1.length > 1)
         {
            var_386 = const_348;
         }
         else
         {
            var_386 = const_1211;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_386)
         {
            case const_438:
               var_649 = new SingleProductContainer(this,param1);
               break;
            case const_382:
               var_649 = new MultiProductContainer(this,param1);
               break;
            case const_348:
               var_649 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_386);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_794 > 0 && var_793 > 0)
         {
            var_536 = const_420;
         }
         else if(var_794 > 0)
         {
            var_536 = const_295;
         }
         else if(var_793 > 0)
         {
            var_536 = const_368;
         }
         else
         {
            var_536 = const_918;
         }
      }
   }
}
