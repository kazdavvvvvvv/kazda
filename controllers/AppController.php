<?php
/**
 * Created by PhpStorm.
 * User: вова
 * Date: 18.01.2018
 * Time: 19:14
 */

namespace app\controllers;

use yii\web\Controller;

class AppController extends Controller
{
   protected function setMeta($title=null,$keywords=null,$description=null){
       $this->view->title=$title;
       $this->view->registerMetaTag(['name'=>'keywords','content'=>"$keywords"]);
       $this->view->registerMetaTag(['name'=>'description','content'=>"$description"]);
   }
}