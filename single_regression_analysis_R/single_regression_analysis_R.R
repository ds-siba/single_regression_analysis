# ライブラリ読み込み
library(tidyverse)

# csvファイルの読み込み
df <- read.csv("data/advertising_data.csv", fileEncoding ="cp932")

# 散布図
X = df$ad
y = df$sales
plot(X, y, xlab="ad", ylab="sales")

# 相関係数の確認
cor(X, y)

# 最小二乗法モデルを作成
model <- lm(y ~ X)

# 回帰係数と切片を表示
coef(model)

# グラフ
abline(model)
