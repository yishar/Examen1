<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "personas".
 *
 * @property integer $id
 * @property string $nombre
 * @property integer $id_departamento
 * @property integer $id_user
 */
class Personas extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'personas';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombre', 'id_departamento', 'id_user', 'saldo'], 'required'],
            [['id_departamento', 'id_user'], 'integer'],
            [['saldo'], 'double'],
            [['nombre'], 'string', 'max' => 40],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Nombre y Apellido',
            'id_departamento' => 'Departamento',
            'id_user' => 'Nombre de Usuario',
            'saldo' => 'Saldo',
        ];
    }
}
