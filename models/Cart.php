<?php
/**
 * Created by PhpStorm.
 * User: вова
 * Date: 23.01.2018
 * Time: 11:47
 */

namespace app\models;




use yii\db\ActiveRecord;

class Cart extends ActiveRecord
{
    public function behaviors()
    {
        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }

  public function addToCart($product,$qty=1){
        $mainImg=$product->getImage();
      $url=$mainImg->getUrl('x50');

      if (preg_match('%\/[0-9]{1,}\/%',$url)){
          $url= preg_replace('%\/[0-9]{1,}\/%','/yii2images/',$url);
      }
      else
          $url='/yii2images'.$url;

     if (isset($_SESSION['cart'][$product->id])){
      $_SESSION['cart'][$product->id]['qty']+=$qty;
     }
     else{
         $_SESSION['cart'][$product->id]=[
             'qty'=>$qty,
              'name'=>$product->name,
             'price'=>$product->price,
             'img'=>$url,
         ];
     }

     $_SESSION['cart.qty']=isset($_SESSION['cart.qty'])? $_SESSION['cart.qty']+$qty:$qty;
      $_SESSION['cart.sum']=isset($_SESSION['cart.sum'])? $_SESSION['cart.sum']+$qty*$product->price:$qty*$product->price;
  }
  public function reclc($id){
      if (!isset($_SESSION['cart'][$id])) return false;
     $qtyMinus=$_SESSION['cart'][$id]['qty'];
     $sumMinus=$_SESSION['cart'][$id]['qty']*$_SESSION['cart'][$id]['price'];
      $_SESSION['cart.qty']-=$qtyMinus;
      $_SESSION['cart.sum']-=$sumMinus;
      unset($_SESSION['cart'][$id]);
  }
}