# Author: Rahmad Kurniawan
# Title: Homework Datascience dibimbing.id -> Week 1
# Date: 15 Nov 2021
# -*- encoding: utf-8 -*-
#


############################################### Question 1 ############################################### 
# Tim data scientist diminta pertolongan oleh CEO ingin meminta beberapa data terkait user.
# Sehingga tim data scientist diminta membuat data frame dari profil user tersebut. 
# Silahkan buat data frame yang terdiri dari kolom berikut:

    # 1. Nama
    # 2. Tempat lahir
    # 3. Tanggal lahir
    # 4. Tanggal terakhir berbelanja
    # 5. Rata-rata amount belanja per bulan (Rp)
    # 6. Total transaksi per bulan
########################################################################################################## 

# Step 1: Create variable and insert value for username, place of birth, date of birth, last order,
#         average order per month and total transaction

userName <- c('Alfa', 'Beta', 'Charlie', 'Delta', 'Echo', 'Foxtrot')
placeBirth <- c('Ambarawa', 'Bandung', 'Cilacap', 'Depok', 'Ende', 'Flores')
dateBirth <- c('04/02/1995', '05/04/2006', '23/02/1995', '14/02/1994', '07/09/1995', '16/11/1997')   #dd/mm/yyyy format
lastOrder <- c('01/11/2021', '04/11/2021', '06/11/2021', '12/11/2021', '02/11/2021', '11/11/2021')   #dd/mm/yyyy format
avgOrderMonth <- c(310000,14000,960000,12000,90000,230000)   #Value in Rupiah's
totalTransactionMonth <- c(7,1,11,1,2,6)

# Step 2: Create dataframe from all variable initiates before

userProfile <- data.frame(userName, placeBirth, dateBirth, lastOrder, avgOrderMonth, totalTransactionMonth)
userProfile

# Step 3: Validate variable and values using View function (optional)
View(userProfile)

############################################### Question 2 ############################################### 
# Dari data frame tersebut pilihlah user yang paling loyal berbelanja. 
# Dimana user loyal adalah user yang memiliki rata-rata 
# amount belanja per bulan di atas 100 ribu rupiah
# dan total transaksi per bulan di atas 5.
########################################################################################################## 

# Step 4: Create filter function using average order per month and total transaction
filterLoyalUser <- userProfile$avgOrderMonth > 100000 & userProfile$totalTransactionMonth > 5

# Step 5: 
userProfile[filterLoyalUser,]$userName

# From the value above, the most loyal user this month is Alfa, Charlie, and Foxtrot
 