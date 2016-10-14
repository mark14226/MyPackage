test_that("hi() starts a conversation", {
    expect_identical(
        hi("world"),
        "Hello WORLD you have 5 letters in your name!")
    expect_identical(
        hi("world", how = "whisper"),
        "Hello world you have 5 letters in your name!")
    expect_error(
        hi("world", how = "murmur")
    )
})
