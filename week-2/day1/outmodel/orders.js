const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('orders', {
    order_name: {
      type: DataTypes.STRING(55),
      allowNull: false,
      primaryKey: true
    },
    order_create_on: {
      type: DataTypes.DATE,
      allowNull: true
    },
    order_is_closed: {
      type: DataTypes.BOOLEAN,
      allowNull: true
    },
    order_total: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    order_user_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'users',
        key: 'user_id'
      }
    },
    total_payment: {
      type: DataTypes.INTEGER,
      allowNull: true
    }
  }, {
    sequelize,
    tableName: 'orders',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "orders_pkey",
        unique: true,
        fields: [
          { name: "order_name" },
        ]
      },
    ]
  });
};
