<?php
/**
 * Created by PhpStorm.
 * User: вова
 * Date: 16.01.2018
 * Time: 10:28
 */

namespace app\models;


use yii\db\ActiveRecord;

class Category extends ActiveRecord
{
    public function behaviors()
    {
        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }

    public static function tableName()
    {
        return 'category';
    }
    public function getProducts(){
        return $this->hasMany(Product::className(),['category_id'=>'id']);
    }
}