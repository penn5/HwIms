.class public final Lcom/huawei/ims/AESEncrypter;
.super Ljava/lang/Object;
.source "AESEncrypter.java"


# static fields
.field private static final ITERATION_COUNT:I = 0x400

.field public static final KEY_LENGTH:I = 0x100

.field public static final SALT_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "AESEncrypter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crypt(ILjavax/crypto/SecretKey;[B[B)[B
    .locals 10
    .param p0, "mode"    # I
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "salt"    # [B
    .param p3, "source"    # [B

    .prologue
    .line 163
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v8

    const-string/jumbo v9, "AES"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 166
    .local v7, "secret":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string/jumbo v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 167
    .local v0, "crypter":Ljavax/crypto/Cipher;
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p0, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 168
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    .line 191
    .end local v0    # "crypter":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v4

    .line 192
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "crypt error8 !"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    :goto_0
    const/4 v8, 0x0

    new-array v8, v8, [B

    return-object v8

    .line 187
    :catch_1
    move-exception v5

    .line 188
    .local v5, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "crypt error7 !"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v5    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v1

    .line 184
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "crypt error4 !"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v2

    .line 180
    .local v2, "e":Ljava/security/InvalidKeyException;
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "crypt error3 !"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v6

    .line 176
    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "crypt error2 !"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v6    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v3

    .line 172
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "crypt error1 !"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "sSrc"    # Ljava/lang/String;
    .param p1, "sKey"    # Ljava/lang/String;
    .param p2, "sParam"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 111
    .local v4, "password":[C
    array-length v8, v4

    const/16 v9, 0x100

    if-eq v8, v9, :cond_0

    .line 113
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "decrypt key length error!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v10

    .line 117
    :cond_0
    const/4 v5, 0x0

    .line 120
    .local v5, "salt":[B
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 128
    .local v5, "salt":[B
    array-length v8, v5

    const/16 v9, 0x10

    if-eq v8, v9, :cond_1

    .line 130
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "decrypt salt length error!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v10

    .line 123
    .local v5, "salt":[B
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "getBytes error in decrypt"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-object v10

    .line 134
    .end local v3    # "e1":Ljava/io/UnsupportedEncodingException;
    .local v5, "salt":[B
    :cond_1
    invoke-static {v4, v5}, Lcom/huawei/ims/AESEncrypter;->generateSecretKey([C[B)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 135
    .local v6, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v6, :cond_2

    .line 137
    return-object v10

    .line 142
    :cond_2
    :try_start_1
    new-instance v8, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v8}, Lcom/huawei/ims/HexEncoder;-><init>()V

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/huawei/ims/HexEncoder;->decode([B)[B

    move-result-object v7

    .line 143
    .local v7, "source":[B
    const/4 v8, 0x2

    invoke-static {v8, v6, v5, v7}, Lcom/huawei/ims/AESEncrypter;->crypt(ILjavax/crypto/SecretKey;[B[B)[B

    move-result-object v0

    .line 144
    .local v0, "dst":[B
    array-length v8, v0

    if-nez v8, :cond_3

    .line 146
    return-object v10

    .line 148
    :cond_3
    new-instance v8, Ljava/lang/String;

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v8, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/huawei/ims/COMException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v8

    .line 155
    .end local v0    # "dst":[B
    .end local v7    # "source":[B
    :catch_1
    move-exception v1

    .line 156
    .local v1, "e":Lcom/huawei/ims/COMException;
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "decrypt error2!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v1    # "e":Lcom/huawei/ims/COMException;
    :goto_0
    return-object v10

    .line 151
    :catch_2
    move-exception v2

    .line 152
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "decrypt error1!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "sSrc"    # Ljava/lang/String;
    .param p1, "sKey"    # Ljava/lang/String;
    .param p2, "sParam"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 48
    .local v4, "password":[C
    array-length v8, v4

    const/16 v9, 0x100

    if-eq v8, v9, :cond_0

    .line 50
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "encrypt key length error!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-object v10

    .line 54
    :cond_0
    if-nez p2, :cond_1

    .line 55
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "encrypt param error!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-object v10

    .line 60
    :cond_1
    const/4 v5, 0x0

    .line 63
    .local v5, "salt":[B
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 71
    .local v5, "salt":[B
    array-length v8, v5

    const/16 v9, 0x10

    if-eq v8, v9, :cond_2

    .line 73
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "encrypt salt length error!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-object v10

    .line 66
    .local v5, "salt":[B
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "getBytes error in encrypt"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-object v10

    .line 77
    .end local v3    # "e1":Ljava/io/UnsupportedEncodingException;
    .local v5, "salt":[B
    :cond_2
    invoke-static {v4, v5}, Lcom/huawei/ims/AESEncrypter;->generateSecretKey([C[B)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 78
    .local v6, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v6, :cond_3

    .line 80
    return-object v10

    .line 85
    :cond_3
    :try_start_1
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 86
    .local v7, "source":[B
    const/4 v8, 0x1

    invoke-static {v8, v6, v5, v7}, Lcom/huawei/ims/AESEncrypter;->crypt(ILjavax/crypto/SecretKey;[B[B)[B

    move-result-object v0

    .line 87
    .local v0, "dst":[B
    array-length v8, v0

    if-nez v8, :cond_4

    .line 89
    return-object v10

    .line 91
    :cond_4
    new-instance v8, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v8}, Lcom/huawei/ims/HexEncoder;-><init>()V

    invoke-virtual {v8, v0}, Lcom/huawei/ims/HexEncoder;->encode([B)[B

    move-result-object v1

    .line 92
    .local v1, "dst2":[B
    new-instance v8, Ljava/lang/String;

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v8, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v8

    .line 95
    .end local v0    # "dst":[B
    .end local v1    # "dst2":[B
    .end local v7    # "source":[B
    :catch_1
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "AESEncrypter"

    const-string/jumbo v9, "encrypt error1!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v10
.end method

.method private static generateSecretKey([C[B)Ljavax/crypto/SecretKey;
    .locals 6
    .param p0, "password"    # [C
    .param p1, "salt"    # [B

    .prologue
    .line 201
    :try_start_0
    const-string/jumbo v4, "PBKDF2WithHmacSHA1"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 202
    .local v2, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v4, 0x400

    const/16 v5, 0x100

    invoke-direct {v3, p0, p1, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 203
    .local v3, "spec":Ljava/security/spec/KeySpec;
    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 210
    .end local v2    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v3    # "spec":Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string/jumbo v4, "AESEncrypter"

    const-string/jumbo v5, "generateSecretKey error2 !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 206
    :catch_1
    move-exception v0

    .line 207
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v4, "AESEncrypter"

    const-string/jumbo v5, "generateSecretKey error1 !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
