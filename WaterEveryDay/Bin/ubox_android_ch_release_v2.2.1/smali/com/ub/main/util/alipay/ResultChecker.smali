.class public Lcom/ub/main/util/alipay/ResultChecker;
.super Ljava/lang/Object;
.source "ResultChecker.java"


# static fields
.field public static final RESULT_CHECK_SIGN_FAILED:I = 0x1

.field public static final RESULT_CHECK_SIGN_SUCCEED:I = 0x2

.field public static final RESULT_INVALID_PARAM:I


# instance fields
.field mContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ub/main/util/alipay/ResultChecker;->mContent:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method checkSign()I
    .locals 11

    .prologue
    .line 41
    const/4 v5, 0x2

    .line 45
    .local v5, retVal:I
    :try_start_0
    iget-object v9, p0, Lcom/ub/main/util/alipay/ResultChecker;->mContent:Ljava/lang/String;

    const-string v10, ";"

    invoke-static {v9, v10}, Lcom/ub/main/util/alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 46
    .local v2, objContent:Lorg/json/JSONObject;
    const-string v9, "result"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, result:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 49
    const-string v9, "&sign_type="

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 50
    .local v1, iSignContentEnd:I
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, signContent:Ljava/lang/String;
    const-string v9, "&"

    invoke-static {v4, v9}, Lcom/ub/main/util/alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 53
    .local v3, objResult:Lorg/json/JSONObject;
    const-string v9, "sign_type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, signType:Ljava/lang/String;
    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 56
    const-string v9, "sign"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, sign:Ljava/lang/String;
    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 59
    const-string v9, "RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 61
    const-string v9, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCLz9iwMHRanMV+2vUfJXsm9TsxGOz3XaqlUeq5 jxYi28p4iXYkukH1q+1RCGjOTDMNrQ5Mr3zJcjAy1BoRhmZTHEpKYEzSw7K2JFY6hLuDFLczPvYC 4XsZlxUhwhCXsLHQyuhllojwDldqEnBV3WxXB9QQnaU9qCU7uDUalEDsNwIDAQAB"

    invoke-static {v7, v6, v9}, Lcom/ub/main/util/alipay/Rsa;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_0

    .line 62
    const/4 v5, 0x1

    .line 71
    .end local v1           #iSignContentEnd:I
    .end local v2           #objContent:Lorg/json/JSONObject;
    .end local v3           #objResult:Lorg/json/JSONObject;
    .end local v4           #result:Ljava/lang/String;
    .end local v6           #sign:Ljava/lang/String;
    .end local v7           #signContent:Ljava/lang/String;
    .end local v8           #signType:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getSuccess()Ljava/lang/String;
    .locals 7

    .prologue
    .line 19
    const/4 v4, 0x0

    .line 23
    .local v4, success:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/ub/main/util/alipay/ResultChecker;->mContent:Ljava/lang/String;

    const-string v6, ";"

    invoke-static {v5, v6}, Lcom/ub/main/util/alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 24
    .local v1, objContent:Lorg/json/JSONObject;
    const-string v5, "result"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, result:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 27
    const-string v5, "&"

    invoke-static {v3, v5}, Lcom/ub/main/util/alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 28
    .local v2, objResult:Lorg/json/JSONObject;
    const-string v5, "success"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 36
    .end local v1           #objContent:Lorg/json/JSONObject;
    .end local v2           #objResult:Lorg/json/JSONObject;
    .end local v3           #result:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 31
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method isPayOk()Z
    .locals 4

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, isPayOk:Z
    invoke-virtual {p0}, Lcom/ub/main/util/alipay/ResultChecker;->getSuccess()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, success:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ub/main/util/alipay/ResultChecker;->checkSign()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :cond_0
    return v0
.end method
