.class public Lcom/ub/main/util/alipay/AlixMainManager;
.super Ljava/lang/Object;
.source "AlixMainManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/util/alipay/AlixMainManager$AlixOnCancelListener;
    }
.end annotation


# static fields
.field public static final PAY_KEY_4000:Ljava/lang/String; = "4000"

.field public static final PAY_KEY_4001:Ljava/lang/String; = "4001"

.field public static final PAY_KEY_4003:Ljava/lang/String; = "4003"

.field public static final PAY_KEY_4004:Ljava/lang/String; = "4004"

.field public static final PAY_KEY_4005:Ljava/lang/String; = "4005"

.field public static final PAY_KEY_4006:Ljava/lang/String; = "4006"

.field public static final PAY_KEY_4010:Ljava/lang/String; = "4010"

.field public static final PAY_KEY_6000:Ljava/lang/String; = "6000"

.field public static final PAY_KEY_6001:Ljava/lang/String; = "6001"

.field public static final PAY_KEY_OK_9000:Ljava/lang/String; = "9000"


# instance fields
.field private context:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mProgress:Landroid/app/ProgressDialog;

.field private order_id:Ljava/lang/String;

.field private payResultProcessListener:Lcom/ub/main/data/PayResultProcessListener;

.field private product_description:Ljava/lang/String;

.field private product_name:Ljava/lang/String;

.field private product_total_price:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/util/alipay/AlixMainManager;->mProgress:Landroid/app/ProgressDialog;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/util/alipay/AlixMainManager;->order_id:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/util/alipay/AlixMainManager;->product_name:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/util/alipay/AlixMainManager;->product_description:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/util/alipay/AlixMainManager;->product_total_price:Ljava/lang/String;

    .line 163
    new-instance v0, Lcom/ub/main/util/alipay/AlixMainManager$1;

    invoke-direct {v0, p0}, Lcom/ub/main/util/alipay/AlixMainManager$1;-><init>(Lcom/ub/main/util/alipay/AlixMainManager;)V

    iput-object v0, p0, Lcom/ub/main/util/alipay/AlixMainManager;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/ub/main/util/alipay/AlixMainManager;->context:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/util/alipay/AlixMainManager;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ub/main/util/alipay/AlixMainManager;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/util/alipay/AlixMainManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/ub/main/util/alipay/AlixMainManager;->payResultStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/ub/main/util/alipay/AlixMainManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-direct {p0, p1, p2, p3}, Lcom/ub/main/util/alipay/AlixMainManager;->paySuccessStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/util/alipay/AlixMainManager;)Lcom/ub/main/data/PayResultProcessListener;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ub/main/util/alipay/AlixMainManager;->payResultProcessListener:Lcom/ub/main/data/PayResultProcessListener;

    return-object v0
.end method

.method private checkInfo()Z
    .locals 3

    .prologue
    .line 304
    const-string v0, "2088601308120351"

    .line 305
    .local v0, partner:Ljava/lang/String;
    const-string v1, "2088601308120351"

    .line 306
    .local v1, seller:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 308
    :cond_0
    const/4 v2, 0x0

    .line 310
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    const-string v0, "charset=\"utf-8\""

    .line 299
    .local v0, charset:Ljava/lang/String;
    return-object v0
.end method

.method private getOrderInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v0, strOrderInfo:Ljava/lang/StringBuffer;
    const-string v1, "partner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "2088601308120351"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "seller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "2088601308120351"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v1, "out_trade_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/util/alipay/AlixMainManager;->order_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v1, "subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/util/alipay/AlixMainManager;->product_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const-string v1, "body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/util/alipay/AlixMainManager;->product_description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v1, "total_fee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/util/alipay/AlixMainManager;->product_total_price:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v1, "notify_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/ub/main/util/alipay/PartnerConfig;->ALIAY_NOTIFICATION_CALLBACK_ADDRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    const-string v0, "sign_type=\"RSA\""

    .line 291
    .local v0, getSignType:Ljava/lang/String;
    return-object v0
.end method

.method private payResultStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "src"
    .parameter "startString"
    .parameter "endString"

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    .line 237
    :cond_0
    move-object v0, p2

    .line 238
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 239
    .local v2, resultStart:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 240
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, resultEnd:I
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v3, "stone-zhifu"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  resultStatus=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private paySuccessStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "src"
    .parameter "startString"
    .parameter "endString"

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 252
    :cond_0
    move-object v0, p2

    .line 253
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 254
    .local v2, resultStart:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 255
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 256
    .local v1, resultEnd:I
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string v3, "stone-zhifu"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  resultSuccess=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "signType"
    .parameter "content"

    .prologue
    .line 283
    const-string v0, "MIICWgIBAAKBgQC7jO/b5X+WWJa+e7nYc+gEBGp2077faGRULgi8nm/FwUgf6LxE28ZLMR3eGeUL/dc/gceFV5qFdHUciDcD6bAV9eXYi7mK5WrK/Y1qJyfm1wPziG0yo6CAvsklNAe+SLRpVWLDuu/nughXRqok5kObSonEe0NhBezY+ppsOMeb0wIDAQABAoGAOUcmreKeH514lD4XGPr0/d0XYqjyXypzkZ3pfyln+143F7+tV95C5g3fEEiaQhpJFZUeCSQjBeT2KzuSibhh1R04yfa3dZbREEJw4rGlQ52da+NYxTu2UB1mVfbTtnhUGdVnWOUroOVQVfwICBahxY91rFJ6z4O0pW1/2H13svECQQDhxTntS10yd0WUq/J1b4y/D62NlyTDN3UcVUeoEEsIJTVak7lPvTkNjyb7L9SoOZAV/9Elbd/L9YDcqGRX/rubAkEA1KmkD6VJ2OEW1IXfrGZcsQrHLb8P+xjQPVay2awmNwx+7NBQ392JJbx86t8jgXwec6tZXMcJ9kpDQQNjMpOwKQI/GLF5pHqZtutUsO4dlrqcqkkMsm/VlYR7Sp4JOFiP3FQ1gbKmkhIgK1t85/xTRhMFr2JLfcyGrcgsT/YbA4TZAkAUdzrtsod30rmivDt5WOSEuTfP5DpCfPHVZVmS7ylCVPaGDcoqsSQ4uHoBFHZTSMGZeh0Ae7sus5jjUdMjE+l5AkAuOgyCLlYz+TG9iBJPFJ4zI7GqRqT1RaDPTGhtb1RvnZ/ZxEV62oat2zg62DiidTmQgA39ss+kqvMLuGf4LYmN"

    invoke-static {p2, v0}, Lcom/ub/main/util/alipay/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public SetPayResultBehaviorListener(Lcom/ub/main/data/PayResultProcessListener;)V
    .locals 0
    .parameter "payResultProcessListener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ub/main/util/alipay/AlixMainManager;->payResultProcessListener:Lcom/ub/main/data/PayResultProcessListener;

    .line 60
    return-void
.end method

.method public alixToolInstalledCheck()Z
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/ub/main/util/alipay/MobileSecurePayHelper;

    iget-object v1, p0, Lcom/ub/main/util/alipay/AlixMainManager;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ub/main/util/alipay/MobileSecurePayHelper;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, mspHelper:Lcom/ub/main/util/alipay/MobileSecurePayHelper;
    invoke-virtual {v0}, Lcom/ub/main/util/alipay/MobileSecurePayHelper;->detectMobile_sp()Z

    move-result v1

    return v1
.end method

.method public closeProgress()V
    .locals 2

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/ub/main/util/alipay/AlixMainManager;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/ub/main/util/alipay/AlixMainManager;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ub/main/util/alipay/AlixMainManager;->mProgress:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public makeOrderToAlix(Z)Z
    .locals 13
    .parameter "alixToolIsExist"

    .prologue
    const/4 v12, 0x0

    .line 88
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v12

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/ub/main/util/alipay/AlixMainManager;->checkInfo()Z

    move-result v7

    if-nez v7, :cond_2

    .line 93
    iget-object v7, p0, Lcom/ub/main/util/alipay/AlixMainManager;->context:Landroid/app/Activity;

    const-string v8, "\u63d0\u793a"

    const-string v9, "\u7f3a\u5c11partner\u6216\u8005seller"

    const v10, 0x7f02007b

    invoke-static {v7, v8, v9, v10}, Lcom/ub/main/util/alipay/BaseHelper;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 100
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/ub/main/util/alipay/AlixMainManager;->getOrderInfo()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, orderInfo:Ljava/lang/String;
    invoke-direct {p0}, Lcom/ub/main/util/alipay/AlixMainManager;->getSignType()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, signType:Ljava/lang/String;
    invoke-direct {p0, v5, v4}, Lcom/ub/main/util/alipay/AlixMainManager;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, strsign:Ljava/lang/String;
    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&sign="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 107
    invoke-direct {p0}, Lcom/ub/main/util/alipay/AlixMainManager;->getSignType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 106
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, info:Ljava/lang/String;
    const-string v7, "info"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v3, Lcom/ub/main/util/alipay/MobileSecurePayer;

    invoke-direct {v3}, Lcom/ub/main/util/alipay/MobileSecurePayer;-><init>()V

    .line 111
    .local v3, msp:Lcom/ub/main/util/alipay/MobileSecurePayer;
    iget-object v7, p0, Lcom/ub/main/util/alipay/AlixMainManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/ub/main/util/alipay/AlixMainManager;->context:Landroid/app/Activity;

    invoke-virtual {v3, v2, v7, v8, v9}, Lcom/ub/main/util/alipay/MobileSecurePayer;->pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z

    move-result v0

    .line 113
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/ub/main/util/alipay/AlixMainManager;->closeProgress()V

    .line 117
    iget-object v7, p0, Lcom/ub/main/util/alipay/AlixMainManager;->context:Landroid/app/Activity;

    const/4 v8, 0x0

    const-string v9, "\u6b63\u5728\u652f\u4ed8"

    const/4 v10, 0x0

    .line 118
    const/4 v11, 0x1

    .line 117
    invoke-static {v7, v8, v9, v10, v11}, Lcom/ub/main/util/alipay/BaseHelper;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/ub/main/util/alipay/AlixMainManager;->mProgress:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v0           #bRet:Z
    .end local v2           #info:Ljava/lang/String;
    .end local v3           #msp:Lcom/ub/main/util/alipay/MobileSecurePayer;
    .end local v4           #orderInfo:Ljava/lang/String;
    .end local v5           #signType:Ljava/lang/String;
    .end local v6           #strsign:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 122
    .local v1, ex:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/ub/main/util/alipay/AlixMainManager;->context:Landroid/app/Activity;

    const v8, 0x7f060009

    invoke-static {v7, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 123
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public setOrderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "orderId"
    .parameter "productName"
    .parameter "productDescription"
    .parameter "productTotalPrice"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ub/main/util/alipay/AlixMainManager;->order_id:Ljava/lang/String;

    .line 80
    invoke-static {p2}, Lcom/ub/main/util/Tool;->clearSpecificSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/util/alipay/AlixMainManager;->product_name:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/ub/main/util/alipay/AlixMainManager;->product_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/ub/main/util/alipay/AlixMainManager;->product_description:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/ub/main/util/alipay/AlixMainManager;->product_total_price:Ljava/lang/String;

    .line 83
    return-void
.end method
