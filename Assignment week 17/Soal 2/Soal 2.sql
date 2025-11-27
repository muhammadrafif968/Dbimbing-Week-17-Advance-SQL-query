-- Soal 2 : Weather Observation Station 18
-- Link soal: https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
SELECT 
  ABS(
    CAST(
      (MIN(LAT_N) - MAX(LAT_N)) + 
      (MIN(LONG_W) - MAX(LONG_W)) 
      AS DECIMAL(10,4)
    )
  )
FROM STATION;
