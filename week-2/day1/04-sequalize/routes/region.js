import { Router } from 'express';
import { sequelize } from '../models';

//declare const
const router = Router();

router.get('/', async (req, res) => {
    const regions = await sequelize.query('SELECT region_id,region_name FROM regions', {
      type: sequelize.QueryTypes.SELECT,
      model: req.context.models.Regions,
      mapToModel: true
    });
    // const emps = await req.context.models.Employees.findAll();
    return res.send(regions);
  });