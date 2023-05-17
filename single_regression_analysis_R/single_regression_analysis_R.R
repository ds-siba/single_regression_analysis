# ライブラリ読み込み
library(tidyverse)
library(caret)

# csvファイルの読み込み
df<- read.csv("data/advertising_data.csv", fileEncoding ="cp932")

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

# 決定係数でモデルの精度を確認
summary(model)$r.squared

# 検定結果の表示
summary(model)

# p値
summary(model)$coefficients[,4]

# 95%信頼区間
conf_int <- confint(model, level=0.95)
print(conf_int)

# 予測
predict(model, df)

#回帰式を描画
abline(model)
