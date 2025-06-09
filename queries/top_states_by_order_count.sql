-- Distribution of review scores

SELECT 
    review_score,
    COUNT(*) AS num_reviews
FROM reviews
GROUP BY review_score
ORDER BY review_score DESC;
