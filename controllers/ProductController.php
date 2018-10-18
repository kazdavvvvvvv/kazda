<?php
/**
 * Created by PhpStorm.
 * User: вова
 * Date: 20.01.2018
 * Time: 12:35
 */

namespace app\controllers;
use app\models\Category;
use app\models\Product;
use Yii;
use yii\web\HttpException;

class ProductController extends AppController
{
   public function actionView($id){
       //$id=Yii::$app->request->get('id');
       $product=Product::findOne($id);
       if(empty($product))
           throw new HttpException(404,'Такого продукта нет');
       $hits=Product::find()->where(['hit'=>'1'])->limit(6)->all();
       //$product=Product::find()->with('category')->where(['id'=>$id])->limit(1)->one();
       $this->setMeta('E-SHOPER | '. $product->name,$product->keywords,$product->description);
       return $this->render('view',compact('product','hits'));
   }
}