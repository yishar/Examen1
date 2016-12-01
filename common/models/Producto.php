<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "producto".
 *
 * @property string $nombre
 * @property double $precio
 * @property integer $id_persona
 */
class Producto extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'producto';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombre', 'id_persona'], 'required'],
            [['nombre'], 'string'],
            [['precio'], 'number'],
            [['id_persona'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'nombre' => 'Nombre',
            'precio' => 'Precio',
            'id_persona' => 'Id Persona',
        ];
    }
}
