const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('order_detail', {
    ordi_quantity: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    ordi_price: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    ordi_cart_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'cart',
        key: 'cart_id'
      }
    },
    ordi_prod_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'product',
        key: 'prod_id'
      }
    },
    ordi_order_name: {
      type: DataTypes.STRING(55),
      allowNull: true,
      references: {
        model: 'orders',
        key: 'order_name'
      }
    }
  }, {
    sequelize,
    tableName: 'order_detail',
    schema: 'public',
    timestamps: false
  });
};
