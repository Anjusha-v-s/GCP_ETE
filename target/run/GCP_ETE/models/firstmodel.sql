

  create or replace view `fine-advantage-342106`.`datatransform`.`firstmodel`
  OPTIONS()
  as -- models/my_first_model.sql

SELECT
  'Hello GCP!' AS greeting,
  CURRENT_DATE() AS today;

