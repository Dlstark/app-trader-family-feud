select * from apple
select * from android
---------------------Removed unnecessary columns and added platform column

ALTER TABLE apple
ADD platform text;
UPDATE apple
SET platform = 'iOS'

ALTER TABLE android
ADD platform text;
UPDATE android
SET platform = 'Google'
---------------------Changed apple/android price column to monetary value

ALTER TABLE apple ALTER COLUMN price TYPE money using price::text::money
ALTER TABLE android ALTER COLUMN price TYPE money using price::text::money

----------------------joining apple/android tables
SELECT *
FROM ANDROID
UNION ALL
SELECT *
FROM APPLE;

------------------viewing only apps on both platforms
SELECT *
FROM apple FULL JOIN android
USING (name)
WHERE apple.price IS NOT NULL
AND android.price IS NOT NULL
ORDER BY name;
