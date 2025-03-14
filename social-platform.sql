#Seleziona gli utenti che hanno postato almeno un video
SELECT `users`.`id`, `users`.`username`, `medias`.`type`
FROM `users`
JOIN `posts` ON `users`.`id` = `posts`.`user_id`
JOIN `media_post` ON `posts`.`id` = `media_post`.`post_id`
JOIN `medias` ON `media_post`.`media_id`= `medias`.`id`
WHERE `medias`.`type` = "video";


#Seleziona tutti i post senza Like (13)
SELECT `posts`.`id`, `posts`.`title`
FROM `posts`
LEFT JOIN `likes` ON `posts`.`id` = `likes`.`post_id`
WHERE `likes`.`post_id` IS NULL;


#Conta il numero di like per ogni post (165 nel caso di query con SELECT + JOIN oppure 175 nel caso di query con sola SELECT)
SELECT `posts`.`id`, `posts`.`title`, COUNT(`likes`.`post_id`) AS like_count
FROM `posts`
LEFT JOIN `likes` ON `posts`.`id` = `likes`.`post_id`
GROUP BY `posts`.`id`;

SELECT `likes`.`post_id`, COUNT(`likes`.`post_id`) AS like_count
FROM `likes`
GROUP BY `likes`.`post_id`;


#Ordina gli utenti per il numero di media caricati (25)
SELECT `users`.`id`, `users`.`username`, COUNT(`media_post`.`media_id`) AS total_media
FROM `users`
JOIN `posts` ON `users`.`id` = `posts`.`user_id`
JOIN `media_post` ON `posts`.`id` = `media_post`.`post_id`
GROUP BY `users`.`id`
ORDER BY total_media DESC;


#Ordina gli utenti per totale di likes ricevuti nei loro posts (25)
SELECT `users`.`id`, `users`.`username`, COUNT(`likes`.`post_id`) AS total_likes
FROM `users`
JOIN `posts` ON `users`.`id` = `posts`.`user_id`
LEFT JOIN `likes` ON `posts`.`id` = `likes`.`post_id`
GROUP BY `users`.`id`
ORDER BY total_likes DESC;