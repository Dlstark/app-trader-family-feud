SELECT * FROM apple;
SELECT * FROM android;
ALTER TABLE apple
ADD platform text;
UPDATE apple
SET platform = 'ios';

ALTER TABLE apple
ALTER COLUMN review_count integer;
UPDATE android
SET platform = 'google';

ALTER TABLE android ALTER COLUMN price TYPE money using price::text::money
SELECT DISTINCT(content_rating) FROM android;

SELECT *
FROM apple FULL JOIN android
USING (name)
WHERE apple.price IS NOT NULL
AND android.price IS NOT NULL;
