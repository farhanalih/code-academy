const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('product_images', {
    prim_id: {
      type: DataTypes.UUID,
      allowNull: false,
      defaultValue: DataTypes.UUIDV4,
      primaryKey: true
    },
    prim_file_name: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    prim_path: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    prim_prod_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'product',
        key: 'prod_id'
      }
    }
  }, {
    sequelize,
    tableName: 'product_images',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "product_images_pkey",
        unique: true,
        fields: [
          { name: "prim_id" },
        ]
      },
    ]
  });
};
