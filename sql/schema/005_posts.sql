-- +goose Up
CREATE TABLE posts (
    id UUID PRIMARY KEY, 
    created_at TIMESTAMP NOT NULL, 
    updated_at TIMESTAMP NOT NULL,
    title TEXT NOT NULL,
    url TEXT NOT NULL,
    description TEXT NOT NULL,
    published_at TIMESTAMP,
    feed_id UUID NOT NULL REFERENCES feeds(id) ON DELETE CASCADE,
    UNIQUE(feed_id, url)
);

-- +goose Down
DROP TABLE posts;