<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace backend\controllers;

use yii\rest\ActiveController;

class ApiController extends ActiveController
{
    public $modelClass = 'common\models\Producto';
    
    
    public function actions() {
        $actions=parent::actions();
        unset($actions['index']);
        return $actions;
    }
    
    public function actionIndex($usuario,$opcion){
        
        // ---> ME DEVUELVE LA DEUDA ACUMULADA DE CONSUMOS DEL USUARIO
//        $query = \common\models\Producto::find()->where(['persona_id'=>$usuario])->sum('precio');
//        return $query;
        
        if($opcion == 'saldo'){
        $query = \common\models\Producto::find()->where(['id_persona'=>$usuario])->sum('precio');
        return $query;           
        }
        
        if($opcion=='consumos'){
        $query = \common\models\Producto::find(['persona_id'=>$usuario]);
        return $query->all();               
        }
      
         // -----> ME DEVUELVE TODO EL CONSUMO DEL USUARIO
//        $query = \common\models\Producto::find();
//        $query->andWhere(['persona_id'=>$usuario]);
//        return $query->all();        
        
        // ----> Y ASI PUEDES HACER CUALQUIER PETICION MEDIANTE QUERY
        
        // Y para probar lo siguiente:  http://localhost/examen/backend/web/index.php/api?usuario=3 
        // http://localhost/examen/backend/web/index.php/api?usuario=3&opcion=consumos
        
    }
    
}

