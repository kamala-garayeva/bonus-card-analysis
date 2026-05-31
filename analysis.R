# =============================================
# Bonus Card Usage Analysis
# =============================================

# 1. Data oxu
data = read.csv("main_products_csv.csv")

# 2. Analiz - 3 ve daha artiq mehsul alan musteriler
mehsul_sayi = data.frame(table(data$satish_kodu, data$bonus_kart))
mehsul_sayi = subset(mehsul_sayi, mehsul_sayi$Freq >= 3)
mehsul_sayi = subset(mehsul_sayi, mehsul_sayi$Var2 == "TRUE")

# 3. Faiz hesabla
cat("Bonus kart istifade faizi:", nrow(mehsul_sayi) / 70016 * 100, "%\n")

# 4. Netice saxla
write.csv(mehsul_sayi, "bonus_card_results.csv", row.names = FALSE)
