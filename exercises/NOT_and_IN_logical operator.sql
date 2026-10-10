-- used to ensure a value does no match any values in a list
-- outcome of IN is reversed by NOT

SELECT *
FROM db.tb
WHERE columnA NOT IN ( 'we'
                        'you'
                        'us'
                      );
--excludes rows with we, you, us
--NOT IN reverses IN, so rows where columnA = 'we', 'you','us'
