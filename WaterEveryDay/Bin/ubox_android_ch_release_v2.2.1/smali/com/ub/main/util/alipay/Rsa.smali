.class public Lcom/ub/main/util/alipay/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "content"
    .parameter "sign"
    .parameter "publicKey"

    .prologue
    .line 96
    :try_start_0
    const-string v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 97
    .local v3, keyFactory:Ljava/security/KeyFactory;
    invoke-static {p2}, Lcom/ub/main/util/alipay/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 98
    .local v2, encodedKey:[B
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 102
    .local v4, pubKey:Ljava/security/PublicKey;
    const-string v6, "SHA1WithRSA"

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 104
    .local v5, signature:Ljava/security/Signature;
    invoke-virtual {v5, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 105
    const-string v6, "utf-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->update([B)V

    .line 107
    invoke-static {p1}, Lcom/ub/main/util/alipay/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 116
    .end local v2           #encodedKey:[B
    .end local v3           #keyFactory:Ljava/security/KeyFactory;
    .end local v4           #pubKey:Ljava/security/PublicKey;
    .end local v5           #signature:Ljava/security/Signature;
    :goto_0
    return v0

    .line 111
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "content"
    .parameter "key"

    .prologue
    .line 44
    :try_start_0
    const-string v6, "RSA"

    invoke-static {v6, p1}, Lcom/ub/main/util/alipay/Rsa;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 46
    .local v4, pubkey:Ljava/security/PublicKey;
    const-string v6, "RSA/ECB/PKCS1Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 47
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 49
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 50
    .local v3, plaintext:[B
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 52
    .local v2, output:[B
    new-instance v5, Ljava/lang/String;

    invoke-static {v2}, Lcom/ub/main/util/alipay/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #output:[B
    .end local v3           #plaintext:[B
    .end local v4           #pubkey:Ljava/security/PublicKey;
    :goto_0
    return-object v5

    .line 57
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .parameter "algorithm"
    .parameter "bysKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lcom/ub/main/util/alipay/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 34
    .local v0, decodedKey:[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 36
    .local v2, x509:Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 37
    .local v1, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "content"
    .parameter "privateKey"

    .prologue
    .line 67
    const-string v0, "utf-8"

    .line 70
    .local v0, charset:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/ub/main/util/alipay/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 71
    .local v4, priPKCS8:Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v7, "RSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 72
    .local v2, keyf:Ljava/security/KeyFactory;
    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 75
    .local v3, priKey:Ljava/security/PrivateKey;
    const-string v7, "SHA1WithRSA"

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 77
    .local v5, signature:Ljava/security/Signature;
    invoke-virtual {v5, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->update([B)V

    .line 80
    invoke-virtual {v5}, Ljava/security/Signature;->sign()[B

    move-result-object v6

    .line 82
    .local v6, signed:[B
    invoke-static {v6}, Lcom/ub/main/util/alipay/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 89
    .end local v2           #keyf:Ljava/security/KeyFactory;
    .end local v3           #priKey:Ljava/security/PrivateKey;
    .end local v4           #priPKCS8:Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v5           #signature:Ljava/security/Signature;
    .end local v6           #signed:[B
    :goto_0
    return-object v7

    .line 84
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    const/4 v7, 0x0

    goto :goto_0
.end method
