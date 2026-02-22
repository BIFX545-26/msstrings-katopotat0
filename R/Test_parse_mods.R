library(testthat)

data("MSfrags", overwrite = TRUE )

test_that("parse_mods works", {
    tmp <- parse_mods(MSfrags[1])

    expect_s3_class(tmp, 'protein_mods')
    expect_equal (tmp$mods[[1]], 'Glycosylation')
    expect_equal(tmp$mods_at[[1]],  6)
})
